using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Users : System.Web.UI.Page
{
    Connection con = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showUsers();
        }

    }

    private void showUsers()
    {
        DataTable dt = con.selectquery("select * from UserDetails where RoleNameId!='1'");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Approve")

        {
            Label1.Text = e.CommandArgument.ToString();
            int uid = Convert.ToInt32(Label1.Text);
            DataTable dt = con.selectquery("select * from UserDetails where USERID='" + uid + "' and Status='Active'");
            if (dt.Rows.Count > 0)
            {
                Response.Write(@"<script language='javascript'>alert('');window.location ='Home.aspx';</script>");

            }

            else
            {
                int ut = con.exequery("Update UserDetails set Status='Active'");
                if (ut > 0)
                {

                    Response.Write(@"<script language='javascript'>alert('Active User');window.location ='Home.aspx';</script>");
                }

            }
        }
        else
        {
            Label1.Text = e.CommandArgument.ToString();
            int uid = Convert.ToInt32(Label1.Text);
            DataTable dt = con.selectquery("select * from UserDetails where USERID='" + uid + "' and Status='Active'");
            if (dt.Rows.Count > 0)
            {
                Response.Write(@"<script language='javascript'>alert('');window.location ='Home.aspx';</script>");

            }

            else
            {
                int ut = con.exequery("Update UserDetails set Status='InActive'");
                if (ut > 0)
                {

                    Response.Write(@"<script language='javascript'>alert('Inactve User');window.location ='Home.aspx';</script>");
                }

            }
        }
    }
}