using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for home
/// </summary>
public class home
{
    public home()
    {
    }

    public void verifyDocument(int uid)
    {

        Connection cs = new Connection();
        cs.openConnection();
        SqlParameter[] parameters = new SqlParameter[1];

        parameters[0] = new SqlParameter("@logid", SqlDbType.Int);
        parameters[0].Value = uid;

        cs.setData("sp_UserHomePost", parameters);
        cs.closeConnection();
    }

   



}
