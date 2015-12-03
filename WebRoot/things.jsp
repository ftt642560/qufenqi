<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品</title>
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
<div class="header_bottom2">
	<div class="container">
	 <div class="header_bottom-box2">
		
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

<nav class="nav">
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="" target="_top">所有商品</a></li>
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

<div class="line11"></div>



<div class="things-container">
<div class="sequence">
  <ul>
   <li><a href="">综合排序</a></li>
   <li><a href="">人气</a></li>
   <li><a href="">销量</a></li>
   <li><a href="">信用</a></li>
   <li><a href="">价格</a></li>
   </ul>
  </div>
<div class="goods1">
<div class="grid_2">
		<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p1.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p2.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p3.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p4.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p2.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p3.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p1.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p2.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p4.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="images/p1.jpg" class="img-responsive" alt=""/>
				 
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	
				 </div>
			   </div>
			</div>
		</div>
</div>
</div>
<iframe id="footer" src="footer.jsp"  scrolling="no" frameborder="0"></iframe>
</body>
</html>		