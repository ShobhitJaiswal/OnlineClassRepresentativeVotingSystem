<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head>
<title>Contact Us :: AKGEC</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 85%;
            height: 160px;
        }
        .logout{position:absolute;margin-left:600px;margin-top:25px;background-color:none;border:none;font-weight:bold}
        </style>
</head>
<body>
<!-- header -->
    <form id="admin" runat="server">
	    <div class="text-right">
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="index.html"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" style="margin-right:-80px; margin-top:25px" alt=" " class="auto-style1" /></a>
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
							
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>            
		</div>
	</div>
            </div>



<div class="contact">
		<div class="container">
			<h3>Welcome To Contact Us Page</h3>
            <p class="nihil">Leave Your Valuable Feedback Here</p>
			<div class="contact-grid">
				<div class="col-md-7 contact-right">
					<asp:TextBox ID="TextBox1" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Gray" Height="50px" Width="300px" placeholder="Name"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Gray" Height="50px" Width="300px" placeholder="Roll No" TextMode="Number" Wrap="False"></asp:TextBox>
                    <br />
                    <br />
&nbsp;<asp:TextBox ID="TextBox3" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Gray" Height="50px" Width="300px" placeholder="Email Address" TextMode="Email"></asp:TextBox>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Gray" placeholder="Subject" Height="50px" Width="300px"></asp:TextBox>
&nbsp;<div class="clearfix"> </div>
						<asp:TextBox ID="TextBox5" runat="server" BorderColor="Blue" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Gray" Height="50px" TextMode="MultiLine" Width="300px" placeholder="Leave Your Message Here...."></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
&nbsp;<br />
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                    <br />
                </div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
        </form>



            </body>
    </html>
