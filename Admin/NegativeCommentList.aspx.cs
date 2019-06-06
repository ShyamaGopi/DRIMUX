using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NegativeCommentList : System.Web.UI.Page
{
    Connection con = new Connection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showList();
        }
    }

    private void showList()
    {
        DataTable dt = con.selectquery("select * from NegativeDataset");
        GridView1.DataSource = dt;
        GridView1.DataBind();

        // throw new NotImplementedException();
    }
}