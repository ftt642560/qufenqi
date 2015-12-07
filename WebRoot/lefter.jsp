<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>lefter</title>
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


	 <div class="ctrl-panel">
	 <ul class="ctrl-panel" style="width:210px;">
	   <li class="user-tit">个人中心</li>
	     <li class="item-level2">
		   <p class="title" id="index1" ><a href="personal center.jsp" target="_parent">首页</a></p>
		 </li>
	    
		<li class="item-level2">
		   <p class="title" id="p-info" ><a href="<%=basePath %>queryByName.action" target="_parent">个人信息</a></p>
		 </li>
		 <li class="item-level2">
		   <p class="title" id="info-change" ><a href="info-change.jsp" target="_parent">信息修改</a></p>
		 </li>
		<li class="item-level2">
		   <p class="title" id="order" ><a href="user-order.jsp" target="_parent">我的订单</a></p>
		 </li>
		 
		<li class="item-level2">
		   <p class="title" id="order" ><a href="user-bill.jsp" target="_parent">我的账单</a></p>
		 </li>
		<li class="item-level2">
		   <p class="title" id="order" ><a href="user-cre.jsp" target="_parent">我的信誉度</a></p>
		 </li>
		<li class="item-level2">
		   <p class="title" id="order" ><a href="user-cer.jsp" target="_parent">我的认证</a></p>
		 </li>
		<li class="item-level2">
		   <p class="title" id="order" ><a href="user-com.jsp" target="_parent">我的申诉</a></p>
		 </li>
		 	<div class="clearfix"> </div>
	    </ul>
		</div>

</body>
</html>		