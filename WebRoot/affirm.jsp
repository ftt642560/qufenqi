<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>确认订单</title>
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
<iframe id="header" src="header.jsp"  scrolling="no" frameborder="0" ></iframe>
<div class="goods-affirm">
<div class="goods-address">
<div class="address-title">
<h3>确认收货地址</h3>
</div>
<div class="address">
<a href="">管理收货地址</a>
</div>
<div class="line7"></div>
<form action="" method="get"> 
<br /><br /> 

<li><label><input name="address1" type="radio" value="" />广东省湛江市麻章区海大路1号 </label> </li>
<li><label><input name="address1" type="radio" value="" />广东省湛江市麻章区海大路2号 </label> </li>
<li><label><input name="address1" type="radio" value="" />广东省湛江市麻章区海大路3号</label> </li>
<li><label><input name="address1" type="radio" value="" />广东省湛江市麻章区海大路4号 </label> </li>
<li><label><input name="address1" type="radio" value="" />广东省湛江市麻章区海大路5号 </label> </li>

</form> 
</div>
<div class="order-affirm">
<div class="order-affirminfo">
<div class="order-title">
<h3>确认订单信息</h3>
</div>

<div class="line7"></div>
<div class="order-info" style="margin-top:50px;">
	<div class="order-top"style="width:100%;">
	<table>
	<tr>
		<th style="width:500px;">宝贝</th>
	    <th style="width:150px;">单价(元)</th>
		<th style="width:150px;">数量</th>
	    <th style="width:150px;">优惠方式</th>
		<th style="width:100px;">小计</th></tr>
	</table>
	</div>
	<div class="order1" style="width:100%;">
    <table>
	
	<tr>
	   
		<td style="width:500px;">商品简介</td>		
	    <td style="width:150px;">xx</td>
		<td style="width:150px;">1</td>
	    <td style="width:150px;">优惠方式</td>
		<td style="width:100px;">小计</td></tr>
		</table>
	</div>
	<div class="btn2">
	<input type="submit" name="submit" value="&nbsp 提交订单 &nbsp"/ onclick="alert('提交成功！！！ ')">
    
	</div>                  
</div>
</div>
</div>
</div>
<iframe id="footer" src="footer.jsp"  scrolling="no" frameborder="0"></iframe>
</body>
</html>		