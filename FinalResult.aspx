<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalResult.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Result Page :: AKGEC</title>
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
        .auto-style2 {
            margin-left: 360px;
        }
        </style>
</head>
<body>
    <!-- header -->
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="index.html"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" style="margin-left:-100px; margin-top:25px" alt=" " class="auto-style1" /></a>
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
							<li><a href="Home.aspx"><strong>Home</strong></a></li>
							<li><a href="ContactUs.aspx"><strong>Contact Us</strong></a></li>
                            <li><a target="_blank" href="http://www.akgec.in"><strong>About Us</strong></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
   <div class="wlcome">
				<div class="col-md-7 wlcome-grid-left">
					<h3>Welcome To Result Page!</h3>
						<p class="nihil">View Winner Class Representative Of Your Class</p>
                        </div>
                </div>
        <form id="form1" runat="server">
            <div class="text-center">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Department] FROM [DepttDD]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Branch] FROM [BranchDD] WHERE ([Department] = @Department)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddcourse" Name="Department" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Semester] FROM [SemsDD] WHERE (([Department] = @Department) AND ([Branch] = @Branch))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddcourse" Name="Department" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Section] FROM [SecDD] WHERE (([Course] = @Course) AND ([Branch] = @Branch) AND ([Semester] = @Semester))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddcourse" Name="Course" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddsem" Name="Semester" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <table align="center" class="nav-justified">
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Text="Select Your Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Medium" ForeColor="#000099" Text="Course"></asp:Label>
                </td>
                <td class="text-center">
        <asp:DropDownList ID="ddcourse" runat="server" DataSourceID="SqlDataSource1" DataTextField="Department" DataValueField="Department" AutoPostBack="True" Height="50px" Width="200px">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label2" runat="server" Font-Italic="True" ForeColor="#000099" Text="Branch"></asp:Label>
                </td>
                <td class="text-center">
        <asp:DropDownList ID="ddbranch" runat="server" DataSourceID="SqlDataSource2" DataTextField="Branch" DataValueField="Branch" AutoPostBack="True" Height="50px" Width="200px" >
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label3" runat="server" Font-Italic="True" ForeColor="#000099" Text="Semester"></asp:Label>
                </td>
                <td class="text-center">
        <asp:DropDownList ID="ddsem" runat="server" DataSourceID="SqlDataSource3" DataTextField="Semester" DataValueField="Semester" AutoPostBack="True" Height="50px" Width="200px">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="#000099" Text="Section"></asp:Label>
                </td>
                <td class="text-center">
        <asp:DropDownList ID="ddsec" runat="server" DataSourceID="SqlDataSource4" DataTextField="Section" DataValueField="Section" AutoPostBack="True" Height="50px" Width="200px">
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="text-center">
                    <br />
                </td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Nominated Candidate Details Will Be Shown Below"></asp:Label>
                <div class="auto-style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" BorderColor="#663300" BorderStyle="Solid" BorderWidth="3px" ForeColor="Blue" DataSourceID="SqlDataSource6">
                        <Columns>
                            <asp:BoundField DataField="Count" HeaderText="Total Vote" SortExpression="Count" />
                            <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                            <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                            <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                            <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                            <asp:BoundField DataField="Cname" HeaderText="Candidate Name" SortExpression="Cname" />
                            <asp:BoundField DataField="Roll_No" HeaderText="Roll No" ReadOnly="True" SortExpression="Roll_No" />
                            <asp:BoundField DataField="Remark" HeaderText="Gender" SortExpression="Remark" />
                        </Columns>
                    </asp:GridView>
                </div>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CandidateReg] WHERE (([Branch] = @Branch) AND ([Course] = @Course) AND ([Section] = @Section) AND ([Semester] = @Semester))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddbranch" Name="Branch" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddcourse" Name="Course" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddsec" Name="Section" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddsem" Name="Semester" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                <div class="text-center">
                    <br />
                    <br />
        <asp:Button ID="btnDisplayWinner" runat="server" Text="Show Winner" OnClick="btnDisplayWinner_Click" BorderColor="#0099CC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#FF3300" Height="50px" Width="150px" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        <br />
        
                </div>
            </div>
        
    </form>
</body>
</html>
