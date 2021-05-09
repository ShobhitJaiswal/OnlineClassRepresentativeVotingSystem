<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Admin Home :: AKGEC</title>
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
        /*.logout{position:absolute;margin-left:800px; margin-top:-48px; background-color:transparent;border:none;font-weight:bold}
        .auto-style2 {
            left: 0px;
            top: 0px;
        }*/
        .auto-style3 {
            display: block;
            max-width: 100%;
            height: 232px;
            width: 223px;
        }
        </style>
</head>
<body>
<!-- header -->
    <form id="admin" runat="server">
	    <div class="text-left">
	    <div class="text-right">
	<div class="header_bg">
		<div class="container">
			<!-----start-header----->
			<div class="header">
				<div class="logo">
					<a href="Admin.aspx"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" style="margin-right:-80px; margin-top:25px" alt=" " class="auto-style1" /></a>
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
							<li><a href="AddCandidate.aspx"><strong>Add Candidate</strong></a></li>
							<li><a href="AddVoter.aspx"><strong>Add Voter</strong></a></li>
							<li><a href="Del_Candidate.aspx"><strong>Delete Candidate</strong></a>
							<li><a href="Del_Voter.aspx"><strong>Delete Voter</strong></a></li>
                            
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>            
		</div>
	</div>
    <br/>
        
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Welcome" Font-Bold="True" ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
                            <asp:Button ID="Button1" runat="server" BackColor="#3399FF" BorderColor="#0033CC" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Black" Text="Logout" OnClick="Button1_Click" />
                            </div>
                            

        </form>

<div class="wlcome">
		<div class="container">
			<div class="wlcome-grids">
				<div class="col-md-7 wlcome-grid-left">
					<div class="election_grid">
						<h3>Welcome To AKGEC CR Voting Website Admin Home</h3>
						<p class="nihil">Vote For Your Favorite Class Representative</p>
						<div class="wlcome-grid-left-grid">
							<div class="col-xs-8 wlcome-grid-left-grid">
								<h4><b>Retd. Captain R.K. Agarwal Sir</b></h4>
                                    <h4>Director, AKGEC</h4>
								<p>After taking voluntary retirement in 2004, he decided to contribute in the field of technical education and has been the Director of Ajay Kumar Garg Engineering.</p>
							</div>
							<div class="col-xs-4 wlcome-grid-left-grid">
								<img src="images/director_2013.jpg" alt=" " class="img-responsive" style="height:190px">
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="wlcome-grid-left-grid">
							<div class="col-xs-8 wlcome-grid-left-grid">
								<h4><b>Prof. Mr. S.L. Kapoor Sir</b></h4>
                                <h4>Head of Department, MCA Department</h4>
								<p style="text-align:left;padding:50px;padding-top:0px;padding-left:0px">He has 33 years of working experience in Indian Army in planning, execution and operation of Military Networks, including 10 years research experience in Dept. R&D and 10 years teaching in various Military College of Engineering. He has been teaching in this college from 8 years.</p>
                                <img src="images/profslkapoor.JPG" style="margin-left:400px;padding:20px;margin-top:-290px; height:250px"; alt=" " class="auto-style3">
							</div>
							<div class="auto-style2">
								
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
					<div class="services">
						
						<div class="banner-bottom-video-grid-left">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
								 
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								</div>
							  </div>
							  <div class="panel panel-default">
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
								   <div class="panel-body">
									
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
								 
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
								   <div class="panel-body">
								
								  </div>
								</div>
							  </div>
							  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFour">
								 
								</div>
								<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
								   <div class="panel-body">
									
								  </div>
								</div>
							  </div>
							   <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingFive">
								 
								</div>
								<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
								   <div class="panel-body">
									
								  </div>
								</div>
							  </div>
							   <div class="panel panel-default">
								<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
								   <div class="panel-body">
									
								  </div>
								</div>
							  </div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-5 wlcome-grid-right">
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- //body_grids -->
<!-- footer-top -->
	<div class="footer-top">
		<div class="container">
			<div class="footer-grids">
				<figure class="effect-winston">
					<img src="images/mb01.jpg" alt="" class="img-responsive one" />
					<figcaption> 
						<h2>Admin Block <span>AKGEC Campus</span></h2>
					</figcaption>			
				</figure>
				<figure class="effect-winston">
					<img src="images/mb02.jpg" alt="" class="img-responsive one" />
					<figcaption>
						<h2>Lecture Theaters <span>AKGEC Campus</span></h2>
					</figcaption>			
				</figure>
				<figure class="effect-winston">
					<img src="images/aicte.jpg" alt="" class="img-responsive one" style="left: 0px; top: -1px; height: 232px" />
					<figcaption>
						<h2>AICTE <span>Certified</span></h2>
					</figcaption>			
				</figure>
			</div>
		</div>
	</div>
<!-- //footer-top -->
<!-- footer -->

	<div class="footer">
		<div class="container">
			<h3>Google Custom Search</h3>

			<div class="footer-contact">
				<form>
					<input type="text" placeholder="Type Here" required=" ">
					<input type="submit" value="">
				</form>
			</div>
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<p>Ajay Kumar Garg Engineering College,
                        Delhi-Hapur Bypass Road, Adhyatmik Nagar,
                        Ghaziabad-201009,
                        Uttar Pradesh, India
					<a href="mailto:Shobhit6june@gmail.com">Email : Admin AKGEC</a>
					<p>Phone : 0120-2762841, 0120-2761400</p>
				</div>
				<div class="col-md-2 footer-grid">
					<ul>
						<li><a href="Home.aspx">Home</a></li>
						<li><a href="Login.aspx">Login</a></li>
						<li><a href="ContactUs.aspx">Contact</a></li>
						<li><a target="_blank" href="http://www.akgec.in">About</a></li>
					</ul>
				</div>
				<div class="col-md-2 footer-grid">
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="footer-copy">
				<p>All rights reserved | © 2017</p>
			</div>
		</div>
	</div>
            </div>
        </div>
    
        </body>
    </html>
