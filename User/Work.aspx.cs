using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Work : System.Web.UI.Page
{

    Connection con = new Connection();
    int uid;
    string uname;

    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
        if (!IsPostBack)
        {

            DataTable dt1 = con.selectquery("select * from User_Work where UserId='" + uid + "'");
            if (dt1.Rows.Count > 0)
            {

                txt_company.Text = dt1.Rows[0]["Company"].ToString();
                txt_Place.Text = dt1.Rows[0]["Place"].ToString();

                txt_work.Text = dt1.Rows[0]["Work"].ToString();

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



    protected void lnk_submit_Click1(object sender, EventArgs e)
    {
        DataTable dt1 = con.selectquery("select * from User_Work where UserId='" + uid + "'");
        if (dt1.Rows.Count > 0)
        {
            int ut = con.exequery("update User_Work set [Work]='" + txt_work.Text + "',Company='" + txt_company.Text + "',Place='" + txt_Place.Text + "' where UserId='" + uid + "'");

            Response.Write(@"<script language='javascript'>alert('Work Details Updated sucessfully ');window.location ='UserHome.aspx';</script>");

        }
        
        else
        {
            int ut = con.exequery("insert into User_Work(UserId,[Work],Company,Place)values('" + uid + "','" + txt_work.Text + "','" + txt_company.Text + "','" + txt_Place.Text + "')");
            {
                Response.Write(@"<script language='javascript'>alert('Work Details added sucessfully ');window.location ='UserHome.aspx';</script>");

            }
        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}