using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RumorList : System.Web.UI.Page
{
    Connection con = new Connection();
    Class1 cs = new Class1();
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        uid = Convert.ToInt32(Session["USERID"]);
      if(!IsPostBack)
        {
            showRumorlist();
        }
    }

    private void showRumorlist()
    {

        DataTable dt = con.selectquery("select * from UserMedia u  join UserDetails ud on u.UserId=ud.USERID where u.Status='Rumor' and u.MasterMediaId='0'");
        GridView1.DataSource = dt;
        GridView1.DataBind();
        //throw new NotImplementedException();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName== "users")
        {
            Response.Redirect("~/Admin/SharedUsersList.aspx?MediaId="+e.CommandArgument.ToString());
        }
        else if(e.CommandName== "remove")
        {
            int mid = Convert.ToInt32(e.CommandArgument.ToString());

            DataTable dt = con.selectquery("select * from UserMedia where MediaId='" + mid + "'");
            if(dt.Rows.Count>0)
            {
                int muid =Convert.ToInt32(dt.Rows[0]["UserId"].ToString());
                DataTable usershare = con.selectquery("select * from User_Share where Media_OwnerId='" + muid + "' and MediaID='" + mid + "'");
                try
                {

                    for (int i = 0; i < usershare.Rows.Count; i++)
                    {
                        int suid =Convert.ToInt32(usershare.Rows[i]["Shared_UserId"].ToString());
                        DataTable sharedusersfriends = con.selectquery("select * from Friends where(UserId='" + suid + "' and Status='Accept')or(FriendId='"+ suid + "' and Status='Accept')");
                        for (int j = 0; j < sharedusersfriends.Rows.Count; j++)
                        {
                            int fid =Convert.ToInt32(sharedusersfriends.Rows[j]["UserId"]);
                            int hid = Convert.ToInt32(sharedusersfriends.Rows[j]["FriendId"]);
                            DataTable c= con.selectquery("select * from UserDetails where USERID='" + fid + "' or USERID='" + hid + "'");
                            for (int h = 0; h < c.Rows.Count; h++)
                            {
                                int upuid = Convert.ToInt32(c.Rows[h]["USERID"].ToString());
                                int upuser = con.exequery("update UserDetails set Status='InActive',MediaId='" + mid + "' where USERID='" + upuid + "'");



                            }

                            }

                        }

                    DataTable friends = con.selectquery("select * from Friends where FriendId='" + muid + "' or UserId='" + muid + "'");
                    for (int k = 0; k < friends.Rows.Count; k++)
                    {
                        int fid =Convert.ToInt32(friends.Rows[k]["UserId"].ToString());
                        int hid = Convert.ToInt32(friends.Rows[k]["FriendId"].ToString());
                        DataTable cc = con.selectquery("select * from UserDetails where USERID='" + fid + "' or USERID='" + hid + "'");
                        
                        for(int ss=0;ss<cc.Rows.Count;ss++)
                        {
                            int upuid = Convert.ToInt32(cc.Rows[ss]["USERID"].ToString());
                            int upuser = con.exequery("update UserDetails set Status='InActive',MediaId='" + mid + "' where USERID='" + upuid + "'");

                        }


                    }

                    var posts = cs.DeleteMedia(mid);
                    int Activeuser = con.exequery("update UserDetails set Status = 'Active',MediaId = null where MediaId not in(select MediaId from UserMedia)");
                    if(Activeuser>0)
                    {
                        Response.Redirect("~/Admin/RumorList.aspx");

                    }




                }
                catch(Exception ex)
                {
                    Console.WriteLine("An error occurred: '{0}'", ex);

                }
            }




        }
    }
}