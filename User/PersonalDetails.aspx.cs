using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_PersonalDetails : System.Web.UI.Page
{

    Connection con = new Connection();
    int uid;
    string uname;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
        if (!IsPostBack)
        {

            DataTable dt1 = con.selectquery("select * from User_PersonalDetails where UserId='" + uid + "'");
            if (dt1.Rows.Count > 0)
            {
                txt_college.Text = dt1.Rows[0]["College"].ToString();
                txt_from.Text = dt1.Rows[0]["From"].ToString();

                txt_loc.Text = dt1.Rows[0]["Location"].ToString();

                txt_relation.Text = dt1.Rows[0]["Relation"].ToString();

                txt_religion.Text = dt1.Rows[0]["Religion"].ToString();

                txt_rwih.Text = dt1.Rows[0]["Relationwith"].ToString();

                txt_school.Text = dt1.Rows[0]["School"].ToString();

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


        }



    }

    protected void lnk_submit_Click(object sender, EventArgs e)
    {
        DataTable dt1 = con.selectquery("select * from User_PersonalDetails where UserId='" + uid + "'");
        if (dt1.Rows.Count > 0)
        {
            int ut = con.exequery("update User_PersonalDetails set Religion='" + txt_religion.Text + "',Relation='" + txt_relation.Text + "',Relationwith='" + txt_rwih.Text + "',School='" + txt_school.Text + "',College='" + txt_college.Text + "',Location='" + txt_loc.Text + "',[From]='" + txt_from.Text + "' where UserId='" + uid + "'");

            Response.Write(@"<script language='javascript'>alert('Personal Details Updated sucessfully ');window.location ='UserHome.aspx';</script>");


        }



        else
        {


            int ut = con.exequery("insert into User_PersonalDetails(UserId,Religion,Relation,Relationwith,School,College,Location,[From])values('" + uid + "','" + txt_religion.Text + "','" + txt_relation.Text + "','" + txt_rwih.Text + "','" + txt_school.Text + "','" + txt_college.Text + "','" + txt_loc.Text + "','" + txt_from.Text + "')");
            {
                Response.Write(@"<script language='javascript'>alert('Personal Details added sucessfully ');window.location ='UserHome.aspx';</script>");

            }
        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}