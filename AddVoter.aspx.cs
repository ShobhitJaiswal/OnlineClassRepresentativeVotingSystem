using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.OleDb;
using System.Web.UI.WebControls;
using System.Data;
using System.ComponentModel;
using System.IO;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Button2.Visible = false;
        GridView1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Connection String by default empty  
        string ConStr = "";
        //Extention of the file upload control saving into ext because   
        //there are two types of extention .xls and .xlsx of Excel   
        string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
        //getting the path of the file   
        string path = Server.MapPath(FileUpload1.FileName);
        //saving the file inside the MyFolder of the server  
        FileUpload1.SaveAs(path);
        Label1.Text = FileUpload1.FileName + "\'s Data showing into the GridView";
        //checking that extantion is .xls or .xlsx  
        if (ext.Trim() == ".xls")
        {
            //connection string for that file which extantion is .xls  
            ConStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
        }
        else if (ext.Trim() == ".xlsx")
        {
            //connection string for that file which extantion is .xlsx  
            ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        }
        //making query  
        string query = "SELECT * FROM [Sheet1$]";
        //Providing connection  
        OleDbConnection conn = new OleDbConnection(ConStr);
        //checking that connection state is closed or not if closed the   
        //open the connection  
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
        //create command object  
        OleDbCommand cmd = new OleDbCommand(query, conn);
        // create a data adapter and get the data into dataadapter  
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        //fill the Excel data to data set  
        da.Fill(ds);
        //set data source of the grid view  
        GridView1.DataSource = ds.Tables[0];
        //binding the gridview  
        GridView1.DataBind();
        //close the connection  
        conn.Close();
        Label1.Visible = true;
        Button2.Visible = true;
        GridView1.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = 'C:\Users\Shobhit Jaiswal\Documents\Visual Studio 2015\WebSites\Online Class Representative Voting System\App_Data\Database.mdf'; Integrated Security = True; Connect Timeout = 30");

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {

                SqlCommand cmds = new SqlCommand(@"insert into Library values('" + GridView1.Rows[i].Cells[0].Text + "','" + GridView1.Rows[i].Cells[1].Text + "','" + GridView1.Rows[i].Cells[2].Text + "','" + GridView1.Rows[i].Cells[3].Text + "','" + GridView1.Rows[i].Cells[4].Text + "','" + CourseDD.SelectedItem.Text + "','" + BranchDD.SelectedItem.Text + "','" + SemDD.SelectedItem.Text + "','" + SecDD.SelectedItem.Text +"','"+"N/A"+ "','" + "0" + "','" + "N/A" + "','" + "N/A" + "','" + "N/A" + "','" + "N/A" + "')", con);
                con.Open();
                cmds.ExecuteNonQuery();
                con.Close();
                Label2.Text = "Student Data Submitted Successfully!";
                Label2.Visible = true;
                

            }
        }
        catch
        {
            Label2.Visible = true;
            Label2.Text = "Roll No. must not be same as other branch! Please check roll no. and upload data again";
        }
    }
}