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
<title>趣分期购物网站</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>css/user-style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="<%=basePath%>css/jquery.countdown.css" />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>js/jquery.easydropdown.js"></script>
<!-- start menu -->
<link href="<%=basePath%>css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>css/menu.css" rel="stylesheet" type="text/css"  media="all" />
<script type="text/javascript" src="<%=basePath%>js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="<%=basePath%>js/responsiveslides.min.js"></script>
<script src="<%=basePath%>js/index.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: false,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
</script>
<script src="<%=basePath%>js/jquery.countdown.js"></script>
<script src="<%=basePath%>js/script.js"></script>

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
					<li class="active"><a href="<%=basePath%>user-login.jsp">登录</a></li> 
					<li><a href="<%=basePath%>register.jsp">注册</a></li>
					<li><a href="<%=basePath%>findOrderByStatus.action">个人中心</a></li> 
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
				<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>image/logo.png" alt=""/></a>
			</div>
			
			<script language="javascript">
				function searchGoods()
				{
					alert("!!");
					var targetForm = document.forms[0];
					targetForm.action="<%=basePath%>goods/usersearchgoods.action";
				}
			</script>
			
			<form method="post" action="<%=basePath%>goods/usersearchgoods.action" >
				<div class="search">
				  <input type="text" value="" name="goodsName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
				  <input type="submit" value="" >


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
	  		</form>
	  		
	  		
	  		<div class="2D-code">
				<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>image/2D-code.jpg" alt=""/></a>
			</div>
		</div>
		
		<div class="clearfix"> </div>
	</div>
</div>

<nav class="nav">
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="<%=basePath%>index.jsp" target="_top">首页</a></li>
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

		
<div class="index_slider">
	<div class="container">
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider">
	        <li><img src="<%=basePath%>image/slider1.jpg" class="img-responsive" alt=""/></li>
	        <li><img src="<%=basePath%>image/2.jpg" class="img-responsive" alt=""/></li>
	        <li><img src="<%=basePath%>image/3.jpg" class="img-responsive" alt=""/></li>
	      </ul>
	  </div>
	</div> 
</div>
<div class="content_top">
	<div class="container">
		<div class="grid_1">
			<div class="col-md-3">
			 <div class="box2">
			 	<ul class="list1">
			 		<i class="lock"> </i>
			 		<li class="list1_right">
					<p><h2>信用认证  &nbsp;安全可靠</h2></p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			<div class="col-md-3">
			 <div class="box3">
			 	<ul class="list1">
			 		<i class="clock1"> </i>
			 		<li class="list1_right">
					<p><h2>限时特惠  &nbsp;惊喜多多</h2></p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			<div class="col-md-3">
			 <div class="box4">
			 	<ul class="list1">
			 		<i class="vehicle"> </i>
			 		<li class="list1_right">
					<p><h2>满百包邮  &nbsp;服务到家</h2></p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			<div class="col-md-3">
			 <div class="box5">
			 	<ul class="list1">
			 		<i class="dollar"> </i>
			 		<li class="list1_right">
					<p><h2>分期付款  &nbsp;超低月息</h2></p></li>
			 		<div class="clearfix"> </div>
			 	</ul>
			 </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		
		<div class="sellers_grid">
			<ul class="sellers">
				<i class="star"> </i>
				<li class="sellers_desc"><h2>热门商品</h2></li>
				<div class="clearfix"> </div>
			</ul>
		</div>
		<div class="grid_2">
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="<%=basePath%>image/p1.jpg" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">			
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="<%=basePath%>image/p2.jpg" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="<%=basePath%>image/p3.jpg" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 <div class="sale-box"> </div>
				 <div class="desc">
				 	<h3>售价：</h3>
				 	<h4>首付：</h4>
					<h5>店铺；</h5>
				 	<ul class="list2">
				 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车</a></span></li>
				 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">更多</a></span></li>
				 	  <div class="clearfix"> </div>
				 	</ul>
				 	<div class="heart"> </div>
				 </div>
			   </div>
			</div>
			<div class="clearfix"> </div>
		<div class="more"><a href="#" ><p>查看更多热门商品>>></p></a></div>
		</div>
		<div class="sellers_grid">
			<ul class="sellers">
				<i class="star"> </i>
				<li class="sellers_desc"><h2>最新上架</h2></li>
				<div class="clearfix"> </div>
			</ul>
		</div>
		<div class="grid_2">
		<div class="col-md-3 span_6">
			  <div class="box_inner">
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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
				<img src="<%=basePath%>image/p4.jpg" class="img-responsive" alt=""/>
				 
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

