using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SharedUsersList : System.Web.UI.Page
{
    Connection con = new Connection();
    int mid;
    protected void Page_Load(object sender, EventArgs e)
    {
        mid = Convert.ToInt32(Request.QueryString["MediaId"]);
        showSharedUsers();
    }

    private void showSharedUsers()
    {
        DataTable dt = con.selectquery("select * from UserMedia u join UserDetails ud on u.UserId=ud.USERID where u.OwnerMediaId='"+mid+"'");
        GridView1.DataSource = dt;
        GridView1.DataBind();
        //throw new NotImplementedException();
    }
}