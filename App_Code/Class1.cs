using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
   
    public DataTable getUserHomePost(int logid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@logid", SqlDbType.Int);
        param[0].Value = logid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_UserHomePost", param);
        cs.closeConnection();
        return tab;
    }
    public DataTable FriendrequestList(int logid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@id", SqlDbType.Int);
        param[0].Value = logid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_FriendrequestList", param);
        cs.closeConnection();
        return tab;
    }
    
    public DataTable Friendlist(int logid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@logid", SqlDbType.Int);
        param[0].Value = logid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_Friendlist", param);
        cs.closeConnection();
        return tab;
    }
    

    public DataTable SearchPeopleForRequest(int id,string val)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[2];
        param[0] = new SqlParameter("@id", SqlDbType.Int);
        param[0].Value = id;
        param[1] = new SqlParameter("@val", SqlDbType.VarChar,100);
        param[1].Value = val;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_SearchPeopleForRequest", param);
        cs.closeConnection();
        return tab;
    }

    public DataTable cmtpost(int uid, int medid)
    {

        Connection cs = new Connection();
        cs.openConnection();
        SqlParameter[] parameters = new SqlParameter[2];

        parameters[0] = new SqlParameter("@logid", SqlDbType.Int);
        parameters[0].Value = uid;

        parameters[1] = new SqlParameter("@medid", SqlDbType.Int);
        parameters[1].Value = medid;


        DataTable tab = new DataTable();
        tab = cs.getData("sp_UserHomePostwithcmnt",parameters);
        cs.closeConnection();
        return tab;
        
    }





    public DataTable UserPostAlert()
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[0];
        
        DataTable tab = new DataTable();
        tab = cs.getData("sp_UserPostAlert",param);
        cs.closeConnection();
        return tab;
    }

    
 public DataTable DeleteMedia(int mid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@mediaid", SqlDbType.Int);
        param[0].Value = mid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_DeleteMedia", param);
        cs.closeConnection();
        return tab;
    }
    public DataTable CommentList(int mid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@mid", SqlDbType.Int);
        param[0].Value = mid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_CommentList", param);
        cs.closeConnection();
        return tab;
    }

    public DataTable SearchAllPeople(int id, string val)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[2];
        param[0] = new SqlParameter("@id", SqlDbType.Int);
        param[0].Value = id;
        param[1] = new SqlParameter("@val", SqlDbType.VarChar, 100);
        param[1].Value = val;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_SearchAllPeople", param);
        cs.closeConnection();
        return tab;
    }

    public DataTable MyPost(int logid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@logid", SqlDbType.Int);
        param[0].Value = logid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_MyPost", param);
        cs.closeConnection();
        return tab;
    }
    public DataTable delmypost(int mid)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@mid", SqlDbType.Int);
        param[0].Value = mid;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_delmypost", param);
        cs.closeConnection();
        return tab;
    }
    public DataTable offensivelist(int id)
    {
        Connection cs = new Connection();
        SqlParameter[] param = new SqlParameter[1];
        param[0] = new SqlParameter("@id", SqlDbType.Int);
        param[0].Value = id;
        DataTable tab = new DataTable();
        tab = cs.getData("sp_offensivelist", param);
        cs.closeConnection();
        return tab;
    }

    //public DataTable sp_ActiveUser()
    //   {
    //       Connection cs = new Connection();
    //       SqlParameter[] param = new SqlParameter[0];
    //       //param[0] = new SqlParameter("@mediaid", SqlDbType.Int);
    //       //param[0].Value = mid;
    //       DataTable tab = new DataTable();
    //       tab = cs.setData("sp_ActiveUser",param);
    //       cs.closeConnection();
    //       return tab;
    //   }
}