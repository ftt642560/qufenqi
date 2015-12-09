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
<title>我的订单</title>
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
 
 <div class="user-container">  
   <div class="main-container">
	 
	<iframe id="lefter" src="lefter.jsp"  scrolling="no" frameborder="0"></iframe>
	<div class="order-details">
	<div class="order-title">
	<span><h2>订单详情</h2></span>
	<div class="line6"></div>
		<div class="spacer"></div>
		<div class="manage">
						<table class="list"  border="1px" width="800px" style="font-size: 18px;font-weight: bolder;">
							<tr>
					  			<td  width="5%">序号</td>
					  			<td>类型</td>
								<td  width="8%">商品名</td>
								<td  width="9%">品牌</td>
								<td  width="9%">类型</td>					
								<td  width="9%">大小</td>
								<td  width="7%">颜色</td>
								<td  width="9%">材料</td>
								<td  width="7%">库存量</td>
								<td  width="9%">价格</td>
								<td  width="9%">权重</td>
								<td  width="5%">状态</td>
							</tr>
							<s:iterator value="#session.pageBean.list" status="status">
								<tr>
									<td>${goods.goodsId }</td>
									<td>${goods.goodstype.goodsTypeName }</td>
									<td>${goods.goodsName }</td>
									<td>${goods.brand }</td>
									<td>${goods.model }</td>
									<td>${goods.size }</td>
									<td>${goods.color }</td>
									<td>${goods.material }</td>
									<td>${goods.storeNum }</td>
									<td>${goods.goodsPrice }</td>
									<td>${goods.weight }</td>
									<td>${goods.status }</td>
								</tr>										
							</s:iterator>
						</table>
			</div>
	</div>
	</div>
    </div>	
    <div>
				<center><a href="<%=basePath %>/queryUserOrderByUserId.action">返回订单页</a></center>
			</div>
</div>
			
<iframe id="footer" src="footer.jsp"  scrolling="no" frameborder="0"></iframe>
</body>
</html>		