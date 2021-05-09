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
        Label1.Visible = false;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            OnlineVotingTableAdapters.ContactDataTableAdapter cd = new OnlineVotingTableAdapters.ContactDataTableAdapter();
            cd.Insert(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, TextBox5.Text);
            Label1.Visible = true;
            Label1.Text = "Done!Your Response was Recorded.";
        }
        catch
        {
           
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}
