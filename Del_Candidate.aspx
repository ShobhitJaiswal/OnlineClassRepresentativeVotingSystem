<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Del_Candidate.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
<title>Delete Candidate :: Admin AKGEC</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 85%;
            height: 160px;
        }
        .auto-style4 {
            width: 100%;
            border: 2px solid #000000;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            margin-left: 360px;
        }
        .auto-style7 {
            width: 1170px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
<!-- header -->
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="index.html"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" alt=" " class="auto-style1" style="margin-bottom:-200px" /></a>
				</div>
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav" style="font-size:15px;">
							<li><a href="Admin.aspx"><strong>Home</strong></a></li>
							<li><a target="_blank" href="http://www.akgec.in"><strong>About</strong></a></li>
							<li><a href="ContactUs.aspx"><strong>Contact Us</strong></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
        <br />
        <br />
    <div class="contact">
        <div class="auto-style7">
                    <table class="auto-style4" style="align-content:center">
                    <tr>
                        <td colspan="2" class="auto-style5"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Delete Candidate Information Here</strong></td>
                    </tr>
                    <tr>
                        <td class="text-center">Course</td>
                        <td class="text-center">
                            <asp:DropDownList ID="CourseDD" runat="server" Font-Bold="True" ForeColor="Black" Height="40px" Width="400px" AutoPostBack="True" DataTextField="Course" DataValueField="Course" DataSourceID="SqlDataSource1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Course] FROM [CandidateReg]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">Branch</td>
                        <td class="text-center">
                            <asp:DropDownList ID="BranchDD" runat="server" Font-Bold="True" ForeColor="Black" Height="40px" Width="400px" AutoPostBack="True" DataTextField="Branch" DataValueField="Branch" DataSourceID="SqlDataSource2">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Branch] FROM [CandidateReg] WHERE ([Course] = @Course)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="CourseDD" Name="Course" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">Semester</td>
                        <td class="text-center">
                            <asp:DropDownList ID="SemDD" runat="server" Font-Bold="True" ForeColor="Black" Height="40px" Width="400px" AutoPostBack="True" DataTextField="Semester" DataValueField="Semester" DataSourceID="SqlDataSource3">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Semester] FROM [CandidateReg] WHERE (([Course] = @Course) AND ([Branch] = @Branch))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="CourseDD" Name="Course" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="BranchDD" Name="Branch" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center">Section</td>
                        <td class="text-center">
                            <asp:DropDownList ID="SecDD" runat="server" Font-Bold="True" ForeColor="Black" Height="40px" Width="400px" AutoPostBack="True" DataTextField="Section" DataValueField="Section" DataSourceID="SqlDataSource4">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Section] FROM [CandidateReg] WHERE (([Course] = @Course) AND ([Branch] = @Branch) AND ([Semester] = @Semester))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="CourseDD" Name="Course" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="BranchDD" Name="Branch" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="SemDD" Name="Semester" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="text-center">
                            <asp:Button ID="Button1" runat="server" BackColor="#0099FF" BorderColor="Blue" BorderWidth="1px" ForeColor="Black" Text="View Data" />
                            <br />
                        </td>
                    </tr>
                </table>

                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Showing Registered Candidates  in Gridview" Font-Bold="True" ForeColor="Black"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCFF" CellPadding="5" CellSpacing="5" Height="241px" HorizontalAlign="Center" Width="1200px" DataSourceID="SqlDataSource5" AutoGenerateColumns="False" DataKeyNames="Roll_No" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" SortExpression="Roll_No" />
                            <asp:BoundField DataField="Cname" HeaderText="Cname" SortExpression="Cname" />
                            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                            <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                            <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                            <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count" />
                            <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                            <asp:TemplateField AccessibleHeaderText="DelCandidate">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CBdelcandidate" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BorderStyle="Solid" Font-Bold="True" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CandidateReg] WHERE (([Branch] = @Branch) AND ([Course] = @Course) AND ([Section] = @Section) AND ([Semester] = @Semester))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="BranchDD" Name="Branch" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="CourseDD" Name="Course" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="SecDD" Name="Section" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="SemDD" Name="Semester" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button2" runat="server" BackColor="#66FF66" BorderColor="Black" Text="Delete" OnClick="Button2_Click" />
&nbsp;&nbsp;
                    <br /></div>
            </div>
        </form>
        </body>
    </html>
