using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.OleDb;
using System.Configuration;
using System.Data.SqlClient;
public partial class Admin_Datasetupload1 : System.Web.UI.Page
{
    Class1 cs = new Class1();
    Connection cons = new Connection();
    OleDbConnection Econ;
    SqlConnection con;

    string constr, Query, sqlconn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void ExcelConn(string FilePath)
    {

        constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", FilePath);
        Econ = new OleDbConnection(constr);

    }
    private void InsertExcelRecords(string FilePath)
    {
        ExcelConn(FilePath);

        Query = string.Format("Select [id],[NegativeWords],[Weight] FROM [{0}]", "Sheet1$");
        OleDbCommand Ecom = new OleDbCommand(Query, Econ);
        Econ.Close();
        Econ.Open();

        DataSet ds = new DataSet();
        OleDbDataAdapter oda = new OleDbDataAdapter(Query, Econ);
        Econ.Close();
        oda.Fill(ds);
        DataTable Exceldt = ds.Tables[0];
        connection();
        //creating object of SqlBulkCopy  
        SqlBulkCopy objbulk = new SqlBulkCopy(con);
        //assigning Destination table name  
        objbulk.DestinationTableName = "NegDataset";
        //Mapping Table column  
        objbulk.ColumnMappings.Add("id", "id");
        objbulk.ColumnMappings.Add("NegativeWords", "NegativeWords");
        objbulk.ColumnMappings.Add("Weight", "Weight");
       
        //inserting Datatable Records to DataBase  
        con.Open();
        objbulk.WriteToServer(Exceldt);
        con.Close();
        //int a = cons.exequery("update Productdataset set status='notsparm'");
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);

    }

    private void connection()
    {
        sqlconn = ConfigurationManager.ConnectionStrings["SqlCom"].ConnectionString;
        con = new SqlConnection(sqlconn);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {

            string CurrentFilePath = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string excelPath = Server.MapPath("~/Dataset/") + CurrentFilePath; FileUpload1.SaveAs(excelPath);
            InsertExcelRecords(excelPath);

        }
    }
}