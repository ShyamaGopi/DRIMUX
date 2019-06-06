using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site_Login : System.Web.UI.Page
{
    Connection con = new Connection();
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
     DataTable dt = con.selectquery("select * from UserDetails where Username='" + txtuname.Text + "' and Password='" + txt_pwd.Text + "'");

        if (dt.Rows.Count > 0)
        {
            status = dt.Rows[0]["Status"].ToString();

            Session["Username"] = txtuname.Text;

            Session["USERID"] = dt.Rows[0]["USERID"].ToString();
            string Usertype = dt.Rows[0]["RoleNameId"].ToString();

            if (Usertype == "1")
            {
                Response.Redirect("~/Admin/Home.aspx");

            }
            else if (Usertype == "2" && status == "Active")
            {
                Response.Redirect("~/User/Home.aspx");

            }
            else if (Usertype == "2" && status == "NA")
            {
                Response.Write(@"<script language='javascript'>alert('Not an authorized User');window.location ='Login.aspx';</script>");

            }
            else
            {
                Response.Write(@"<script language='javascript'>alert('Invalid User');window.location ='Login.aspx';</script>");

            }
        }
    }

    protected void btn_Login_Click1(object sender, EventArgs e)
     {
       
    }

    protected void btn_signup_Click(object sender, EventArgs e)
    {
        int utype = 2;
        string gen = "";
        for (int i = 0; i < rbl_gender.Items.Count; i++)
        {
            if (rbl_gender.Items[i].Selected == true)
            {
                gen += rbl_gender.Items[i].ToString();
            }
        }


        int ut = con.exequery("insert into UserDetails(Firstname,Lastname,Gender,DOB,Mobile,Email,Username,Password,RoleNameId,Status,MediaId,AccessSpecifier,Image)values('" + txt_firstname.Text + "','" + txt_lname.Text + "','" + gen.ToString() + "','" + txt_dob.Text + "','" + txt_mobile.Text + "','" + txt_email.Text + "','" + txt_uname1.Text + "','" + txt_pwd1.Text + "','" + utype + "','" + "Active" + "','" + "" + "','" + "" + "','" + "" + "')");
        if (ut > 0)
        {




            Response.Write(@"<script language='javascript'>alert('User Registered Sucessfully');window.location ='Login.aspx';</script>");
        }
    }

   
    protected void txt_uname1_TextChanged(object sender, EventArgs e)
    {
        DataTable dt = con.selectquery("select * from UserDetails where Username='" + txt_uname1.Text + "'");
        if (dt.Rows.Count > 0)
        {
            Label1.Visible = true;
            Label1.Text = "Username Exists";
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataTable dt = con.selectquery("select * from UserDetails where Username='" + txtuname.Text + "' and Password='" + txt_pwd.Text + "'");

        if (dt.Rows.Count > 0)
        {
            status = dt.Rows[0]["Status"].ToString();

            Session["Username"] = txtuname.Text;

            Session["USERID"] = dt.Rows[0]["USERID"].ToString();
            string Usertype = dt.Rows[0]["RoleNameId"].ToString();

            if (Usertype == "1")
            {
                Response.Redirect("~/Admin/Home.aspx");

            }
            else if (Usertype == "2" && status == "Active")
            {
                Response.Redirect("~/User/UserHome.aspx");

            }
            else if (Usertype == "2" && status == "NA")
            {
                Response.Write(@"<script language='javascript'>alert('Not an authorized User');window.location ='Login.aspx';</script>");

            }

        }
        else
        {
            Response.Write(@"<script language='javascript'>alert('Invalid User');window.location ='Login.aspx';</script>");

        }

    }
}