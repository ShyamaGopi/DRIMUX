<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="User_PersonalDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            width: 83px;
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
				<ul style="line-space:0px;" >
		
					<li><i  aria-hidden="true"></i><b> <h3 class="fa fa-facebook-square">acebook</h3></b></li>
						<div style="align: center; margin-top: -18px; margin-left:25px;">
                            <%--<form action="search">--%>
								<asp:TextBox ID="txt_ser" runat="server" type="text" style="width: 450px; margin-left: 55px;"  ></asp:TextBox>
								
									<li class="dropdown notification-menu">
                                        <asp:LinkButton ID="lb_ser" runat="server" class="fa fa-search" style="margin-left: -4px;"  Width="18px" OnClick="lb_ser_Click"></asp:LinkButton>
									            <ul class="dropdown-menu" style="width:451px; left:-453px;">
                 
           <c:forEach var="mm" items="${s }">
                  <li><a class="media" href="javascript:;">
                 
                      <div class="media-body"><span class="block"> <img src="images/${pic }" onerror="this.src='../UserTemp/images/default.jpg'" height="20" width="20" style="border-radius: 50%;">${mm.fname}<span><span class="text-muted block"><span>
                     
                      </div>  </a></li>
                    
                      </c:forEach>
                
                </ul>
              </li>
                                        <%--</form>--%>
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
	<img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="100" width="100"/><br>
	<label><%=Server.HtmlEncode(Session["name"].ToString())%></label></center>
	
			<li><a href="PersonalDetails.aspx"><span class=""></span>Personal Details</a></li>
                   <li><a href="Work.aspx"><span class=""></span>Work</a></li>

               <li><a href="Interest.aspx"><span class=""></span>Interest</li>
		<li><a href="EditProfile.aspx"><span class=""></span>Edit Profile</a></li>
		
		<li><a href="Settings.aspx"><span class=""></span>Change Password</a></li>
        	
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
<div class="well">






    	<table class="newsleft" style="border-spacing:0 15px;">
            <tr>
                <td>&nbsp;</td>
                <td>Religion</td>
                <td>  <asp:TextBox ID="txt_religion" runat="server" Width="375px"></asp:TextBox>

</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
       
            <tr>
                <td>&nbsp;</td>
                <td>Relation</td>
                <td> <asp:TextBox ID="txt_relation" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
       
            <tr>
                <td>&nbsp;</td>
                <td>Relation with</td>
                <td> &nbsp;<asp:TextBox ID="txt_rwih" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>School</td>
                <td> <asp:TextBox ID="txt_school" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
           
             <tr>
                <td>&nbsp;</td>
                <td>College</td>
                <td> <asp:TextBox ID="txt_college" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
                        <tr>
                <td>&nbsp;</td>
                <td>Location</td>
                <td> <asp:TextBox ID="txt_loc" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
                    <tr>
                <td>&nbsp;</td>
                <td>From</td>
                <td> <asp:TextBox ID="txt_from" runat="server" Width="375px"></asp:TextBox>
</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
        </table>






<%--    	<label>Current Password</label>

    <br />
    <label>New Password</label>

    <br />
    <label>Confirm Password</label>

    <br />--%>


	    <asp:LinkButton ID="lnk_submit" runat="server" OnClick="lnk_submit_Click"  Class="btn btn-primary">Submit</asp:LinkButton>


	<%--<label>what's on your mind?</label>
	<br/>
    <asp:TextBox ID="txt_post" runat="server" TextMode="MultiLine" ></asp:TextBox>

    <br />
    <asp:LinkButton ID="lb_img" runat="server"  class="fa fa-image" OnClick="lb_img_Click" ></asp:LinkButton>
      <asp:LinkButton ID="lb_url" runat="server" class="fa fa-external-link" OnClick="lb_url_Click" ></asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server"  style="padding:0px;text-align:center; margin-left:497px;background:#2b3aa2; color: white;border-color:#2b3aa2;" OnClick="btn_post_Click" Font-Bold="True" Height="26px" Width="51px" >Post</asp:LinkButton>
    <asp:FileUpload ID="fu_img" runat="server" Visible="False" />
  
    <br />
    <asp:TextBox ID="txt_url" runat="server" Visible="False"></asp:TextBox>
     <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%--        <asp:Button ID="btn_post" runat="server" Text="Post"  type="submit"  OnClick="btn_post_Click"  />--%>
    <br />
    <%--<input type="submit" value="Post" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >--%><%--	</form>--%>
    <br />
    <br />
</div>
    <br />
    <br />
     <br />
    <br />
 <br />
    <br />
 <br />
    <br />



</div>


</div>
	<div  style=" padding-top: 10px; width:1285px;
    padding-right: 250px;
    padding-bottom: 10px;
    padding-left: 155px;">
<div class="well">
    <br />
    <br />
    <br />
    <br />


    <%--<form action="allcmt">--%><%--<c:forEach var="i" items="${vap }">
	<img src="images/${i.dp }" onerror="this.src='../UserTemp/images/default.jpg'" height="42" width="42">
	<label>${i.fname }</label>
	<br/>
	<label>${i.post }</label>
	<br/>
	<br/>
<a href="like1?pid=${i.pid }" style="color: #3a4ed5;" class="fa fa-thumbs-o-up">Like</a>&nbsp;&nbsp;
<a href="comment1?pid=${i.pid }" style="color: #3a4ed5;" class="fa fa-comment" onmouseover=setFocusToTextBox()>Comment</a>
&nbsp;&nbsp;<br/>
<c:forEach var="j" items="${vc }">
<label style="color: black;">${j.fname }</label><br>
	<label style="color: red;">${j.cmt }</label><br>
	</c:forEach>--%>
    








    

    <%--   <i class="fa fa-comment" style="color:blue">--%>
<!-- <a href="" style="color: #3a4ed5;" class="fa fa-share">Share</a>
 -->
<br/>
<%--<img src="images/${pic }" onerror="this.src='../UserTemp/images/default.jpg'" height="32" width="32"/>--%>
<%--    <asp:TextBox ID="txt_cmt" name="cmt" placeholder="Write a comment....." width="500px"  runat="server"></asp:TextBox>--%>
<%--    <input type="text" name="cmt" id="cm"placeholder="Write a comment....." style="width: 500px;"/>--%>
<%--    <asp:Button ID="btn_comment" runat="server" Text="Comment" BackColor="#2b3aa2;" ForeColor="white" BorderColor="#2b3aa2;" />--%>
<%--    <button type="submit" name="pid" value="${i.pid }" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >CommentrEach>--%>
    
    <%--   <i class="fa fa-comment" style="color:blue">--%>
</div></div>
		</div>
	</div>
	
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
					<button type="button" class="close" data-dismiss="modal">&times;>&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">LogIn To Your Account</h3>
                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="679px" EnableTheming="True" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                <asp:BoundField DataField="Text" HeaderText="Text" />
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Image") %>' Tooltip='<%# Eval("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" AlternateText='<%# Eval("Image") %>' ImageUrl='<%# Eval("Image") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="100px" Width="100px" />
                </asp:TemplateField>
                <asp:BoundField DataField="MediaType" HeaderText="MediaType" />
                <asp:BoundField DataField="Url" HeaderText="Url" />
                <asp:BoundField DataField="date" HeaderText="date" />
                <asp:BoundField DataField="time" HeaderText="time" />
            </Columns>
        </asp:GridView>--%>
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="User Name" name="Name" required=""/>
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password" required=""/>
							</div>
							<input type="submit" value="Sign In"/>					<%--</form>--%>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>

    </div>
    </form></body>
</html>
