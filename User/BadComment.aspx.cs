using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_BadComment : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    int uid; string uname,l;
  
    string comnt, nwrd, result;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);

        if (!IsPostBack)
        {
            uid = Convert.ToInt32(Session["USERID"]);
            DataTable dt = con.selectquery("select * from UserDetails where USERID='" + uid + "'");
            if (dt.Rows.Count > 0)
            {
                uname = dt.Rows[0]["Firstname"].ToString();
                Session["name"] = uname;
                string filename = dt.Rows[0]["Image"].ToString();

                string result = Path.GetFileName(filename);
                Session["Image"] = result;
            }
            DataTable dt1 = con.selectquery("select * from BackgroundImg where UserId='" + uid + "' and Status='True'");
            if (dt1.Rows.Count > 0)
            {

                Session["BGimg"] = dt1.Rows[0]["BGimg"].ToString();
            }
            else
            {
                Session["BGimg"] = "images/default.jpg";
            }

            showComment();
        }

    }

    private void showComment()
    {
        uid = Convert.ToInt32(Session["USERID"]);

        DataList1.DataSource = cc.offensivelist(uid);
        DataList1.DataBind();
        //throw new NotImplementedException();
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }


    //public void manjuscode()
    //{
    //    if (e.CommandName == "allow")
    //    {
    //        int id = Convert.ToInt32(e.CommandArgument);
    //        for (int i = 0; i < DataList1.Controls.Count; i++)
    //        {
    //            string txt_comment = ((Label)DataList1.Items[i].FindControl("txt_comment")).Text;
    //            int mid = Convert.ToInt32(e.CommandArgument.ToString());

    //            int k = 0;
    //            var text = txt_comment.Replace(',', ' ').Replace('&', ' ').Replace('"', ' ').Replace('!', ' ').Replace('@', ' ').Replace('#', ' ').Replace('$', ' ')
    //                .Replace('%', ' ').Replace('^', ' ').Replace('*', ' ').Replace('(', ' ').Replace(')', ' ').Replace('_', ' ').Replace('-', ' ').Replace('+', ' ')
    //                .Replace('*', ' ').Replace('/', ' ').Replace('[', ' ').Replace(']', ' ').Replace('}', ' ').Replace('{', ' ').Replace(':', ' ').Replace(';', ' ')
    //                .Replace('?', ' ').Replace('>', ' ').Replace('<', ' ').Replace('.', ' ').Trim();

    //            var punctuation = text.Where(Char.IsPunctuation).Distinct().ToArray();
    //            var words = text.Split().Select(x => x.Trim(punctuation)).ToList();

    //            DataTable negative = con.selectquery("select * from NegativeDataset");

    //            int svmweight = 0;
    //            for (int j = 0; j < negative.Rows.Count; j++)
    //            {
    //                for (int m = 0; m < words.Count; m++)
    //                {
    //                    string cc = words[m].ToString().ToLower();

    //                    var nn = negative.Rows[j]["NegativeWords"].ToString().ToLower();


    //                    if (cc == nn)
    //                    {



    //                        for (int p = 0; p < cc.Length; p++)
    //                        {
    //                            string rep = "*";
    //                            int hh = nn.Count();




    //                            cc = text.Replace(cc[p], '*');

    //                        }
    //                        TextBox1.Text = result.ToString();
    //                    }


    //                }

    //            }
    //        }



    //            int update = con.exequery("update UserComment set Allow='yes' where CommentId='" + id + "'");
    //            if (update > 0)
    //            {
    //                Response.Redirect("~/User/UserHome.aspx");

    //            }

    //        }

    //    if (e.CommandName == "remove")
    //    {
    //        int idd = Convert.ToInt32(e.CommandArgument);
    //        int delete = con.exequery("delete from UserComment where CommentId='" + idd + "'");
    //        if (delete > 0)
    //        {
    //            Response.Write(@"<script language='javascript'>alert('user comment removed sucessfully');window.location ='UserHome.aspx';</script>");

    //        }

    //    }
    //}







    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "allow")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            int id = Convert.ToInt32(e.CommandArgument);
            string txt_comment= ((Label)DataList1.SelectedItem.FindControl("txt_comment")).Text;
                 comnt = txt_comment;
                string[] tmp = comnt.Split(' ');
                int ngcount = txt_comment.Count();
                DataTable ng = con.selectquery("select * from NegativeDataset");
                if (ng.Rows.Count > 0)
                {
                    int h = tmp.Length;
                    for (int j = 0; j < tmp.Length; j++)
                    {
                        int flag = 0;
                        string cc = tmp[j].ToLower();
                        string negwrd = "";
                        for (int f = 0; f < cc.Length; f++)
                        {
                            if (cc[f] >= 'a' && cc[f] <= 'z')
                            {
                                negwrd += cc[f];
                            }
                        }


                        for (int i = 0; i < ng.Rows.Count; i++)
                        {
                            string neg = ng.Rows[i]["NegativeWords"].ToString().ToLower();



                            if (neg == negwrd)
                            {

                                string input = tmp[j];
                                string pattern = neg;
                                int count = pattern.Count();

                                string replace = "*";
                                for (int k = 0; k < count; k++)
                                {

                                    result = Regex.Replace(input, pattern, replace);
                                    replace = replace + "*";



                                }
                                flag = 1;
                                txt_negcmnt.Text += " " + result.ToString();
                            }


                        }
                        if (flag == 0)
                        {
                            txt_negcmnt.Text += " " + tmp[j];
                        }

                        
                    }

                }
                int update = con.exequery("update UserComment set Allow='yes',Comment='" + txt_negcmnt.Text + "' where CommentId='" + id + "'");
                if (update > 0)
                {
                    Response.Redirect("~/User/UserHome.aspx");

                }

            }
      else if (e.CommandName == "remove")
        {
            int idd = Convert.ToInt32(e.CommandArgument);
            int delete = con.exequery("delete from UserComment where CommentId='" + idd + "'");
            if (delete > 0)
            {
                Response.Write(@"<script language='javascript'>alert('user comment removed sucessfully');window.location ='UserHome.aspx';</script>");

            }

        }

    }
}

   
