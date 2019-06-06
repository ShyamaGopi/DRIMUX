using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddUrls : System.Web.UI.Page
{
    Connection con = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = con.selectquery("select * from SiteLinks where Link_Name='" + txt_urlname.Text + "'and Link='" + txt_url + "'");
        if(dt.Rows.Count>0)
        {
            Response.Write(@"<script language='javascript'>alert('Url Already exists');window.location ='Home.aspx';</script>");
        }

        int inserturl = con.exequery("insert into SiteLinks(Link_Name,Link) values('" + txt_urlname.Text + "','" + txt_url.Text + "')");
        {
            Response.Write(@"<script language='javascript'>alert('Url added successfully exists');window.location ='Home.aspx';</script>");

        }
    }
}