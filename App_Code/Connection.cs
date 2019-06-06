using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{

    SqlConnection con;
    public Connection()
    {
        con = new SqlConnection("Data Source=DESKTOP-G4UTO1S;Initial Catalog=Rumor_db;Integrated Security=True");

        //
        // TODO: Add constructor logic here
        //
    }
    public void openConnection()
    {
        if (con.State != ConnectionState.Open)
        {
            con.Open();
        }
    }

    public void closeConnection()
    {
        if (con.State != ConnectionState.Closed)
        {
            con.Close();
        }
    }

    public int exequery(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);

        int x = cmd.ExecuteNonQuery();
        con.Close();
        return x;
    }
    public DataTable selectquery(string str)
    {
        con.Open();
        SqlDataAdapter adt = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        adt.Fill(dt);
        con.Close();
        return dt;
    }
    public void setData(string procedureName, SqlParameter[] procedureParams)
    {
        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = procedureName;
        command.Connection = con;
        if (procedureParams != null)
        {
            command.Parameters.AddRange(procedureParams);
        }
        command.ExecuteNonQuery();
    }

    public DataTable getData(string procedureName, SqlParameter[] procedureParams)
    {
        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = procedureName;
        command.Connection = con;
        if (procedureParams != null)
        {
            for (int i = 0; i < procedureParams.Length; i++)
            {
                command.Parameters.Add(procedureParams[i]);
            }
        }

        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataTable table = new DataTable();
        adapter.Fill(table);
        return table;
    }









}