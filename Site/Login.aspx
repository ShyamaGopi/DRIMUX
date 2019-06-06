<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Login.aspx.cs" Inherits="Site_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta charset="utf-8"/>
	<meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="../LoginTemp/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../LoginTemp/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../LoginTemp/css/prettyPhoto.css" rel="stylesheet" type="text/css" />

	<link href="../LoginTemp/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="../LoginTemp/css/fontawesome-all.css" rel="stylesheet"/>
	<!-- //for bootstrap working -->
	<link href="../LoginTemp///fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet"/>
	<link href="../LoginTemp///fonts.googleapis.com/css?family=Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet"/>

</head>

<body>
<form id="form1" runat="server" >
    <div>
<div class="top_header" id="home">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top" >
			<div class="nav_top_fx_w3layouts_agileits">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					    aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					<div class="logo_wthree_agile">
						<img src="../LoginTemp/images/fb.gif" width="250" height="80" /><h1> <i class="navbar-brand"> </i> </h1>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
						<ul class="nav navbar-nav">
							<%--<li><a href="index.html">Home</a></li>
							<li><a href="index.html">About</a></li>
							<li><a href="index.html">Gallery</a></li>
							<li><a href="index.html">Pricing</a></li>--%>
							<li >
                            <p style="color:#fff;">Username </p>   <asp:TextBox ID="txtuname" type="text" runat="server" ValidationGroup="A"></asp:TextBox>
							<%--	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="index.html">Services</a></li>
									<li><a href="index.html">Testimonials</a></li>
								</ul>--%>
							  &nbsp;  
                            </li>
                  

							<li>    <p style="color:#fff;">Password </p><asp:TextBox ID="txt_pwd"  runat="server" TextMode="Password" ValidationGroup="b"></asp:TextBox></li>&nbsp;<%--<asp:Button ID="btn_Login" Class="btn btn-primary"   runat="server" Text="Login" OnClick="btn_Login_Click1"  ValidationGroup="A" /> --%> 

                            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click" Style="display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
    margin-top: 28px;"> Login</asp:LinkButton>
</li>
						</ul>
					</div>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>
	<!-- banner -->
	<%--<div class="banner-inner-page">

	</div>--%>
	<!--//banner -->
	<!--/single-->
	<div class="banner_bottom read_page">
		<div class="container">
<%--			<h3 class="tittle_w3_agileinfo">Some Info</h3>--%>
			<div class="inner_sec_info_w3layouts">
			<%--	<div class="read_img">

					<img src="images/banner2.jpg" alt=" " class="img-responsive">

					<p class="read_para">In consectetur, elit in scelerisque malesuada, tellus leo viverra massa, nec malesuada turpis lectus ac urna. Suspendisse
						ut neque orci. dapibus nibh convallis, semper augue.
						<i>Nunc a urna turpis. Aenean vestibulum elementum nisi. Aenean aliquet nec mi et 
							lacinia. Aliquam maximus iaculis mi elit in scelerisque malesuada, tellus leo viverra massa, sed efficitur orci efficitur nec.</i>						In consectetur, elit in scelerisque malesuada, tellus leo viverra massa, nec malesuada turpis lectus ac urna. Suspendisse
						ut neque orci. Phasellus tellus diam, pulvinar sit amet elit sit amet, fermentum viverra eros. Praesent neque purus,
						rhoncus nec nibh non, mollis sodales odio.</p>
				</div>s--%>
				
                
                <div class="col-md-6 read_img">
                    <h3>Facebook helps you connect and share with the people in your life.</h3>
					<img src="../GwFs3_KxNjS.png" alt=" " class="img-responsive">
				</div>
				<div class="col-md-6 read-img-info" style="margin-left:0px">
				<h2 style="margin-left:150px">Create an account</h2>
                    <h4 style="margin-left:150px">It's free and always will be.</h4>
                    <br />
                    <div class="form-horizontal"  > 
                        
                        <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">	
                                           <asp:TextBox ID="txt_firstname" PlaceHolder="Firstname" runat="server" Width="239px" style="margin-left:150px" required=""  ValidationGroup="b"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
                                  <asp:TextBox ID="txt_lname" PlaceHolder="Surname" runat="server" Width="239px" style="margin-left:150px" required=""  ValidationGroup="b"></asp:TextBox>
                                           <br /><br />
 
       </div>
                                </div>
                            </div>

                         <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:RadioButtonList ID="rbl_gender"  runat="server" Height="21px" RepeatDirection="Horizontal" Width="254px" style="margin-left:150px" ValidationGroup="b">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
       </div>
                                </div>
                            </div>
                        <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:TextBox ID="txt_dob"   runat="server" TextMode="Date" Width="233px" style="margin-left:150px"  ValidationGroup="b"></asp:TextBox>
       </div>
                                </div>
                            </div>
                         <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:TextBox ID="txt_email"  PlaceHolder="mail@gmail.com" type="email" runat="server" Width="238px" style="margin-left:150px"  ValidationGroup="b" ></asp:TextBox>
       </div>
                                </div>
                            </div>
                        
                         <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:TextBox ID="txt_mobile"  PlaceHolder="1234567890" MaxLength="10" runat="server" Width="233px" style="margin-left:150px" ValidationGroup="b"></asp:TextBox>
       </div>
                                </div>
                            </div>

                        <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:TextBox ID="txt_uname1"  PlaceHolder="username" runat="server" Width="233px" style="margin-left:150px"  AutoPostBack="true" OnTextChanged="txt_uname1_TextChanged" ValidationGroup="b"></asp:TextBox>
       </div>
                                </div>
                            </div>
                        <div class="form-group">    
                            <div class="col-md-8">
								<div class="input-group">
                                    <asp:TextBox ID="txt_pwd1"  PlaceHolder="***********" runat="server" TextMode="Password" Width="233px" style="margin-left:150px"  ValidationGroup="b"></asp:TextBox>
       
                                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
       
                                </div>
                                </div>
                            </div>


                        </div>

					<div>
                        <asp:Button ID="btn_signup" class="btn btn-success" runat="server" Text="Sign Up" Width="165px" style="margin-left:150px" OnClick="btn_signup_Click" ValidationGroup="b"/>
