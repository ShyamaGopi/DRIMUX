using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserHome : System.Web.UI.Page
{
    Connection con = new Connection();
    int uid;
    Class1 cc = new Class1();
    string uname, Image, Text, Status, ShareStatus, Url, path, oname;
    string suname; 
    int OwnerMediaId;
    string mtype;
    int mownerid;

    protected void Page_Load(object sender, EventArgs e)
    {
     
            uid = Convert.ToInt32(Session["USERID"]);
            if (!IsPostBack)
            {
        

            fill();


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


            }
    


    }

    private void fill()
    {
        uid = Convert.ToInt32(Session["USERID"]);

        DataList1.DataSource = cc.getUserHomePost(uid);
        DataList1.DataBind();

      
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "like")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());

            DataTable dt1 = con.selectquery("select * from UserLike where MediaID='" + mid + "' and UserId='" + uid + "' ");
            if (dt1.Rows.Count > 0)
            {
                int v = con.exequery("delete from UserLike where MediaID='" + mid + "' and UserId='" + uid + "' ");
                Response.Redirect("~/User/UserHome.aspx");


            }
            else
            {
                int dt = con.exequery("insert into UserLike(MediaID,UserId,Type) values('" + mid + "','" + uid + "','" + true + "')");
                if (dt > 0)
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }

            }


        }

        if (e.CommandName == "share")
        {

            int mid = Convert.ToInt32(e.CommandArgument.ToString());

            DataTable dt = con.selectquery("select * from UserMedia where MediaId='" + mid + "'");
            if (dt.Rows.Count > 0)
            {
                mownerid = Convert.ToInt32(dt.Rows[0]["UserId"].ToString());
                mtype = dt.Rows[0]["MediaType"].ToString();
                Status = dt.Rows[0]["Status"].ToString();
                OwnerMediaId = Convert.ToInt32(dt.Rows[0]["OwnerMediaId"].ToString());
                Image = dt.Rows[0]["Image"].ToString();
                Text = dt.Rows[0]["Text"].ToString();
                Url = dt.Rows[0]["Url"].ToString();

                if (Status == "Posted" || Status== "Non-Rumor")
                {
                    int ut = con.exequery("insert into User_Share(MediaID,Media_OwnerId,Shared_UserId,Type) values('" + mid + "','" + mownerid + "','" + uid + "','" + mtype + "') ");
                    if (ut > 0)
                    {
                        DataTable dt1 = con.selectquery("select * from UserDetails where USERID='" + mownerid + "'");
                        if (dt1.Rows.Count > 0)
                        {
                            oname = dt1.Rows[0]["Firstname"].ToString();
                        }
                        DataTable dt2 = con.selectquery("select * from UserDetails where USERID='" + uid + "'");
                        if (dt2.Rows.Count > 0)
                        {
                            suname = dt2.Rows[0]["Firstname"].ToString();
                        }
                        var date = System.DateTime.Today.ToShortDateString();
                        var time = System.DateTime.Now.ToShortTimeString();
                        ShareStatus = suname + " shared  " + oname + " " + "post";  
                        if (OwnerMediaId == 0)
                        {
                            OwnerMediaId = mid;
                            int usermedia = con.exequery("insert into UserMedia(UserId,MediaType,Image,Text,Url,Date,Time,Status,MasterMediaId,ShareStatus,OwnerMediaId) values('" + uid + "','" + mtype + "','" + Image + "','" + Text + "','" + Url + "','" + DateTime.Parse(date) + "','" + DateTime.Parse(time) + "','" + Status + "','" + mid + "','" + ShareStatus + "','" + OwnerMediaId + "') ");
                            Response.Redirect("~/User/UserHome.aspx");

                        }
                        else
                        {
                            int usermedia = con.exequery("insert into UserMedia(UserId,MediaType,Image,Text,Url,Date,Time,Status,MasterMediaId,ShareStatus,OwnerMediaId) values('" + uid + "','" + mtype + "','" + Image + "','" + Text + "','" + Url + "','" + DateTime.Parse(date) + "','" + DateTime.Parse(time) + "','" + Status + "','" + mid + "','" + ShareStatus + "','" + OwnerMediaId + "') ");
                            Response.Redirect("~/User/UserHome.aspx");

                        }
                        Response.Redirect("~/User/UserHome.aspx");



                    }
                }
                else if (Status == "Rumor")
                {

                    Response.Write(@"<script language='javascript'>alert('This Post is a Rumor,The post cannot be shared by user');window.location ='UserHome.aspx';</script>");

                }
               
            }
           

        }
        if (e.CommandName == "Comment")
        {
            for (int i = 0; i < DataList1.Controls.Count; i++)
            {
                string txt_comment = ((TextBox)DataList1.Items[i].FindControl("txt_comment")).Text;
                int mid = Convert.ToInt32(e.CommandArgument.ToString());

                int k = 0;
                var text = txt_comment.Replace(',', ' ').Replace('&', ' ').Replace('"', ' ').Replace('!', ' ').Replace('@', ' ').Replace('#', ' ').Replace('$', ' ')
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
                    Response.Write(@"<script language='javascript'>alert('You are entered more offencive words');window.location ='Home.aspx';</script>");

                }
                if (k != 0)
                {
                    int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment + "','Offensive','No')");
                    if (comment > 0)
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }

                }
                else
                {
                    int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment + "','Good','No')");
                    if (comment > 0)
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }
                }


                //int comment1 = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment + "','" + "" + "','" + "" + "')");
                //if (comment > 0)
                //{
                //    Response.Redirect("~/User/UserHome.aspx");
                //}

            }
        }
        if (e.CommandName== "rumor")
            {
                int mid = Convert.ToInt32(e.CommandArgument.ToString());
                DataTable dt = con.selectquery("select * from Reporting where MediaID='" + mid + "' and UserId='" + uid + "'");
                if(dt.Rows.Count>0)
                {
               string st=dt.Rows[0]["SpamType"].ToString();

                if (st=="True")
                {
                    int rid = Convert.ToInt32(dt.Rows[0]["ReportingId"].ToString());
                    int deltb = con.exequery("delete from Reporting where ReportingId='" + rid + "'");
                  if(deltb>0)
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }
 
                }


            }
                else if(dt.Rows.Count==0)
            {
                
                int rp = con.exequery("insert into Reporting(MediaID,UserId,SpamType) values('" + mid + "','" + uid + "','" + true + "')");
                if (rp > 0)
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }
            }


        }


      if(e.CommandName== "non-rumor")
        {

    var uid = Convert.ToInt32(Session["USERID"]);

            int mid = Convert.ToInt32(e.CommandArgument.ToString());
            DataTable dt = con.selectquery("select * from Reporting where MediaID='" + mid + "' and UserId='" + uid + "' ");
            if(dt.Rows.Count>0)
            {
               if(dt.Rows[0]["NonSpamType"].ToString()== "True")
                {
                    int rid = Convert.ToInt32(dt.Rows[0]["ReportingId"].ToString());
                    int delnonspam = con.exequery("delete from Reporting where ReportingId='" + rid + "'");
                    if(delnonspam>0)
                    {
                        Response.Redirect("~/User/UserHome.aspx");
                    }
                }

            }
            else if (dt.Rows.Count == 0)
            {

                int rp = con.exequery("insert into Reporting(MediaID,UserId,NonSpamType) values('" + mid + "','" + uid + "','" + true + "')");
                if (rp > 0)
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }
            }
        }
        if (e.CommandName == "cmt")
        {


            int mid = Convert.ToInt32(e.CommandArgument);
            //Session["mid"] = mid;
           // dtlcmnt.DataSource = cc.CommentList(mid);
           // dtlcmnt.DataBind();
           //cmnt.Visible = true;
           Response.Redirect("Commentlist.aspx?Mediaid=" + e.CommandArgument.ToString() );

        }

    }

    protected void btn_post_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~") + "//MediaImg//" + FileUpload1.FileName);
            path = "~/MediaImg/" + FileUpload1.FileName;

        }
        string ImageName = System.IO.Path.GetFileName(FileUpload1.FileName);
        DateTime date = System.DateTime.Today;
        string today = date.ToShortDateString();

        int ut = con.exequery("insert into UserMedia(UserId,MediaType,Image,Text,Url,Date,Time,Status,MasterMediaId,ShareStatus,OwnerMediaId) values('" + uid + "','" + "Post" + "','" + path + "','" + txt_post.Text + "','" + txt_url.Text + "','" + today + "','" + date + "','" + "Posted" + "','" + "" + "','" + "" + "','" + "" + "')");
        if (ut > 0)
        {

            Response.Write(@"<script language='javascript'>window.location ='UserHome.aspx';</script>");

        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('Invalid');window.location ='Login.aspx';</script>");

        }
    }

    protected void lb_img_Click(object sender, EventArgs e)
    {
        fu_img.Visible = true;
    }

    protected void lb_url_Click(object sender, EventArgs e)
    {
        txt_url.Visible = true;
    }

    protected void btn_post_Click1(object sender, EventArgs e)
    {

    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);
    }

    


    protected void LinkButton8_Click(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        foreach (DataListItem item in DataList1.Items)
        {
            Image im = (Image)item.FindControl("img_photo");
            if (im.ToString()!=" ")
            {
                (e.Item.FindControl("img_photo") as Image).Visible = false;
            }
            
        }
    

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {

        string nnsss = txt_comments.Text;

        int mid = Convert.ToInt32(Session["mid"]);

        int k = 0;
        var text = txt_comments.Text.Replace(',', ' ').Replace('&', ' ').Replace('"', ' ').Replace('!', ' ').Replace('@', ' ').Replace('#', ' ').Replace('$', ' ')
            .Replace('%', ' ').Replace('^', ' ').Replace('*', ' ').Replace('(', ' ').Replace(')', ' ').Replace('_', ' ').Replace('-', ' ').Replace('+', ' ')
            .Replace('*', ' ').Replace('/', ' ').Replace('[', ' ').Replace(']', ' ').Replace('}', ' ').Replace('{', ' ').Replace(':', ' ').Replace(';', ' ')
            .Replace('?', ' ').Replace('>', ' ').Replace('<', ' ').Replace('.', ' ').Trim();

        var punctuation = text.Where(Char.IsPunctuation).Distinct().ToArray();
        var words = text.Split().Select(x => x.Trim(punctuation)).ToList();

        DataTable negative = con.selectquery("select * from NegativeDataset");
        //  var negative = rdbe.NegativeDatasets.ToList();
        int svmweight = 0;
        for (int j = 0; j < negative.Rows.Count; j++)
        {
            for (int m = 0; m < words.Count; m++)
            {
                string cc = words[m].ToString().ToLower();

                var nn = negative.Rows[j]["NegativeWords"].ToString().ToLower();

                //string.Compare(cc, nn, StringComparison.OrdinalIgnoreCase)=0 )

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
            Response.Write(@"<script language='javascript'>alert('You are entered more offencive words');window.location ='Home.aspx';</script>");

        }
        if (k != 0)
        {

            int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comments.Text + "','Offensive','No')");
            if (comment > 0)
            {

                Response.Redirect("~/User/UserHome.aspx");
            }



        }
        else
        {
            int comment = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comments.Text + "','Good','No')");
            if (comment > 0)
            {
                string date = txt_comments.Text;
                Response.Redirect("~/User/UserHome.aspx");
            }
        }


        //int comment1 = con.exequery("insert into UserComment(MediaID,UserId,Comment,Status,Allow)values('" + mid + "','" + uid + "','" + txt_comment + "','" + "" + "','" + "" + "')");
        //if (comment > 0)
        //{
        //    Response.Redirect("~/User/UserHome.aspx");
        //}

    }



    protected void LinkButton4_Click(object sender, EventArgs e)
    {
       

    }

    
  
   
}