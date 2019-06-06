using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Commentlist : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    home hm = new home();


    int uid,mid;
    string uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
        mid = Convert.ToInt32(Request.QueryString["MediaId"].ToString());
        DataTable dt4 = con.selectquery("select um.Text,um.Url,ud.Image,ud.Firstname from UserMedia um join UserDetails ud on um.UserId=ud.USERID where um.MediaId='" + mid + "'");
        if(dt4.Rows.Count>0)
        {
            Session["name1"]= dt4.Rows[0]["Firstname"].ToString();
            string filename = dt4.Rows[0]["Image"].ToString();

            Session["img"] = Path.GetFileName(filename);
            Session["text"]= dt4.Rows[0]["Text"].ToString();
            Session["url"] = dt4.Rows[0]["Url"].ToString();


        }

        if (!IsPostBack)
        {
            DataTable dt = con.selectquery("select * from UserDetails where USERID='" + uid + "'");
            if (dt.Rows.Count > 0)
            {
                uname = dt.Rows[0]["Firstname"].ToString();
                Session["name"] = uname;

                string filename = dt.Rows[0]["Image"].ToString();

                string result = Path.GetFileName(filename);
                 Session["Image"] = result;
            }
            else
            {
                Session["Image"] = "images/default.jpg";
            }
            showpost();
            showcomment();

        }
    }

    private void showcomment()
    {
        DataList1.DataSource = cc.CommentList(mid);
        DataList1.DataBind();
        // throw new NotImplementedException();
    }




    private void showpost()
    {
        dlpost.DataSource = cc.cmtpost(uid, mid);            
        dlpost.DataBind();
      
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
      //  string txt_comment = ((TextBox)DataList1.Items[i].FindControl("txt_comment")).Text;
       // int mid = Convert.ToInt32(e.CommandArgument.ToString());

        int k = 0;
        var text = txt_comment.Text.Replace(',', ' ').Replace('&', ' ').Replace('"', ' ').Replace('!', ' ').Replace('@', ' ').Replace('#', ' ').Replace('$', ' ')
            .Replace('%', ' ').Replace('^', ' ').Replace('*', ' ').Replace('(', ' ').Replace(')', ' ').Replace('_', ' ').Replace('-', ' ').Replace('+', ' ')
            .Replace('*', ' ').Replace('/', ' ').Replace('[', ' ').Replace(']', ' ').Replace('}', ' ').Replace('{', ' ').Replace(':', ' ').Replace(';', ' ')
            .Replace('?', ' ').Replace('>', ' ').Replace('<', ' ').Replace('.', ' ').Trim();

        var punctuation = text.Where(Char.IsPunctuation).Distinct().ToArray();
        var words = text.Split().Select(x => x.Trim(punctuation)).ToList();

        DataTable negative = con.selectquery("select * from NegativeDataset");

        int svmweight = 0;
        for (int j = 0; j < negative.Rows.Count; j++)
        {
            for (int m = 0; m < words.Count; m++)
            {
                string cc = words[m].ToString().ToLower();

                var nn = negative.Rows[j]["NegativeWords"].ToString().ToLower();



                if (cc == nn)
                {
                    DataTable c = con.selectquery("select * from NegativeDataset where NegativeWords='" + nn + "'");
                    // var c = rdbe.NegativeDatasets.Where(a => a.NegativeWords == nn).FirstOrDefault();
                    int w = Convert.ToInt32(c.Rows[0]["Weight"]);
                    k = k + 1;
                    svmweight = svmweight + w;

                }

            }



        }
        if (svmweight >= 4)
        {

            int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment.Text + "','Offensive','No')");
            if (comment > 0)
            {
                Response.Redirect("~/User/UserHome.aspx");
            }
            // Response.Write(@"<script language='javascript'>alert('You are entered more offencive words');window.location ='Home.aspx';</script>");

        }
        if (k != 0)
        {
            int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment.Text + "','Offensive','No')");
            if (comment > 0)
            {
                Response.Redirect("~/User/UserHome.aspx");
            }

        }
        else
        {
            int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment.Text + "','Good','No')");
            if (comment > 0)
            {
                Response.Redirect("~/User/UserHome.aspx");
            }
        }


     

    }

  
}
