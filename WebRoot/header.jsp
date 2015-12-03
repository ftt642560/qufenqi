<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
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
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>/js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="<%=basePath%>js/index.js"></script>
<link rel="stylesheet" href="<%=basePath%>/css/etalage.css">
</head>
<body>
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
  
			 <div class="cssmenu">
				<ul>
					<li id="loginLi" style="color: #fff ; font-size: 13px; ">
						
						<s:if test="#session.user == null">
							未登录
						</s:if>
						<s:else>
							欢迎${user.userName }的登录！
						</s:else>
					</li>
					<li class="active"><a href="<%=basePath%>/user-login.jsp" target="_top">登录</a></li> 
					<li><a href="<%=basePath%>/register.jsp" target="_top">注册</a></li>
					<li><a href="<%=basePath%>/personal center.jsp" target="_top">个人中心</a></li> 
					
					<li id="quitLi" style="font-size: 13px;">
						<a href="<%=basePath%>quitUser.action" class="quit">注销</a>
					</li>
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
				<a href="index.jsp"><img src="<%=basePath%>/image/logo.png" alt=""/></a>
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
				<a href="index.jsp"><img src="<%=basePath%>/image/2D-code.jpg" alt="" style="width:70px; height:70px;"/></a>
			</div>
		</div>
		
	
	</div>
</div>

 


</body>
</html>		