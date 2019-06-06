using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_EditPost : System.Web.UI.Page
{
    Connection con = new Connection();
    int uid,mid;
    string uname,path;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
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

        mid = Convert.ToInt32(Request.QueryString["Mediaid"]);
        if (!IsPostBack)
        {

            DataTable dt2 = con.selectquery("select * from UserMedia um where um.MediaId='" + mid + "'");
            if (dt2.Rows.Count > 0)
            {
                txt_post.Text = dt2.Rows[0]["Text"].ToString();
                txt_url.Text = dt2.Rows[0]["Url"].ToString();
                ib_img.ImageUrl = dt2.Rows[0]["Image"].ToString();
            }
        }


    }

    protected void lnk_submit_Click(object sender, EventArgs e)
    {
       
        if(fu_img.HasFile)
        {

            fu_img.SaveAs(Server.MapPath("~") + "//MediaImg//" + fu_img.FileName);
            path = "~/MediaImg/" + fu_img.FileName;
        }
        
        int ut = con.exequery("update UserMedia set Text='" + txt_post.Text + "',Url='" + txt_url.Text + "',Image='"+path.ToString()+"' where MediaId='" + mid + "' ");
        if(ut>0)
        {
            Response.Redirect("~/User/Timeline.aspx");

        }
    }
}