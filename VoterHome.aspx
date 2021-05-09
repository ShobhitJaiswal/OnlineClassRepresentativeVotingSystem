<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VoterHome.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<!DOCTYPE HTML>
<html>
<head>
<title>Welcome Voter :: AKGEC</title>
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
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            display: block;
            max-width: 100%;
            height: 232px;
            width: 223px;
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
					<img src="images/1499925698AjayKumarGargEngineeringCollege.png" style="margin-left:-100px" alt=" " class="auto-style1" />
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
							<li class="act"><a href="Home.aspx"><strong>Home</strong></a></li>
							<li><a href="VoterVoting.aspx"><strong>Vote</strong></a></li>
							<li><a href="#"><strong>About</strong></a></li>
							<li><a href="Login.aspx"><strong>Logout</strong></a></li>
							<li><a href="#"><strong>Contact Us</strong></a></li>
                            <li><a href="http://www.akgec.in"><strong>AKGEC Website</strong></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
	<div class="header_bottom">
	</div>
    <div class="wlcome">
		<div class="container">
			<div class="wlcome-grids">
				<div class="col-md-7 wlcome-grid-left">
					<div class="election_grid">
						<h3>Welcome To AKGEC Election Website !</h3>
						<p class="nihil">Vote For Your Favorite Class Representative</p>

	                    <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Medium" ForeColor="#000099"></asp:Label>

	</div>

				</div>

			</div>

		</div>

    </div>
                    </form>
                    </body>
