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
       Label2.Visible = false;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow rows in GridView1.Rows)
        {
            string rollno, Name, course, branch, sem, sec,gender;
            rollno = rows.Cells[0].Text;
            Name = rows.Cells[1].Text;
            gender = rows.Cells[4].Text;
            course = rows.Cells[5].Text;

            branch = rows.Cells[6].Text;

            sem = rows.Cells[7].Text;
            sec = rows.Cells[8].Text;

            CheckBox isadd = (rows.Cells[7].FindControl("CBchoosecandidate") as CheckBox);

            if (isadd.Checked)
            {
                savecandidatedata(rollno, Name, course, branch, sem, sec,gender);
            }
        }
        Label2.Text = "Selected Student(s) Nominated";
        Label2.Visible = true;
    }

    protected void savecandidatedata(string rollno,string Name,string course,string branch,string sem,string sec,string gender)
    {
        OnlineVotingTableAdapters.CandidateRegTableAdapter da = new OnlineVotingTableAdapters.CandidateRegTableAdapter();
        da.Insert(rollno, Name, sec, sem, branch, course, "0",gender);
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}