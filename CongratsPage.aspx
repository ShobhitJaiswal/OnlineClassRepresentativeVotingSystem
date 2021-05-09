<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CongratsPage.aspx.cs" Inherits="CongratsPage" %>

<!DOCTYPE html>

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
					<h3>Congratulations Page!</h3>
						<p class="nihil"></p>
                        </div>
                </div>
    <form id="form1" runat="server">
    <div class="text-center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="Now Showing Student Data of Course"></asp:Label>
        <asp:Label ID="lblCourse" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
         <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="of Branch"></asp:Label>
         <asp:Label ID="lblDep" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
         <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="of Semester"></asp:Label>
         <asp:Label ID="lblSem" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
         <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" Text="of Section"></asp:Label>
         <asp:Label ID="lblSec" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                 <asp:Label ID="lblMaleRollNo" runat="server" Text="MALE" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
         <asp:Label ID="lblFemaleRoleNo" runat="server" Text="FEMALE" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
        <br />
        <br />
        </div>
        <div style="width:500px;margin-left:50px">
        <asp:DataList ID="dlMale" runat="server" DataKeyField="Roll_No" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#660066">
            <ItemTemplate>
                <b style="color:red; margin-left:100px">Male Winner Details</b>
                <br />
                Roll No:
                <asp:Label ID="Roll_NoLabel" runat="server" Text='<%# Eval("Roll_No") %>' />
                <br />
               Male Winner Name:
                <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                <br />
                Section:
                <asp:Label ID="SectionLabel" runat="server" Text='<%# Eval("Section") %>' />
                <br />
                Semester:
                <asp:Label ID="SemesterLabel" runat="server" Text='<%# Eval("Semester") %>' />
                <br />
                Branch:
                <asp:Label ID="BranchLabel" runat="server" Text='<%# Eval("Branch") %>' />
                <br />
                Course:
                <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                <br />
                Total Votes:
                <asp:Label ID="CountLabel" runat="server" Text='<%# Eval("Count") %>' />
                <br />
                Gender:
                <asp:Label ID="RemarkLabel" runat="server" Text='<%# Eval("Remark") %>' />
                <br />
                
            </ItemTemplate>
        </asp:DataList>
            </div>
            <div style="width:500px; float:right;margin-top:-230px">
        <asp:DataList ID="dlFemale" runat="server" DataKeyField="Roll_No" BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#660066">
            <ItemTemplate>
                <b style="color:red; margin-left:100px">Female Winner Details</b>
                <br />
                Roll No:
                <asp:Label ID="Roll_NoLabel" runat="server" Text='<%# Eval("Roll_No") %>' />
                <br />
                Female Winner Name:
                <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                <br />
                Section:
                <asp:Label ID="SectionLabel" runat="server" Text='<%# Eval("Section") %>' />
                <br />
                Semester:
                <asp:Label ID="SemesterLabel" runat="server" Text='<%# Eval("Semester") %>' />
                <br />
                Branch:
                <asp:Label ID="BranchLabel" runat="server" Text='<%# Eval("Branch") %>' />
                <br />
                Course:
                <asp:Label ID="CourseLabel" runat="server" Text='<%# Eval("Course") %>' />
                <br />
                Total Votes:
                <asp:Label ID="CountLabel" runat="server" Text='<%# Eval("Count") %>' />
                <br />
                Gender:
                <asp:Label ID="RemarkLabel" runat="server" Text='<%# Eval("Remark") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
