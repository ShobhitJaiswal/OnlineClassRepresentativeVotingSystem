<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRVotingPage.aspx.cs" Inherits="CRVotingPage" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Voting Page :: AKGEC</title>
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
            text-align: center;
            float:right;
        }
        .auto-style3 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style4 {
            width: 582px;
            height: 200px;
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
							<li><a href="CRVotingPage.aspx"><strong>Home</strong></a></li>
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
					<h3>Welcome To Main Voting Page!</h3>
						<p class="nihil">Vote For Your Favourite Candidate!</p>
                        </div>
                </div>
    <br />
    <br />
    <div>
           <marquee><h3 style="color:darkslateblueyellow"><b>Instructions To Be Read Firstly Before You Vote!</b></h3>
          <h4 style="color:red"><b>Please Review Your Candidate Details Carefully From The List & Vote Candidate Carefully!</b></h4> 
           <h4 style="color:red"><b>After Voting,You Will Be Redirected To Next Page & And You Will Not Be Able To Login Again!</b></h4></marquee>
        </div>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style4">
            <tr>
                <td class="text-center" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Red" Text="Your Details Below"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Your Roll No."></asp:Label>
                </td>
                <td><asp:Label ID="lblUseName" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Your Name"></asp:Label>
                </td>
                <td>
        <asp:Label ID="LBName" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Course"></asp:Label>
                </td>
                <td>
        <asp:Label ID="LBCourse" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Branch"></asp:Label>
                </td>
                <td>
        <asp:Label ID="LBbranch" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Semester"></asp:Label>
                </td>
                <td>
        <asp:Label ID="LBsemester" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Maroon" Text="Section"></asp:Label>
                </td>
                <td>
        <asp:Label ID="LBsection" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099"></asp:Label>
                </td>
            </tr>
        </table>
            <br />
    
    </div>
        <div class="auto-style2">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Roll_No" style="margin-top:-230px; margin-right:250px" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" BorderColor="#0000CC" BorderStyle="Solid" BorderWidth="2px" Font-Size="Medium" ForeColor="#0033CC" CssClass="auto-style3" Width="536px" Enabled="False">
                <ItemTemplate>
                    <br />
                            Roll No:
                                <asp:Label ID="Roll_NoLabel" runat="server" Text='<%# Eval("Roll_No") %>' />
                            <br />
                    Candidate Name:
                    <br />
                       <asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    <br />
                    
                    <asp:Button ID="btnVoteThisCandidate" runat="server" CommandArgument='<%# Eval("Roll_No") %>' CommandName="Vote" Text="Vote" />
                </ItemTemplate>
            </asp:DataList>
            <br />
            <asp:DataList ID="dlFemaleCandidates" runat="server" DataKeyField="Roll_No" DataSourceID="SqlDataSource2" OnItemCommand="dlFemaleCandidates_ItemCommand" BorderColor="#0000CC" BorderStyle="Solid" BorderWidth="2px" Font-Size="Medium" ForeColor="#0033CC" Width="536px">
                <ItemTemplate>
                    <br />

                    Roll No:
                    <asp:Label ID="Roll_NoLabel" runat="server" Text='<%# Eval("Roll_No") %>' />
                    <br />
                    Candidate Name:<br /> &nbsp;<asp:Label ID="CnameLabel" runat="server" Text='<%# Eval("Cname") %>' />
                    <br />             
                    <asp:Button ID="BTNFEMALEVOTE" runat="server" Text="Vote" CommandName="VoteforFemale" CommandArgument='<%# Eval("Roll_No") %>'  />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [Roll_No], [Cname] FROM [CandidateReg] WHERE (([Course] = @Course) AND ([Branch] = @Branch) AND ([Semester] = @Semester) AND ([Section] = @Section) AND ([Remark] = @Remark))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="LBCourse" Name="Course" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="LBbranch" Name="Branch" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="LBsemester" Name="Semester" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="LBsection" Name="Section" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="F" Name="Remark" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT Roll_No, Cname, Section, Semester, Branch, Course, Count FROM CandidateReg WHERE (Course = @Course) AND (Branch = @Branch) AND (Semester = @Semester) AND (Section = @Section) AND (Remark = 'M')">
            <SelectParameters>
                <asp:ControlParameter ControlID="LBCourse" Name="Course" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LBbranch" Name="Branch" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LBsemester" Name="Semester" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="LBsection" Name="Section" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
