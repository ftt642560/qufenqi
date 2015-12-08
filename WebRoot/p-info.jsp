<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>个人信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/user-style.css" rel='stylesheet' type='text/css' />
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
<iframe id="header" src="header.jsp"  scrolling="no" frameborder="0"></iframe>

<nav class="nav">
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="index.jsp" target="_top">首页</a></li>
    <li class="nav_menu-item"><a href="" target="_top">商品分类</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_top">手机</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">电脑/平板</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">摄影摄像</a></li>
		<li class="nav_submenu-item"> <a href="" target="_top">潮流数码</a></li>
      </ul>
    </li>
    <li class="nav_menu-item"><a href="" target="_top">特卖商品</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_top">零首付</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">三期免息</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">限时特惠</a></li>
      </ul>
    </li>
   
  </ul>
</nav>
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="index.html" target="_blank">首页</a></li>
    <li class="nav_menu-item"><a href="" target="_blank">商品分类</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_blank">手机</a></li>
        <li class="nav_submenu-item"> <a href="" target="_blank">电脑/平板</a></li>
        <li class="nav_submenu-item"> <a href="" target="_blank">摄影摄像</a></li>
		<li class="nav_submenu-item"> <a href="" target="_blank">潮流数码</a></li>
      </ul>
    </li>
    <li class="nav_menu-item"><a href="" target="_blank">特卖商品</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_blank">零首付</a></li>
        <li class="nav_submenu-item"> <a href="" target="_blank">三期免息</a></li>
        <li class="nav_submenu-item"> <a href="" target="_blank">限时特惠</a></li>
      </ul>
    </li>
	<div class="clearfix"> </div>
  </ul>
</nav>		
 
 <div class="user-container">  
   <div class="main-container">
	 
	<iframe id="lefter" src="lefter.jsp"  scrolling="no" frameborder="0"></iframe>
	<div class="p-info" >
		<h2>个人信息</h2>
		<div class="line" style="width: 500px"> </div>
		<table style="width: 700px ; height: 400px;">
				<tr>
					<th>用户名</th>
					<td>${user.userName }</td>
				</tr>
				<tr>
					<th>真实姓名</th>
					<td>${user.name }</td>
				</tr>
				<tr>
					<th>电话</th>
					<td>${user.telephone }</td>
				</tr>
				<tr>
					<th>身份证号码</th>
					<td>${user.idCard }</td>
				</tr>
				<tr>
					<th>email</th>
					<td>${user.email }</td>
				</tr>
				<tr>
					<th>信誉度</th>
					<td>${user.quota }</td>
				</tr>
				<tr>
					<th>状态</th>
					<td>${user.status }</td>
				</tr>
				<tr>
					<td style="color: red ; font-size: 12px" colspan="2">
						<center>
							状态：0表示没有邮箱激活 ，1代表已进行邮箱激活
						</center>
					</td>
				</tr>
		</table>
	</div>
   </div>
			
 </div>

<div class="footer">
	<div class="f-container">
		
		<ul class="footer_nav">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品</a></li>
		  <li><a href="#">商家</a></li>
		  
		  <li><a href="#">关于我们</a></li>
		  <li><a href="contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>

</body>
</html>		