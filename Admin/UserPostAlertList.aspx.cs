using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserPostAlertList : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cc = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        showAlertlist();
    }

    private void showAlertlist()
    {
        GridView1.DataSource = cc.UserPostAlert();
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Change")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());

            DataTable dt = con.selectquery("select * from UserMedia where MediaId='" + mid + "' or MasterMediaId='" + mid + "' ");
            if (dt.Rows.Count > 0)
            {
                int medid = Convert.ToInt32(dt.Rows[0]["MediaId"]);
                int up = con.exequery("update UserMedia set Status='" + "Rumor" + "' where MediaId='" + medid + "'");

                int masterid = Convert.ToInt32(dt.Rows[0]["MasterMediaId"]);
                if (masterid != 0)
                {
                    int up1 = con.exequery("update UserMedia set Status='" + "Rumor" + "' where MediaId='" + masterid + "' ");
                    DataTable masterpost = con.selectquery("select * from UserMedia where MediaId='" + masterid + "'");
                    if (masterpost.Rows.Count > 0)
                    {
                        int owid = Convert.ToInt32(masterpost.Rows[0]["MasterMediaId"]);
                        if (owid != 0)
                        {
                            int up2 = con.exequery("update UserMedia set Status='" + "Rumor" + "' where  MediaId='" + owid + "'");
                        }

                    }
                }
            }


            Response.Redirect("~/Admin/UserPostAlertList.aspx");

        }
    }
}

