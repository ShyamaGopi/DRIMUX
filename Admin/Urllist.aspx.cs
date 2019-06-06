using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Urllist : System.Web.UI.Page
{
    Connection con = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            showlist();
        }
    }

    private void showlist()
    {
        DataTable dt = con.selectquery("select * from SiteLinks");
        GridView2.DataSource = dt;
        GridView2.DataBind();
        //throw new NotImplementedException();
    }
}