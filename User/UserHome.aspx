<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="User_UserHome" %>

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
	   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1" style="color:red">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <script src="../sweetalert.min.js"></script>
	<link href="../UserTemp/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../UserTemp/cs1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="../UserTemp/cs1/font-awesome.css" rel="stylesheet"/>
	<!-- //for bootstrap working -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
    rel="stylesheet" type="text/css" />



	<link href="../UserTemp///fonts.googleapis.com/css?family=Nunito+Sans:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet"/>
	<link href="../UserTemp///fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet"/>
      <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            color: #3366CC;
        }
        .auto-style5 {
            width: 95px;
        }
        .auto-style6 {
            height: 20px;
            width: 95px;
        }
        .auto-style8 {
            height: 81px;
            width: 95px;
        }
        .auto-style10 {
            width: 101%;
            margin-right: 0px;
        }


          .auto-style11 {
              height: 81px;
          }
          .auto-style12 {
              height: 28px;
          }


        </style>
   


              <script>

                  $(document).ready(function () {
                  

          $("#LinkButton8").click(function () {

            $("#FileUpload1").fadeToggle();
            


          });

       

                  });
    </script>
      <script type="text/javascript">
          function myFunction() {
              alert('Hi');
          }
      </script>



   



</head>
<body>
    <form id="form1" runat="server">
    <div>
    	<!-- header -->
<div class="header">
	<div class="agileits_top_menu">
		<div class="container">
		<div class="w3l_header_left">
				<ul style="line-space: 0px;" >
		
					<li><i  aria-hidden="true"></i><b> <h3 class="fa fa-facebook-square" h>acebook</h3></b></li>
						<div style="align: center; margin-top: -18px; margin-left:25px;">
                            <%--<form action="search">--%><%--								<input type="text" style="width: 450px; margin-left: 55px;"  name="srh"/>--%>
								<asp:TextBox ID="txt_ser" runat="server" type="text" style="width: 450px; margin-left: 55px;"  ></asp:TextBox>
									<li class="dropdown notification-menu">
                                        

                                        <asp:LinkButton ID="lb_ser" runat="server" class="fa fa-search" style="margin-left: -4px;" OnClick="lb_ser_Click" Width="18px"></asp:LinkButton>
                                        

<%--                                        <button type="submit" class="fa fa-search" style="height: 28px;margin-left: -16px;"></button>--%>
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

   

    <div>






						<div style="margin-top: -18px; margin-left: 655px;">
