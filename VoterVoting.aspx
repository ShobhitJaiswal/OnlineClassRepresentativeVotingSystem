<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VoterVoting.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

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
            width: 800px;
        }
        .auto-style3 {
            width: 800px;
            text-align: center;
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
					<a href="index.html"><img src="images/1499925698AjayKumarGargEngineeringCollege.png" alt=" " class="auto-style1" /></a>
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
							<li><a href="#"><strong>About</strong></a></li>
							<li><a href="#"><strong>Contact Us</strong></a></li>
						</ul>
					</div><!-- /.navbar-collapse -->	
					
				</nav>
			</div>
		</div>
	</div>
    <div class="contact">
        <div class="container">
        <div class="col-md-5">
            <div class="col-md-7 contact-right">
        <table cellpadding="5" cellspacing="5" class="nav-justified">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="User Name" Font-Size="Large" ForeColor="Red" Width="400px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="Black" Width="400px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Course" Font-Size="Large" ForeColor="Red" Width="400px"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="42px" Width="400px">
                        <asp:ListItem>Choose Course</asp:ListItem>
                        <asp:ListItem>B.Tech</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Secret Key" Font-Size="Large" ForeColor="#000099" Width="400px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" ForeColor="#000099" TextMode="Password" Width="400px" Height="42px" Wrap="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" Width="400px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
            </div>
            </div>
        </div>
    </form>
    </body>
    </html>