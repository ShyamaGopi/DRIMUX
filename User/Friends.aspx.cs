using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Friends : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    int uid; string uname;
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
               // uname = dt.Rows[0]["Firstname"].ToString();
               // Session["name"] = uname;
                Session["BGimg"] = dt1.Rows[0]["BGimg"].ToString();
            }
            else
            {
                Session["BGimg"] = "images/default.jpg";
            }

            showFriendlist();
        }

    }

    private void showFriendlist()
    {
        DataList1.DataSource = cc.Friendlist(uid);
        DataList1.DataBind();
        //throw new NotImplementedException();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName== "Block")
        {
            int fid = Convert.ToInt32(e.CommandArgument.ToString());
            int fr = con.exequery("delete from Friends where Fid='" + fid + "'");
            if (fr > 0)
            {
                Response.Redirect("~/User/UserHome.aspx");
            }

        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}