<img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="20" width="20" style="border-radius: 50%;">
					<li><i class="" aria-hidden="true"></i><a href="Profile1.aspx"><%=Server.HtmlEncode(Session["name"].ToString())%>
										<li><i class="" aria-hidden="true"></i> <a href="UserHome.aspx">Home</a></li>
										
 <li class="dropdown notification-menu"><a class="fa fa-users" href="Friends.aspx"  aria-expanded="false"></a>
                <ul class="dropdown-menu" style="width: 309px;">
                    <%-- <form action="freq">--%>                 <%-- <li class="not-head" style="color: black;">Friend Requests</li>
           <c:forEach var="mm" items="${fr }">
                  <li><a class="media" href="javascript:;"><span class="media-left media-icon"><span class="fa-stack fa-lg">
                  <img src="<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="40" width="40" style="border-radius: 50%;">
                  </span></span>
                      <div class="media-body"><span class="block">${mm.fname} </span><span class="text-muted block"></span>&nbsp;&nbsp;
                      <button type="submit" value="${mm.id }" name="id" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >confirm</button>
                       <input type="submit" value="delete" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >
                     
                      </div>  </a></li>
                    
                      </c:forEach>--%>
                      <%-- </form>--%><%-- <form action="pymay">--%>                  <%--<li class="not-footer" style="color: black;">people you may know</li>
                  <c:forEach var="mm" items="${pyn }">
                  <li><a class="media" href="javascript:;"><span class="media-left media-icon"><span class="fa-stack fa-lg">
                  <img src="<%=Server.HtmlEncode(Session["Image"].ToString())%>"onerror="this.src='../UserTemp/images/default.jpg'" height="40" width="40" style="border-radius: 50%;">
                  </span></span>
                      <div class="media-body"><span class="block">${mm.fname}</span><span class="text-muted block"></span>&nbsp;&nbsp;
                      <button type="submit" name="id" value="${mm.id }" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >Add Friend</button>
                       <button type="submit" name="rid" value="${mm.id }" style="background: #2b3aa2; color: white;border-color:#2b3aa2; " >Remove</button>
                     
                      </div>  </a></li>
                      
                      </c:forEach>--%>                      <%--</form>--%>
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
	
			<li><a href="Profile1.aspx"><span class=""></span>Profile</a></li>
        		<li><a href="BadComment.aspx"><span class=""></span>Bad Comment</a></li>

                   <li><a href="Search.aspx"><span class=""></span>Search</a></li>

               <li><a href="FriendRequest.aspx"><span class=""></span>Friend Request</a></li>
		<li><a href="Friends.aspx"><span class=""></span>Friends</a></li>
		
		<li><a href="Settings.aspx"><span class=""></span>settings</a></li>
        	
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
 
	<label></label>
	<br/><img src="../Profilepic/<%=Server.HtmlEncode(Session["Image"].ToString())%>" onerror="this.src='../UserTemp/images/default.jpg'" height="40" width="40" style="border-radius: 50%;margin-top:-47px">
    <asp:TextBox ID="txt_posts" runat="server" TextMode="MultiLine" Style="height: 41px;border-radius: 268px;"  AutoPostBack="true" ></asp:TextBox>

    <asp:LinkButton ID="LinkButton7" runat="server" placeholder="what's on your mind?" Style="margin-left: -585px;margin-top: 21px;position: absolute;"  data-toggle="modal" data-target="#myModal">write something here ......?</asp:LinkButton>
    <%--     <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Large Modal</button>--%>
    
    
     <div class="modal fade" id="myModal" role="dialog">
    
        <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header" style="background-color:#5bc0de" style="color:red">
          <button type="button" class="close"  data-dismiss="modal" style="color:red">&times;</button>
          <h4 class="modal-title" style="color:black">Creat  a Post</h4>
        </div>
        <div class="modal-body">
          <p>
                <asp:TextBox ID="txt_post" runat="server" TextMode="MultiLine" placeholder="what's on your mind?" ></asp:TextBox>

    <br />





     <a href="#" ID="LinkButton8" runat="server" class="fa fa-image"  ></a>

  <%--  <asp:LinkButton ID="LinkButton8" runat="server"  class="fa fa-image"   ></asp:LinkButton>--%> <%--     <asp:LinkButton ID="LinkButton9" runat="server" class="fa fa-external-link"  ></asp:LinkButton>--%>
    <asp:LinkButton ID="LinkButton10" runat="server"  style="padding:0px;text-align:center; margin-left:497px;background:#2b3aa2; color: white;border-color:#2b3aa2;" OnClick="btn_post_Click" Font-Bold="True" Height="26px" Width="51px" >Post</asp:LinkButton>
    <asp:FileUpload ID="FileUpload1" runat="server" style="display:none;" />
  
    <br />
                <%--    <asp:TextBox ID="txt_post" runat="server"  style="display:none;" ></asp:TextBox>--%>
         </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal" >Close</button>
        </div>
      </div>
    </div>
  </div>
    <%--<div id="modal_dialog" style="display: none;    width: 729px;
    min-height: 0px;
    height: 225px;">
        <div class="well">
 
	<label>what's on your mind?</label>
	<br/>
  

 
</div>
--%>






























