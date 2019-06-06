using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Interest : System.Web.UI.Page
{


    Connection con = new Connection();
    int uid;
    string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
        if (!IsPostBack)
        {
            DataTable dt1 = con.selectquery("select * from User_Interest where UserId='" + uid + "'");
            if (dt1.Rows.Count > 0)
            {

                txt_intr.Text = dt1.Rows[0]["Interest"].ToString();

            }






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

    protected void lnk_submit_Click(object sender, EventArgs e)
    {
        DataTable dt1 = con.selectquery("select * from User_Interest where UserId='" + uid + "'");
        if (dt1.Rows.Count > 0)
        {
            int ut = con.exequery("update User_Interest set Interest='" + txt_intr.Text + "' where UserId='" + uid + "'");

            Response.Write(@"<script language='javascript'>alert('Your Interest updated sucessfully ');window.location ='UserHome.aspx';</script>");


        }






        else
        {


            int ut = con.exequery("insert into User_Interest(UserId,Interest)values('" + uid + "','" + txt_intr.Text + "')");
            {
                Response.Write(@"<script language='javascript'>alert('Interest added sucessfully ');window.location ='UserHome.aspx';</script>");

            }
        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}