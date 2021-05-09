using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow rows in GridView1.Rows)
        {
            String rollno, Name, course, branch, sem, sec;
            rollno = rows.Cells[0].Text;
            Name = rows.Cells[1].Text;
            course = rows.Cells[2].Text;

            branch = rows.Cells[3].Text;

            sem = rows.Cells[4].Text;
            sec = rows.Cells[5].Text;

            CheckBox isadd = (rows.Cells[7].FindControl("CBchoosevoter") as CheckBox);

            if (isadd.Checked)
            {
                savevoterdata(rollno);
            }           
        }
        Response.Redirect("Del_Voter.aspx");
    }

    protected void savevoterdata(string rollno)
    {
        OnlineVotingTableAdapters.LibraryTableAdapter dv = new OnlineVotingTableAdapters.LibraryTableAdapter();
        dv.DeleteQuery(rollno);
    }
}