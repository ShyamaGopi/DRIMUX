using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_FriendRequest : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    int uid; string uname;
        
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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

            showFriendRequest();
        }

    }

    private void showFriendRequest()
    {
        DataList1.DataSource = cc.FriendrequestList(uid);
        DataList1.DataBind();
        // throw new NotImplementedException();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);

        if (e.CommandName== "Accept")
        {
            int fid = Convert.ToInt32(e.CommandArgument.ToString());

            int fr = con.exequery("update Friends set Status='" + "Accept" + "' where FId='" + fid + "'");
            if(fr>0)
            {
                Response.Write(@"<script language='javascript'>alert('Friend Request Accept Successfully');window.location ='UserHome.aspx';</script>");
            }
            else
            {
                int frs = con.exequery("delete from Friends where FId='" + fid + "'");
                if (frs > 0)
                {
                    Response.Redirect("~/User/UserHome.aspx");
                }



                
            }
        }
        if (e.CommandName == "Reject")
        {
            int fid = Convert.ToInt32(e.CommandArgument.ToString());
            int ut = con.exequery("delete from Friends where FId='" + fid + "'");
            if(ut>0)
            {
                Response.Redirect("~/User/FriendRequest.aspx");

            }

        }

        }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}