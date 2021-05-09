<%@ Page Language="C#" AutoEventWireup="true" CodeFile="thankspage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Thank You :: AKGEC</title>
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
					<h3>Thanks For Voting</h3>
						<p class="nihil">See Voting Results From The Result Page When The Voting Session Was Ended!</p>
                        </div>
                </div>

    <form id="form1" runat="server">
    <div class="text-center">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign Out" BorderColor="Red" BorderStyle="Solid" BorderWidth="3px" ForeColor="#009900" />
    </div>
    </form>
</body>
</html>