<%--        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:LinkButton ID="LinkButton1" runat="server" >LinkButton</asp:LinkButton>--%>


        </div>
    
     <br />
    <asp:LinkButton ID="lb_img" runat="server"  class="fa fa-image" OnClick="lb_img_Click" ></asp:LinkButton>
      <asp:LinkButton ID="lb_url" runat="server" class="fa fa-external-link" OnClick="lb_url_Click" ></asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server"  style="padding:0px;text-align:center; margin-left:497px;background:#2b3aa2; color: white;border-color:#2b3aa2;" OnClick="btn_post_Click" Font-Bold="True" Height="26px" Width="51px" >Post</asp:LinkButton>
    <asp:FileUpload ID="fu_img" runat="server" Visible="False" />
  
    <br />
    <asp:TextBox ID="txt_url" runat="server" Visible="False"></asp:TextBox>
     <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

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
  

  
    <asp:DataList ID="DataList1" runat="server" Height="2146px" Width="706px" CellPadding="0" style="height: 330px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" >
            
         <ItemTemplate>
           
            <table class="auto-style10">
               
                <tr>
                    <td class="auto-style5" rowspan="3" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                 
                        <asp:Image ID="img_propic" runat="server"  Height="50px" Width="60px" Style="border-radius:50%" ImageUrl='<%# Eval("profilepic") %>' />
                        </span></span></span></td>
                    <td colspan="3" class="auto-style12" style="background-color: #FFFFFF">
                        <span class="block"><span><span class="text-muted block">
                        <asp:Label ID="lbl_name" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="#0000CC" Text='<%# Eval("Firstname") %>'></asp:Label>
                        </span></span></span>
                    </td>
                    <td colspan="2" class="auto-style12" style="background-color: #FFFFFF"></td>
                </tr>
                <tr>
                    <td colspan="3" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        <strong>
                        <asp:Label ID="lbl_shared" runat="server" CssClass="auto-style2" ForeColor="Black" Text='<%# Eval("sharedstatus") %>'></asp:Label>
                        </strong>
                        </span></span></span></td>
                    <td colspan="2" style="background-color: #FFFFFF">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        <asp:Label ID="lbl_date" runat="server" Text='<%# Eval("date","{0:dd MMM yyyy}") %>'></asp:Label>
                        &nbsp;at&nbsp;
                        <asp:Label ID="lbl_time" runat="server" Text='<%# Eval("time","{0:hh:mm tt}") %>'></asp:Label>
                        &nbsp;</span><i class="fa fa-globe" aria-hidden="true"></i></span></span></td>
                    <td class="auto-style1" colspan="2" style="background-color: #FFFFFF"></td>
                </tr>
                <tr>
                    <td colspan="4" style="background-color: #FFFFFF">
                        &nbsp;</td>
                    <td colspan="2" style="background-color: #FFFFFF">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #FFFFFF">&nbsp;</td>
                    <td class="auto-style1" colspan="3" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        <asp:Label ID="lbl_ppost" runat="server" ForeColor="Black" Text='<%# Eval("Text") %>'></asp:Label>
                        </span></span></span></td>
                    <td class="auto-style1" colspan="2" style="background-color: #FFFFFF"></td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="3" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="2" style="background-color: #FFFFFF">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6" class="agile_count_grid_left" style="background-color: #FFFFFF">
 <asp:Image ID="img_photo" runat="server"   ImageUrl='<%# Eval("Image") %>'  Visible='<%# Eval("Image")==DBNull.Value ? false: true %>'  Width="332px" BorderStyle="None" />
         
<%--                                         <asp:Image ID="img_photo" runat="server" Height="76px" Visible='<%# Eval("Image")==DBNull.Value ? false: true %>'  --%>
 
  <%--                      <asp:Image ID="img_photo1" runat="server" Height="76px" ataItem(Eval("Image")) %>' Width="203px" BorderStyle="None" />--%>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="3" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="2" style="background-color: #FFFFFF">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #FFFFFF">
                       <%-- <span class="block"><span><span class="text-muted block"><i class="fa fa-thumbs-up">
                        <asp:Label ID="lbl_likcount" runat="server" Text='<%# Eval("TotalLikes") %>'></asp:Label>
                        </i></span></span></span>--%>
                    </td>
                    <td class="auto-style1" style="background-color: #FFFFFF">
                       <%-- <span class="block"><span><span class="text-muted block"><i class="fa fa-share">
                        <asp:Label ID="lbl_share_count" runat="server" Text='<%# Eval("TotalShare") %>'></asp:Label>
                        </i></span></span></span>--%>

                    </td>
                    <td class="auto-style1" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
<%--                        <i class="fa fa-comment">
                        <asp:Label ID="lbl_comment_count" runat="server" Text='<%# Eval("TotalComment") %>'></asp:Label>
                        </i></span></span></span>--%>

                    </td>
                    <td class="auto-style1" style="background-color: #FFFFFF"></td>
                    <td class="auto-style1" style="background-color: #FFFFFF"></td>
                    <td class="auto-style1" style="background-color: #FFFFFF"></td>
                </tr>
                <tr>
                    <td class="auto-style8" style="background-color: #FFFFFF">
                      <asp:Label ID="lbl_likcount" runat="server" Text='<%# Eval("TotalLikes") %>'></asp:Label>  <i class="fa fa-thumbs-up" style="color:blue">

<%--              <asp:LinkButton ID="lb_longlat" runat="server" CommandArgument='<%# Eval("Placeid") %>' CommandName="det" Class="btn btn-success" OnClick="lb_longlat_Click" >Go</asp:LinkButton>--%>

                        <asp:LinkButton ID="LinkButton1" CommandArgument='<%# Eval("MediaId") %>' CommandName="like"   runat="server">like</asp:LinkButton>
                        </i></td>
                    <td class="auto-style11" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        
                        <asp:Label ID="lbl_share_count" runat="server" Text='<%# Eval("TotalShare") %>'></asp:Label>
                        <%--   <i class="fa fa-comment" style="color:blue">--%><i class="fa fa-share" style="color:blue">
                       
                         <asp:LinkButton ID="LinkButton3" CommandArgument='<%# Eval("MediaId") %>' CommandName="share"   runat="server">Share</asp:LinkButton>
                        </i></span></span></span></td>
                    <td class="auto-style11" style="background-color: #FFFFFF">
                        <span class="block"><span><span class="text-muted block">
                             <asp:Label ID="lbl_comment_count" runat="server" Text='<%# Eval("TotalComment") %>'></asp:Label>
                            <i class="fa fa-comment" style="color:blue">

                                <asp:LinkButton id="bb" runat="server" CommandName="cmt" CommandArgument='<%# Eval("MediaId") %>' >Comment</asp:LinkButton>



                                    <%-- <a href="#" id="btnShow" runat="server" class="fa fa-image" value="Show Popup"  ></a>--%>
                       <%--          <input type="button" id="btnShow" value="Show Popup" />--%>
