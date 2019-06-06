using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Profile : System.Web.UI.Page
{
    Connection con = new Connection();
    int uid;
    string uname;
    string path;
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
            }
            else
            {
                Session["Image"] = "images/default.jpg";
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






    protected void Button1_Click(object sender, EventArgs e)
    {


        Response.Write(@"<script language='javascript'>alert('Invalid User');window.location ='Login.aspx';</script>");

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Write(@"<script language='javascript'>alert('Invalid User');window.location ='Login.aspx';</script>");


    }




    protected void lb_bgimg_Click(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);

        if (fu_bgimg.HasFile)
        {
            fu_bgimg.SaveAs(Server.MapPath("~") + "//Bgimg//" + fu_bgimg.FileName);
            path = "~/Bgimg/" + fu_bgimg.FileName;

        }
        DateTime now = System.DateTime.Now;

        DataTable dt = con.selectquery("select * from BackgroundImg where UserId='" + uid + "'");
        if(dt.Rows.Count>0)
        {
            int ubimg = con.exequery("update BackgroundImg set Status='" + false + "' where UserId='" + uid + "'");
            if(ubimg>0)
            {
                int adbimg = con.exequery("insert into BackgroundImg(UserId,BGimg,Date,Status)values('" + uid + "','" + fu_bgimg.FileName + "','" + now.ToShortDateString() + "','" + true + "')");
                if(adbimg>0)
                {

                }
            }
            Response.Write(@"<script language='javascript'>alert('Background image updated sucessfully');window.location ='Profile1.aspx';</script>");

        }
        else
        {
            int ut=con.exequery("insert into BackgroundImg(UserId,BGimg,Date,Status)values('" + uid + "','" + fu_bgimg.FileName + "','" + now.ToShortDateString() + "','" + true + "')");
            if (ut > 0)
            {
                Response.Write(@"<script language='javascript'>alert('Background image added sucessfully');window.location ='Profile1.aspx';</script>");

            }
        }

    }

    protected void lb_profpic_Click(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);

        if (fu_profimg.HasFile)
        {
            fu_profimg.SaveAs(Server.MapPath("~") + "//Profilepic//" + fu_profimg.FileName);
            path = "~/Profilepic/" + fu_profimg.FileName;

        }
        DataTable dt = con.selectquery("select * from UserDetails where UserId='" + uid + "'");
        if (dt.Rows.Count > 0)
        {
            int ubimg = con.exequery("update UserDetails set Image='" + path + "' where UserId='" + uid + "'");
            if (ubimg > 0)
            {
                Response.Write(@"<script language='javascript'>alert('Profile image updated sucessfully');window.location ='Profile1.aspx';</script>");

            }

        }
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }
}