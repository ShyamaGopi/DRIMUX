<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Corporation Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
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
	
	<link href="../UserTemp/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../UserTemp/cs1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../UserTemp/cs1/font-awesome.css" rel="stylesheet"/>
	<!-- //for bootstrap working -->
	
	<link href="../UserTemp///fonts.googleapis.com/css?family=Nunito+Sans:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet"/>
	<link href="../UserTemp///fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet"/>
		
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 131px;
            left: 258px;
            height: 24px;
        }
        </style>
	
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="header">
	<div class="agileits_top_menu">
		<div class="container">
	<div class="w3l_header_left">
				<ul style="line-space: 0px;" >
		
					<li><i  aria-hidden="true"></i><b> <h3 class="fa fa-facebook-square">acebook</h3></b></li>
						<div style="align: center; margin-top: -18px; margin-left:25px;">
							<div >

								<asp:TextBox ID="txt_ser" runat="server" type="text" style="width: 450px; margin-left: 55px;"  ></asp:TextBox>
								
									<li class="dropdown notification-menu">
                                        <asp:LinkButton ID="lb_ser" runat="server" class="fa fa-search" style="margin-left: -4px;" Width="18px" OnClick="lb_ser_Click"></asp:LinkButton>
									            <ul class="dropdown-menu" style="width:451px; left:-453px;">
                 
           <c:forEach var="mm" items="${s }">
                  <li><a class="media" href="javascript:;">
                 
                      <div class="media-body"><span class="block"> <img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='images/default.jpg'" height="20" width="20" style="border-radius: 50%;"/>${mm.fname}<span><span class="text-muted block"><span>
                     
                      </div>  </a></li>
                    
                      </c:forEach>
                
                </ul>
              </li>
							</div>
						</div>
					
						<div style="margin-top: -18px; margin-left: 655px;">
<img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="20" width="20" style="border-radius: 50%;">
					<li><i class="" aria-hidden="true"></i><a href="Profile1.aspx"><%=Server.HtmlEncode(Session["name"].ToString())%>
										<li><i class="" aria-hidden="true"></i> <a href="UserHome.aspx">Home</a></li>
										
 <li class="dropdown notification-menu"><a class="fa fa-users" href="Friends.aspx"  aria-expanded="false"></a>
                <ul class="dropdown-menu" style="width: 309px;">
                    <%-- <form action="freq">--%>
                 <%-- <li class="not-head" style="color: black;">Friend Requests</li>
           <c:forEach var="mm" items="${fr }">
                  <li><a class="media" href="javascript:;"><span class="media-left media-icon"><span class="fa-stack fa-lg">
                  <img src="<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="40" width="40" style="border-radius: 50%;">
                  </span></span>
                      <div class="media-body"><span class="block">${mm.fname} </span><span class="text-muted block"></span>&nbsp;&nbsp;
                      <button type="submit" value="${mm.id }" name="id" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >confirm</button>
                       <input type="submit" value="delete" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >
                     
                      </div>  </a></li>
                    
                      </c:forEach>--%>
                      <%-- </form>--%><%-- <form action="pymay">--%>
                  <%--<li class="not-footer" style="color: black;">people you may know</li>
                  <c:forEach var="mm" items="${pyn }">
                  <li><a class="media" href="javascript:;"><span class="media-left media-icon"><span class="fa-stack fa-lg">
                  <img src="<%=Server.HtmlEncode(Session["Image"].ToString())%>"onerror="this.src='../UserTemp/images/default.jpg'" height="40" width="40" style="border-radius: 50%;">
                  </span></span>
                      <div class="media-body"><span class="block">${mm.fname}</span><span class="text-muted block"></span>&nbsp;&nbsp;
                      <button type="submit" name="id" value="${mm.id }" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >Add Friend</button>
                       <button type="submit" name="rid" value="${mm.id }" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >Remove</button>
                     
                      </div>  </a></li>
                      
                      </c:forEach>--%>
                      <%--</form>--%>
                </ul>
              </li>


                        <li> <a class="fa fa-power-off" href="../Site/Logout.aspx" ></a></li>
									<%--<li class="dropdown notification-menu"><a class="fa fa-globe" href="FriendRequest.aspx" data-toggle="dropdown" aria-expanded="false"></a>
                <ul class="dropdown-menu" style="width:200px;">--%>
                 
          <%-- <c:forEach var="mm" items="${vn}">
                  <li><a class="media" href="javascript:;">
                      <div class="media-body"><span class="block">${mm.fname} </span>&nbsp;&nbsp;&nbsp;write a bad comment on your post<span class="text-muted block"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <input type="submit" value="allow" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >
                       <input type="submit" value="block" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >
                     
                      </div>  </a></li>
                    
                      </c:forEach>
                --%>
                </ul>
              </li>
										<%-- <li class="dropdown">
								<a href="../Site/Logout.aspx" class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="settings" class="fa fa-wrench" style="text-transform: lowercase; ">Settings</a></li>
									<li><a href="../Site/Logout.aspx" class="fa fa-power-off"  style="text-transform: lowercase; ">Logout</a></li>
								</ul>
							</li>--%></div>
				</ul>
				
			</div>
			
		
			
		</div>
		
	</div>
	
	<div class="row">