<%--                        <asp:LinkButton ID="btnShow" runat="server" CommandName="cmt" CommandArgument='<%# Eval("MediaId") %>' >Comment</asp:LinkButton>--%>
                        </i>

                            
                                                  </span></span></span></td>
                    <td class="auto-style11" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        <asp:Label ID="lbl_rmr_count" runat="server" Text='<%# Eval("TotalSpame") %>'></asp:Label>
                        </><i class="fa fa-registered" style="color:blue">
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("MediaId") %>' CommandName="rumor">Rumor</asp:LinkButton>
                        </i></span></span></span></td>
                    <td class="auto-style11" style="background-color: #FFFFFF"><span class="block"><span><span class="text-muted block">
                        <asp:Label ID="lbl_nonrmmr_count" runat="server" Text='<%# Eval("TotalNonSpame") %>'></asp:Label>
                        </i><i class="fa fa-exclamation-triangle" style="color:blue">
                        <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument='<%# Eval("MediaId") %>' CommandName="non-rumor">Non Rumor</asp:LinkButton>
                        </i></span></span></span></td>
                    <td class="auto-style11" style="background-color: #FFFFFF"></td>
                </tr>
                                <tr>
                    <td class="auto-style5" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="3" style="background-color: #FFFFFF">&nbsp;</td>
                    <td colspan="2" style="background-color: #FFFFFF">&nbsp;</td>
                </tr>
                                <tr>
                    <td colspan="6">
                
                                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td colspan="3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
         
        </ItemTemplate>
           
    </asp:DataList>

    <div id="cmnt"  align = "center" runat="server"  visible="false">
            <asp:DataList ID="dtlcmnt" runat="server"  Height="2146px" Width="706px" CellPadding="0" style="height: 330px"  >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server"  Height="64px" ImageUrl='<%# Eval("Image") %>' Width="60" style="border-radius:50%"/>
                        </td>
                        <td>
                            <span class="block"><span><span class="text-muted block">
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Firstname") %>'></asp:Label>
                            </span></span></span>&nbsp;&nbsp;&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td><span class="block"><span><span class="text-muted block">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Comment") %>'></asp:Label>
                            </span></span></span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td> </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
              
        </asp:DataList>




  <asp:TextBox ID="txt_comments" placeholder="Write a comment....." runat="server" Height="30px" Width="526px" OnClick="this.value=''"    ></asp:TextBox>
  <asp:LinkButton ID="LinkButton6" CommandArgument='<%# Eval("MediaId") %>' CommandName="Comment" Style="text-align:center;background:#2b3aa2; color: white;border-color:#2b3aa2;" runat="server" Height="24px" OnClick="LinkButton6_Click">Comment</asp:LinkButton>

</div>
     
   

    <asp:Panel ID="Panel1" runat="server" BackColor="Wheat" Height="123px" Visible="False">

        
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="lbl_cmd_name" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                <br />
                <span class="block"><span><span class="text-muted block">
                <asp:Label ID="lbl_cmd_cmds" runat="server" Text='<%# Eval("Comment") %>'></asp:Label>
                </span></span></span>
                <br />
              
            </ItemTemplate>
        </asp:DataList>
          <img src="images/${pic }" onerror="this.src='../UserTemp/images/default.jpg'" height="32" width="32"/>
	
                <input type="text" name="cmt" id="cm"placeholder="Write a comment....." style="width: 500px;"/>
        <asp:Button ID="btn_comment" runat="server" Text="Comment" BackColor="Blue" Font-Bold="True" ForeColor="White"    />
        </asp:Panel>

    
     <%--   </div>--%>









<br/>

</div></div>
		</div>
	</div>
	
<section class="contact" id="contact">
	<div class="container">
		
		<div class="contact-grids">
			
		</div>
	</div>
</section>
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
        
    





    </form>
</body>
</html>
