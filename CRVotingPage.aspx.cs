using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRVotingPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string v = ""+Session["thankspage.aspx"];
        if (v == "Thanks")
        {
            Response.Redirect("thankspage.aspx");
        }

        else
        {

            lblUseName.Text = "" + Session["VoterId"];
            OnlineVotingTableAdapters.LibraryTableAdapter da = new OnlineVotingTableAdapters.LibraryTableAdapter();
            OnlineVoting.LibraryDataTable dt = da.GetAllDataByRollNo(lblUseName.Text);
            OnlineVoting.LibraryRow dr = (OnlineVoting.LibraryRow)dt[0];
            LBCourse.Text = dr.Course;
            LBbranch.Text = dr.Branch;
            LBsemester.Text = dr.Semester;
            LBsection.Text = dr.Section;
            LBName.Text = dr.Name;
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    int xxx=0, yyy=0,zzz;
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Vote")
        {           
            string crollno = e.CommandArgument.ToString();
            OnlineVotingTableAdapters.CandidateRegTableAdapter daa = new OnlineVotingTableAdapters.CandidateRegTableAdapter();
            OnlineVoting.CandidateRegDataTable dt = daa.GetPreviousVoteByCandidateRollNo(crollno);
            OnlineVoting.CandidateRegRow dr = (OnlineVoting.CandidateRegRow)dt[0];
            string pv = dr.Count;
            int a = Convert.ToInt32(pv);
            int b = a + 1;
            daa.SubmitNewVote(Convert.ToString(b), crollno);
            DataList1.Visible = false;
            OnlineVotingTableAdapters.LibraryTableAdapter ud = new OnlineVotingTableAdapters.LibraryTableAdapter();
            ud.UpdateVotingStatus(1, lblUseName.Text);
            Session["ThankYou.aspx"] = "Vote";
            Response.Redirect("thankspage.aspx");


        }
    }

    protected void dlFemaleCandidates_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName== "VoteforFemale")
        {
            string femalerol = e.CommandArgument.ToString();
            //OnlineVotingTableAdapters.CandidateRegTableAdapter female =new OnlineVotingTableAdapters.CandidateRegTableAdapter();
            //OnlineVoting.CandidateRegDataTable x = female.GetFemalePrevioseVoteByRollNo(femalerol);
            //OnlineVoting.CandidateRegRow xyz = (OnlineVoting.CandidateRegRow)x[0];


            OnlineVotingTableAdapters.CandidateRegTableAdapter daat = new OnlineVotingTableAdapters.CandidateRegTableAdapter();
            OnlineVoting.CandidateRegDataTable dtt = daat.GetPreviousVoteByCandidateRollNo(femalerol);
            OnlineVoting.CandidateRegRow drr = (OnlineVoting.CandidateRegRow)dtt[0];
            string pvs = drr.Count;
            int a = Convert.ToInt32(pvs);
            int b = a + 1;
            daat.SubmitNewVote(Convert.ToString(b), femalerol);
            dlFemaleCandidates.Visible = false;
            OnlineVotingTableAdapters.LibraryTableAdapter ud = new OnlineVotingTableAdapters.LibraryTableAdapter();
            ud.UpdateVotingStatus(1, lblUseName.Text);
            dlFemaleCandidates.Enabled = false;
            DataList1.Enabled = true;

        }
    }
}