<div style="height: 300px; width: 150px;">

<div id="sidebar" class="span3" >
<div class="well">
	<ul class="nav nav-list">
	
	<center>
	<img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'"  height="100" width="100">
	<label><%=Server.HtmlEncode(Session["name"].ToString())%></label></center>
	
			<li><a href="Profile1.aspx"><span class=""></span>Profile</a></li>
                		<li><a href="BadComment.aspx"><span class=""></span>Bad Comment</a></li>

                   <li><a href="Search.aspx"><span class=""></span>Search</a></li>

               <li><a href="FriendRequest.aspx"><span class=""></span>Friend Request</a></li>
		<li><a href="Friends.aspx"><span class=""></span>Friends</a></li>
		
		<li><a href="Settings.aspx"><span class=""></span>settings</a></li>
        	<li><br></li>
        	<li><br></li>
		<li><br></li>
			
		<%--<li> <asp:FileUpload ID="FileUpload1"  runat="server" /> <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1"  /></li>--%>
        	<li><br></li>
		<li><br></li>
			<li><br></li>
        	<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		<li><br></li>
		  	<li><br></li>
		  		<li><br></li>
        	<li><br></li>
		<li><br></li>
		<li><br></li>
		
		</ul>
		
</div>
</div>
 

<div  style=" padding-top: 0px; width:1285px;
    padding-right: 250px;
    padding-bottom: 0px;
    padding-left: 155px;">


	<div>
	<br>
	<div>


	<img src="../Bgimg/<%=Server.HtmlEncode(Session["BGimg"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="200" width="800" style="margin-top: -170px;"/>
&nbsp;
        
      
    <%--    
        <asp:FileUpload ID="FileUpload2" runat="server" style="position: absolute; background-color:white;color:white;border-color:black;
   top: 130px;
    left: 157px; width: 102px;" />--%>
	<%--<input type="file"  name="file"  style=" position: absolute; background-color:white;color:white;border-color:black;
   top: 131px;
    left: 157px; width: 102px;" />
    --%>
        <%--<asp:Button ID="btn_submit1" runat="server" name="upcover" style=" position: absolute; background-color:black;color:white;;
  	
   top: 131px;
    left: 258px; height:24px; "   /><span class="fa fa-camera" style="color:gray; margin-left:100px; margin-bottom:-5px;"></span>--%>

<%--        <asp:ImageButton ID="ImageButton1" type="submit" runat="server" ImageUrl="~/camera-icon-21.png" style=" background-color:white;color:black;border-color:black;" CssClass="auto-style1" />--%>

      
	</div>
	</div>
	
<%--<form id="form1" runat="server" action="uploadprofilepic" method="post" enctype="multipart/form-data">--%>
	<div style="margin-top: -62px;">
	<img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="100" width="100" /></div>
 <%--   <asp:Button ID="btn_upload" runat="server" Text="Button" />--%>
    <%--<input type="file"  name="file"  style=" position: absolute; background-color:white;color:white;border-color:black;
   top: 290px;
    left: 140px; width: 102px;" />
	<button name="upprofile" style=" position: absolute; background-color:black;color:white;border-color:black;
   top: 290px;
   left:207px;
    " class="fa fa-camera"><br> </button>--%><%--</form>--%>
    <a href="Timeline.aspx"style=" position: absolute; background-color:white;color:blue;border-color:white;
   top: 309px;
   left:300px;
    " class=""/>Timeline</a>
    <a href="About.aspx"style=" position: absolute; background-color:white;color:blue;border-color:white;
   top: 309px;
   left:400px;
    " class="">About</a>
    <a href="Friends.aspx"style=" position: absolute; background-color:white;color:blue;border-color:white;
   top: 309px;
   left:500px;
    " class="">Friends</a>
	<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