<%--						<a class="btn btn-primary btn-lg" href="index.html" role="button">Back to Home</a>--%>
					</div>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
	</div>
        	
    </div>
    </form>
	<!--//single-->
	<!-- footer -->
	<div class="footer" id="contact">
		<div class="footer_inner_info_wthree_agileits">
			<!--/tabs-->
			<div class="responsive_tabs">
				<div id="horizontalTab">
					<ul class="resp-tabs-list">
						<li>Contact Info</li>
						<li>Send Message</li>
						<li>View Map</li>
					</ul>
					<div class="resp-tabs-container">
						<!--/tab_one-->
						<div class="tab1">
							<div class="tab-info">

								<div class="address">
									<div class="col-md-4 address-grid">
										<div class="address-left">
											<div class="dodecagon f1">
												<div class="dodecagon-in f1">
													<div class="dodecagon-bg f1">
														<span class="fas fa-phone-volume" aria-hidden="true"></span>
													</div>
												</div>
											</div>
										</div>
										<div class="address-right">
											<h6>Phone Number</h6>
											<p>+1 234 567 8901,+1 234 567 8901</p>

										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="col-md-4 address-grid">
										<div class="address-left">
											<div class="dodecagon f1">
												<div class="dodecagon-in f1">
													<div class="dodecagon-bg f1">
														<span class="far fa-envelope" aria-hidden="true"></span>
													</div>
												</div>
											</div>
										</div>
										<div class="address-right">
											<h6>Email Address</h6>
											<p>Email :<a href="mailto:example@email.com"> mail@example.com</a></p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="col-md-4 address-grid">
										<div class="address-left">
											<div class="dodecagon f1">
												<div class="dodecagon-in f1">
													<div class="dodecagon-bg f1">
														<span class="fas fa-map-marker-alt" aria-hidden="true"></span>
													</div>
												</div>
											</div>
										</div>
										<div class="address-right">
											<h6>Location</h6>
											<p>Broome St, NY 10002,California, USA.

											</p>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<!--//tab_one-->
						<div class="tab2">

							<div class="tab-info">
								<div class="contact_grid_right">
									<h6>Please fill this form to contact with us.</h6>
							<%--	<form action="#" method="post" id="form1" runat="server">--%>
										<%--<div class="contact_left_grid">
											<input type="text" name="Name" placeholder="Name" required="">
											<input type="email" name="Email" placeholder="Email" required="">

											<input type="text" name="Telephone" placeholder="Telephone" required="">
											<input type="text" name="Subject" placeholder="Subject" required="">
											<textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
											<input type="submit" value="Submit">
											<input type="reset" value="Clear">
											<div class="clearfix"> </div>
										</div>--%>
									<%--</form>--%>
								</div>
							</div>
						</div>
						<!--//tab_two-->
						<div class="tab3">

							<div class="tab-info">
								<div class="contact-map">

									<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100949.24429313939!2d-122.44206553967531!3d37.75102885910819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2sSan+Francisco%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1472190196783"
									    class="map" style="border:0" allowfullscreen=""></iframe>
								</div>

							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!--//tabs-->
			<div class="clearfix"> </div>
			<ul class="social-nav model-3d-0 footer-social social two">
				<li>
					<a href="#" class="facebook">
						<div class="front"><i class="fab fa-facebook-f" aria-hidden="true"></i></div>
						
					</a>
				</li>
				<li>
					<a href="#" class="twitter">
						<div class="front"><i class="fab fa-twitter" aria-hidden="true"></i></div>
						
					</a>
				</li>
				<li>
					<a href="#" class="instagram">
						<div class="front"><i class="fab fa-instagram" aria-hidden="true"></i></div>
						
					</a>
				</li>
				<li>
					<a href="#" class="pinterest">
						<div class="front"><i class="fab fa-linkedin" aria-hidden="true"></i></div>
					
					</a>
				</li>
			</ul>
			<p class="copy-right">2018 © Relief. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div>
	<!-- //footer -->
	<script type="text/javascript" src="../LoginTemp/js/jquery-2.2.3.min.js"></script>
	<script src="../LoginTemp/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script type="text/javascript" src="../LoginTemp/js/bootstrap.js"></script>

	<script type="text/javascript" src="../LoginTemp/js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
	<!-- script for responsive tabs -->
	<script src="../LoginTemp/js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="../LoginTemp/js/easing.js"></script>
	<script type="text/javascript" src="../LoginTemp/js/move-top.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll, .navbar li a, .footer li a").click(function (event) {
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>

