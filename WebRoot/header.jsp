<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>head</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="stylesheet" href="css/etalage.css">
</head>
<body>
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
  
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="user-login.jsp">登录</a></li> 
					<li><a href="register.jsp">注册</a></li>
					<li><a href="personal center.jsp">个人中心</a></li> 
				</ul>
			</div>
			<div class="clearfix"></div>
   </div>
</div>
</div>
<div class="header_bottom">
	<div class="container">
	 <div class="header_bottom-box">
		
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
			</div>
			<div class="search">
			  <input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
			  <input type="submit" value="">
			  
			<nav id="navigation">
			  <ul>
			        <li class="hotSearchings"><a href="">iphone 7</a></li>
					<li><a href="">魅族</a></li>
					<li><a href="">华为</a></li>
					<li><a href="">小米</a></li>
					<li><a href="">运动户外</a></li>
					
			  </ul>
			  </nav>
	  		</div>
	  		<div class="2D-code" style="width:120px; float:right; ">
				<a href="index.jsp"><img src="images/2D-code.jpg" alt="" style="width:70px; height:70px;"/></a>
			</div>
		</div>
		
	
	</div>
</div>

 


</body>
</html>		