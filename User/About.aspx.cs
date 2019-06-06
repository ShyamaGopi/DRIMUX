using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_About : System.Web.UI.Page
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
                Session["email"]= dt.Rows[0]["Email"].ToString();
                Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
              
                    string date= dt.Rows[0]["DOB"].ToString();
                DateTime date1 = Convert.ToDateTime(date);
                string d = date1.ToShortDateString();
                Session["DOB"] = d;


            }

            else
            {
                Session["Image"] = "images/default.jpg";
            }

            DataTable dt5 = con.selectquery("select * from User_PersonalDetails where UserId='" + uid + "'");
            if (dt5.Rows.Count > 0)
            {
                Session["Religion"] = dt5.Rows[0]["Religion"].ToString();
                Session["Relation"] = dt5.Rows[0]["Relation"].ToString();
                Session["Relationwith"] = dt5.Rows[0]["Relationwith"].ToString();

                Session["School"] = dt5.Rows[0]["School"].ToString();
                Session["College"] = dt5.Rows[0]["College"].ToString();

                Session["Location"] = dt5.Rows[0]["Location"].ToString();
                Session["From"] = dt5.Rows[0]["From"].ToString();


            }
            
   DataTable dt4 = con.selectquery("select * from User_Work where UserId='" + uid + "'");
            if (dt4.Rows.Count > 0)
            {
                Session["work"] = dt4.Rows[0]["Work"].ToString();
                Session["Company"] = dt4.Rows[0]["Company"].ToString();
                Session["Place"] = dt4.Rows[0]["Place"].ToString();


            }
            
                 DataTable dt3 = con.selectquery("select * from User_Interest where UserId='" + uid + "'");
            if (dt3.Rows.Count > 0)
            {
                Session["Interest"] = dt3.Rows[0]["Interest"].ToString();

            }


            DataTable dt1 = con.selectquery("select * from BackgroundImg where UserId='" + uid + "' and Status=1");
            if (dt1.Rows.Count > 0)
            {
                Session["BGimg"] = dt1.Rows[0]["BGimg"].ToString();
            }
            else
            {
                Session["BGimg"] = "images/default.jpg";
            }
        }


    


    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}