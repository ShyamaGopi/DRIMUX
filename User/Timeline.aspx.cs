using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    int uid;
    string uname;
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
        if(!IsPostBack)
        {
            showPost();
        }
        

    }

    private void showPost()
    {
        DataList1.DataSource = cc.MyPost(uid);
        DataList1.DataBind();

        //throw new NotImplementedException();
    }

    protected void lb_ser_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchAllUsers.aspx?search=" + txt_ser.Text);

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName== "show")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());
            foreach (DataListItem dli in DataList1.Items)
            {
                LinkButton lbLinkButton2 = (LinkButton)dli.FindControl("lb_show");

                LinkButton lbLinkButton = (LinkButton)dli.FindControl("lb_update");
                LinkButton lbLinkButton1 = (LinkButton)dli.FindControl("lb_delete");

                if(lbLinkButton2.CommandName== "show")
                {
                    int lnk = Convert.ToInt32(lbLinkButton.CommandArgument.ToString());
                    int lnk1= Convert.ToInt32(lbLinkButton1.CommandArgument.ToString());

                    if(lnk==mid)
                    {
                        if(lnk1==mid)
                        {
                            lbLinkButton.Visible = true;
                            lbLinkButton1.Visible = true;
                        }
                    }

                   
                }
                else
                {
                    lbLinkButton.Visible = false;
                    lbLinkButton1.Visible = false;
                }
                  

            }
        }
        if(e.CommandName== "update")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());
            Response.Redirect("EditPost.aspx?Mediaid=" + mid);
        }
        if (e.CommandName == "delete")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());
            DataTable ut = cc.delmypost(mid);
           
                Response.Redirect("~/User/Timeline.aspx");
           
           
        }
    }
}