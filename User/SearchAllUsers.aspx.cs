using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_SearchAllUsers : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    int uid;
    string uname,search;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
        search = Request.QueryString["search"].ToString();

        DataList1.Visible = false;
        if (!IsPostBack)
        {
            showlist();
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
        DataList1.Visible = true;

    }

    private void showlist()
    {
        DataList1.Visible = true;
        DataList1.DataSource = cc.SearchAllPeople(uid, search);
        DataList1.DataBind();
        //throw new NotImplementedException();
    }

    
    protected void lb_ser_Click(object sender, EventArgs e)
    {
        DataList1.Visible = true;

        uid = Convert.ToInt32(Session["USERID"]);
      
            DataList1.DataSource = cc.SearchAllPeople(uid, txt_ser.Text);
            DataList1.DataBind();
       
       
    }
}