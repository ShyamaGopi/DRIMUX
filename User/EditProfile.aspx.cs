using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_EditProfile : System.Web.UI.Page
{

    Connection con = new Connection();
    int uid;
    string uname;


    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
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


                txt_fname.Text = dt.Rows[0]["Firstname"].ToString();
                txt_lname.Text= dt.Rows[0]["Lastname"].ToString();
                txt_email.Text = dt.Rows[0]["Email"].ToString();
                txt_mobile.Text = dt.Rows[0]["Mobile"].ToString();
                txt_dob.Text= dt.Rows[0]["DOB"].ToString();
                rbl_gender.SelectedValue = dt.Rows[0]["Gender"].ToString();

            }
            else
            {
                Session["Image"] = "images/default.jpg";
            }





        }




    }

    protected void lnk_submit_Click(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);

        int ut = con.exequery("Update UserDetails set Firstname='" + txt_fname.Text + "',Lastname='" + txt_lname.Text + "',Gender='" + rbl_gender.SelectedValue+ "',DOB='" + txt_dob.Text+ "',Mobile='" + txt_mobile.Text + "',Email='" + txt_email.Text + "' where USERID='" + uid + "'  ");
        {
            Response.Write(@"<script language='javascript'>alert('Profile Updated sucessfully ');window.location ='UserHome.aspx';</script>");

        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}