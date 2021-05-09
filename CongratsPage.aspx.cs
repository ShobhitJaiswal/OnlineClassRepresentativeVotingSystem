using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CongratsPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCourse.Text = ""+Session["ddCourse"];
        lblDep.Text = "" + Session["ddDep"];
        lblSem.Text = "" + Session["ddSem"];
        lblSec.Text = "" + Session["ddSec"];
        lblMaleRollNo.Visible = false;
        lblFemaleRoleNo.Visible = false;

        OnlineVotingTableAdapters.CandidateRegTableAdapter da = new OnlineVotingTableAdapters.CandidateRegTableAdapter();
        string Malewin = (string)da.GetWinerCandidateData(lblCourse.Text,lblDep.Text, lblSem.Text,lblSec.Text);
        lblMaleRollNo.Text = "" + Malewin;
        try
        {
            //  dlMale.DataSource
            OnlineVoting.CandidateRegDataTable malewiner = da.GetWinner(lblMaleRollNo.Text);
            dlMale.DataSource = malewiner;
            dlMale.DataBind();



           

        }
        catch
        {

        }

        try
        {
            OnlineVotingTableAdapters.CandidateRegTableAdapter F = new OnlineVotingTableAdapters.CandidateRegTableAdapter();


            string femaleWin = (string)F.GetFemaleWinnerRollNo(lblCourse.Text, lblDep.Text, lblSem.Text, lblSec.Text);
            lblFemaleRoleNo.Text = femaleWin;

            OnlineVoting.CandidateRegDataTable Femalewiner = da.GetWinner(lblFemaleRoleNo.Text);
            dlFemale.DataSource = Femalewiner;
            dlFemale.DataBind();

        }
        catch
        {

        }
       
    }
}