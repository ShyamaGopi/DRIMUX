using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Settings : System.Web.UI.Page
{
    Connection con = new Connection();
    int uid;
    string uname,pass;
    protected void Page_Load(object sender, EventArgs e)
    {

        uid = Convert.ToInt32(Session["USERID"]);
        if (!IsPostBack)
        {

            


            DataTable dt = con.selectquery("select * from UserDetails where USERID='" + uid + "'");
            if (dt.Rows.Count > 0)
            {
                uname = dt.Rows[0]["Firstname"].ToString();
                pass = dt.Rows[0]["Password"].ToString();
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
        String pwd = txt_cpwd.Text;
            if (txt_npwd.Text == txt_conpwd.Text)
            {
                int ut = con.exequery("update UserDetails set Password='" + txt_npwd.Text + "' where USERID='" + uid + "'");
                if (ut > 0)
                {
                    Response.Write(@"<script language='javascript'>alert('Password Changed sucessfully');window.location ='UserHome.aspx';</script>");

                }
            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Password Mismatch ');window.location ='UserHome.aspx';</script>");


            }
        
       
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}