<div class="container">
   <div class="content_middle_bottom">
	  <div class="col-md-4">
		  <ul class="spinner">
			<i class="spinner_icon"> </i>
			<li class="spinner_head"><h3>限时特惠</h3></li>
			<div class="clearfix"> </div>
		  </ul>
		  <div class="timer_box">
			<div class="thumb"> </div>
			<div class="timer_grid">
 			<ul id="countdown">
			</ul>
				<ul class="navigation">
					<li>
						<p class="timeRefDays">DAYS</p>
					</li>
					<li>
						<p class="timeRefHours">HOURS</p>
					</li>
					<li>
						<p class="timeRefMinutes">MINUTES</p>
					</li>
					<li>
						<p class="timeRefSeconds">SECONDS</p>
					</li>
				</ul>
          </div>
          <div class="thumb_desc">
          	<h3> &nbsp&nbsp精美套装</h3>
          	<div class="price">
			   <span class="reducedfrom">600RMB</span>
			   <span class="actual">200RMB</span>
			</div>
		 </div>
		 <a href="#"><div class="m_3 deal"><div class="link3">抢购</div></div></a>
		</div>
		</div>
		<div class="col-md-8">
		  <ul class="spinner">
			<i class="paperclip"> </i>
			<li class="spinner_head"><h3>用户评价</h3></li>
			<div class="clearfix"> </div>
		  </ul>
		      <div class="a-top">
				 <div class="left-grid">
					<img src="<%=basePath%>image/t4.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="right-grid">
					<h4><a href="#">分期付款，零首付，还包邮！！！好顶赞！！！</a></h4>
					<p>iphone7 土豪金版</p>
				 </div>
				 <div class="but">
				   <a class="arrow" href="#"> </a>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="a-top">
				 <div class="left-grid">
					<img src="<%=basePath%>image/t5.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="right-grid">
					<h4><a href="#">分期付款，零首付，还包邮！！！好顶赞！！！</a></h4>
					<p>iphone7 土豪金版</p>
				 </div>
				 <div class="but">
				   <a class="arrow" href="#"> </a>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="a-top">
				 <div class="left-grid">
					<img src="<%=basePath%>image/t6.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="right-grid">
					<h4><a href="#">分期付款，零首付，还包邮！！！好顶赞！！！</a></h4>
					<p>iphone7 土豪金版</p>
				 </div>
				 <div class="but">
				   <a class="arrow" href="#"> </a>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="a-top">
				 <div class="left-grid">
					<img src="<%=basePath%>image/t7.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="right-grid">
					<h4><a href="#">分期付款，零首付，还包邮！！！好顶赞！！！</a></h4>
					<p>iphone7 土豪金版</p>
				 </div>
				 <div class="but">
				   <a class="arrow" href="#"> </a>
				 </div>
				 <div class="clearfix"></div>
			 </div>
		</div>
		<div class="clearfix"></div>
	</div>
      <div class="content_bottom">
    	<div class="col-md-3 span_1">
    	  <ul class="spinner">
			 <i class="box_icon"> </i>
			 <li class="spinner_head"><h3>趣</h3></li>
			 <div class="clearfix"> </div>
		  </ul>
		  
    	</div>
    	<div class="col-md-3 span_1">
    	  <ul class="spinner">
			 <i class="bubble"> </i>
			 <li class="spinner_head"><h3>分</h3></li>
			 <div class="clearfix"> </div>
		  </ul>
		  
    	</div>
    	<div class="col-md-3 span_1">
    	  <ul class="spinner">
			 <i class="mail"> </i>
			 <li class="spinner_head"><h3>期</h3></li>
			 <div class="clearfix"> </div>
		  </ul>
		 
    	</div>
    	<div class="col-md-3 span_1">
    	  <ul class="spinner">
			 <i class="mail"> </i>
			 <li class="spinner_head"><h3>赞</h3></li>
			 <div class="clearfix"> </div>
		  </ul>
		  
    	</div>
    	<div class="clearfix"> </div>
    </div>
</div>
<div class="footer">
	<div class="container">
		
		<ul class="footer_nav">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品</a></li>
		  <li><a href="#">商家</a></li>
		  
		  <li><a href="#">关于我们</a></li>
		  <li><a href="<%=basePath%>contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
