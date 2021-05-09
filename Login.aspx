<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Login :: AKGEC</title>
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
        </style>
</head>
<body>
<!-- header -->
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="index.html"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" style="margin-top:25px" alt=" " class="auto-style1" /></a>
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
							<li><a target="_blank" href="http://www.akgec.in"><strong>About Us</strong></a></li>
							<li><a href="ContactUs.aspx"><strong>Contact Us</strong></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
     <div class="wlcome">
				<div class="col-md-7 wlcome-grid-left">
					<h3>Welcome To Login Page!</h3>
						<p class="nihil">Sign In To Access More!</p>
                        </div>
                </div>
    <div class="contact">
        <div class="container">
        <div class="col-md-5">
        <div class="col-md-7 contact-right">
            <form id="form1" runat="server">

                <div style="position:relative;width:600px;height:300px;margin:auto">
                 
                                <table style="position:relative;width:600px;height:300px;;margin:auto">
                    <tr style="height:50px">
                      <td>&nbsp;</td>  <td>  <asp:TextBox ID="txtCheckRollNoAvailable" runat="server" Height="50px" Width="600px" BorderColor="LightSeaGreen" BorderWidth="1px" ForeColor="Black" TextMode="Number" placeholder="Enter Roll No To Create Your Password" Font-Bold="True"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                             <asp:Button ID="btnCheckRollNo" runat="server" Text="Check" OnClick="btnCheckRollNo_Click"></asp:Button>
                             <br />
                             <br />
                             <asp:Label ID="changemsg" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                        </td>
                    </tr>
                                     <tr style="height:50px">
                        <td colspan="2">  <asp:TextBox ID="txtsetpassword" placeholder="set password" TextMode="Password" runat="server" Height="50px" Width="600px" Visible="False" BorderColor="LightSeaGreen" BorderWidth="1px" Font-Bold="True" ForeColor="Black"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                             <asp:Button ID="btnsetpassword" runat="server" Text="Set password"  Visible="False" OnClick="btnsetpassword_Click"></asp:Button>
                             <br />
                             <br />
                        </td>
                    </tr>

                </table>
                     

                </div>


                <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Bold="False" Font-Size="X-Large" ForeColor="Red" Height="30px"></asp:Label>
                <br /><br />
                <asp:DropDownList ID="DDusertype" runat="server" AutoPostBack="True" Width="400px" Height="48px" Font-Bold="True">
                    <asp:ListItem>Choose User Type</asp:ListItem>
                    <asp:ListItem>Voter</asp:ListItem>
                    <asp:ListItem>Candidate</asp:ListItem>
                    <asp:ListItem>Administrator</asp:ListItem>
                </asp:DropDownList>
                <br /><br />
                <asp:TextBox ID="TextBox1" placeholder="User ID" runat="server" OnTextChanged="TextBox1_TextChanged" Width="600px" Font-Bold="True" ForeColor="Black" BorderColor="LightSeaGreen" BorderWidth="1px" Height="50px"></asp:TextBox>
                <br /><br /><br />
                <asp:TextBox ID="TextBox2" placeholder="Password" runat="server" Width="600px" Font-Bold="True" ForeColor="Black" BorderColor="LightSeaGreen" BorderWidth="1px" Height="50px" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Login" Height="48px" OnClick="Button1_Click" Width="400px" />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
            </form>
        </div>
    </div>
        </div>
    </div>
    </body>
    </html>