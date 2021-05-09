using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        // changemsg.Visible = false;
        if (Session["pagename"] == "Admin.aspx")
        {
            Response.Redirect("Admin.aspx");
        }
        else if (Session["PageName"] == "CRVotingPage.aspx")
        {
            Response.Redirect("CRVotingPage.aspx");
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    //-------------------------------------------------for voter login------------------------------------------------------
    protected void Button1_Click(object sender, EventArgs e)
    {
        string usertype=DDusertype.SelectedItem.Text;
        if (usertype == "Voter" || usertype=="Candidate")
        {
            OnlineVotingTableAdapters.LibraryTableAdapter validateUser = new OnlineVotingTableAdapters.LibraryTableAdapter();
            int isvalid = (int)validateUser.AuthonticateUser(TextBox1.Text, TextBox2.Text);
            if (isvalid > 0)
            {
                OnlineVoting.LibraryDataTable Votingcheckstatus = validateUser.GetAllDataByRollNo(TextBox1.Text);
                OnlineVoting.LibraryRow dr = (OnlineVoting.LibraryRow)Votingcheckstatus[0];
                int sts = dr.Status;
                if (sts == 1)
                {
                    Label2.Text = "Already Voted";
                }
                else
                {
                    Session["VoterId"] = TextBox1.Text;
                    Session["pagename"] = "CRVotingPage.aspx";
                    Response.Redirect("CRVotingPage.aspx");
                }
            }
            else
            {
                Label3.Text = "Username or Password is invalid";
                Label2.Visible = false;
            }
        }
        //---------------------------------------------for candidate login---------------------------------------------------------
        try
            {
                //if (usertype == "Candidate")
                //{

                //    OnlineVotingTableAdapters.CandloginTableAdapter validateCUser = new OnlineVotingTableAdapters.CandloginTableAdapter();
                //    int isvalid = (int)validateCUser.ValidateCandidate(TextBox1.Text, TextBox2.Text);
                //    if (isvalid > 0)
                //    {

                //        OnlineVoting.CandloginDataTable Votingcheckstatus = validateCUser.GetDataByCandidateName(TextBox1.Text);
                //        OnlineVoting.CandloginRow dr = (OnlineVoting.CandloginRow)Votingcheckstatus[0];
                //        int sts = dr.Status;
                //        if (sts != 1)
                //        {
                //            Label2.Text = "Already Voted";
                //        }
                //        else
                //        {
                //        Session["VoterId"] = TextBox1.Text;
                //        Response.Redirect("CandidateHome.aspx");
                //        }
                //    }
                //}

            }
            catch
            {
                Label3.Text = "Username or Password is invalid";
                Label2.Visible = false;
            }

        //--------------------------------------------------For  Admin Login------------------------------------------------------------------
        if (usertype=="Administrator")
        {
            OnlineVotingTableAdapters.AdmLoginTableAdapter validateAdm = new OnlineVotingTableAdapters.AdmLoginTableAdapter();
            int isvalid = (int)validateAdm.ValidateAdmin(TextBox1.Text, TextBox2.Text);
            if (isvalid > 0)
            {
                Session["pagename"] = "Admin.aspx";

                Session["AdminUsername"] = TextBox1.Text;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label3.Text = "Invalid User";
                Label2.Visible = false;
            }
        }

    }

    protected void btnCheckRollNo_Click(object sender, EventArgs e)
    {
        OnlineVotingTableAdapters.LibraryTableAdapter check = new OnlineVotingTableAdapters.LibraryTableAdapter();
        int r = (int)check.IsRollNoAvailable(txtCheckRollNoAvailable.Text);
       // TextBox1.Text = txtCheckRollNoAvailable.Text;
        if (r > 0)
        {
            btnsetpassword.Visible = true;
            btnCheckRollNo.Visible = false;
            txtsetpassword.Visible = true;
        }
        else if(r==0)
        {
            changemsg.Text = "Roll No Not Found";

        }

    }

    protected void btnsetpassword_Click(object sender, EventArgs e)
    {
        OnlineVotingTableAdapters.LibraryTableAdapter chech = new OnlineVotingTableAdapters.LibraryTableAdapter();
        int r = (int)chech.IsRollNoAvailable(txtCheckRollNoAvailable.Text);
        TextBox1.Text = txtCheckRollNoAvailable.Text;
        if (r > 0)
        {
            chech.SetPassword(txtsetpassword.Text, txtCheckRollNoAvailable.Text);
            changemsg.Visible = true;
            changemsg.Text = "Password Created! Please Login";

        }
    }
}