</div>

</div>
	<div  style=" padding-top: 10px; width:1285px;
    padding-right: 250px;
    padding-bottom: 10px;
    padding-left: 155px;">
<div class="well">
<%--<form action="postcmt">--%>
	<!--  <img src="images/3.jpg" onerror="this.src='images/default.jpg'" height="42" width="42">
	<label>fdrlkjuu</label>-->
	
	<br/>
    <br />
    <asp:TextBox ID="txt_search" runat="server" Width="554px"></asp:TextBox>
    
    <asp:LinkButton ID="lb_search" runat="server" Style="font-weight:bold;" Class="fa fa-search" OnClick="lb_search_Click"></asp:LinkButton>
    
<%--    <asp:Button ID="btn_serach" runat="server" action="post" Text="Search" OnClick="btn_serach_Click" />--%>
    <br />
    <br />
	<asp:DataList ID="DataList1" runat="server"  RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand"  >
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td><span class="block"><span><span class="text-muted block">
                            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Image") %>' Width="100px" Style="border-radius:50%;" />
                            </span></span></span></td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Firstname") %>'></asp:Label>
                        </td>
                       
                        <td>
<%--                            <asp:Button ID="Button1"  Text="Send Request" CommandArgument='<%# Eval("USERID") %>' CommandName="Request" runat="server"/>--%>
                            <asp:LinkButton ID="LinkButton2" type="submit" runat="server"  CommandArgument='<%# Eval("USERID") %>' CommandName="Request">Send Request</asp:LinkButton>
                        </td>
                        <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      </form>
<%--</form>--%>



<%--</div></div>
		</div>
	</div>--%>
       
	
<!-- banner -->

<!--//banner -->

	
<!-- contact -->
<section class="contact" id="contact">
	<div class="container">
		
		<div class="contact-grids">
			
		</div>
	</div>
</section>
<!-- //contact -->


<!-- /newsletter-->
	
<!-- //newsletter-->

<!-- footer -->


<!-- //footer -->


	<!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">LogIn To Your Account</h3>
<%--						<form action="#" method="post">--%>
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="User Name" name="Name" required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required="">
							</div>
							<input type="submit" value="Sign In">
<%--						</form>--%>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->

	 
	
	<!-- js -->
	<script type="text/javascript" src="../UserTemp/jss/jquery-2.1.4.min.js"></script>

	<script type="text/javascript" src="../UserTemp/jss/bootstrap-3.1.1.min.js"></script>
	
	<!-- stats -->
	<script src="../UserTemp/jss/jquery.waypoints.min.js"></script>
	<script src="../UserTemp/jss/jquery.countup.js"></script>
	<script>
		$('.counter').countUp();
	</script>
	<!-- //stats -->

	<!-- owl carousel -->
	<script src="../UserTemp/jss/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({

				autoPlay: 3000, //Set AutoPlay to 3 seconds
				autoPlay: true,
				items: 3,
				itemsDesktop: [991, 2],
				itemsDesktopSmall: [414, 4]

			});
		}); 
	</script>
	<!-- //owl carousel -->
<script src="../UserTemp/jss/responsiveslides.min.js"></script>
	<script>
		$(function () {
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: true,
				speed: 1000,
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

<!-- Flex slider-script -->
	<script defer src="../UserTemp/jss/jquery.flexslider.js"></script>
		<script type="text/javascript">
		
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
<!-- //Flex slider-script -->
<!-- start-smooth-scrolling -->
	<script src="../UserTemp/jss/move-top.js"></script>
	<script src="../UserTemp/jss/easing.js"></script>
	<%--<script>
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>--%>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
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
<script>
function setFocusToTextBox(){
    //document.getElementById("cm").focus();
    $("#cm").focus();
  //  cm.focus();
}
</script>
	
	<!-- //smooth-scrolling-of-move-up -->
	
	<!-- smooth scrolling js -->
	<script src="../UserTemp/jss/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling js -->

    </div>
  
        
        
        
        
        
        
        
    
  <%--  </div>
    </form>--%>
</body>
</html>
