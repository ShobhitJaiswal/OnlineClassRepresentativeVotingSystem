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
        //lblwinnerRollNo.Visible=true;
        //Label9.Visible = false;
        //Label8.Visible = false;
    }

    protected void btnDisplayWinner_Click(object sender, EventArgs e)
    {
        Session["ddCourse"] = "" + ddcourse.SelectedItem.Text;
        Session["ddDep"] = "" + ddbranch.SelectedItem.Text;
        Session["ddSem"] = "" + ddsem.SelectedItem.Text;
        Session["ddSec"] = "" + ddsec.SelectedItem.Text;

        Response.Redirect("CongratsPage.aspx");

        //OnlineVotingTableAdapters.CandidateRegTableAdapter da = new OnlineVotingTableAdapters.CandidateRegTableAdapter();
        //    string win = (string)da.GetWinerCandidateData(ddcourse.SelectedItem.Text, ddbranch.SelectedItem.Text, ddsem.SelectedItem.Text, ddsec.SelectedItem.Text);
        //    lblwinnerRollNo.Text = win;
        //Label8.Visible = true;
        //Label9.Visible = true;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}