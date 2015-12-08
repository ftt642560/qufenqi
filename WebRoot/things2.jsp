<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品搜索</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>css/user-style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="<%=basePath%>css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="stylesheet" href="<%=basePath%>css/etalage.css">
</head>
<body>
<div class="header_top2" style="background:#573c27;position:fixed;z-index:9999;width:1366px;">
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
	 <div class="header_bottom-box2" style="width:1070px;">
		
			<div class="logo">
				<a href="index.jsp"><img src="<%=basePath%>image/logo.png" alt=""/></a>
			</div>
			<form method="post" action="<%=basePath%>goods/usersearchgoods.action">
				<div class="search">
			  	<input type="text" name="goodsName" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
			 	 <input type="submit" value="">
			 </form> 
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
	  		<div class="2D-code" style="width:70px; float:right; ">
				<a href="index.jsp"><img src="<%=basePath%>image/2D-code.jpg" alt="" style="width:70px; height:70px;"/></a>
			</div>
		</div>
		
	
	</div>
</div>

<nav class="nav" style="top:500px;margin-top:50px;">
  <ul class="nav_menu" >
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
  
  	<script language="javascript">
			
				function gotodetails(id)
				{
				//	alert("gotoupdate");
				//	alert("id="+id);

					window.location.href="<%=basePath%>goods/queryOneGoods.action?sellergoodsid="+id;
					
				}
			</script>
  
  
<div class="goods1">
<div class="grid_2">
		<div class="goods2">
			  <div class="box_inner">
			  
					<s:iterator value="l_sellergoods" id="l_sellergoods" status="status">  
						<div class="goods3">
						<div class="goods-photo">
							<!--<s:iterator value="l_sellergoods.goods.sellergoodsimages" id="coverpic" status="st">
								<s:if test="#st.first">
									<img src="${pageContext.request.contextPath}/${coverpic.imageUrl}" class="img-responsive" alt=""/>
						 		</s:if>
						 	</s:iterator>-->
						 	
						 	<img src="${pageContext.request.contextPath}/${coverpic}" class="img-responsive" alt=""/>
						 	
						 	
						 </div>
						 <div class="goods4">
						 <div class="goods-info">
						 <a style="cursor:pointer;" onclick="gotodetails(<s:property value="#l_sellergoods.id" />);"  ><span><s:property value="#l_sellergoods.goods.goodsName" ></s:property><br></br></span></a>
						</div>
						<div class="line">
				    <span style="width:100%;"></span>
				    </div>
						 <div class="shopname">
						  <a style="cursor:pointer;" onclick="gotodetails(<s:property value="#l_sellergoods.id" />);" >
						  		<span>商家：<s:property value="#l_sellergoods.seller.sellerName" ></s:property></span></a>
						 </div>
						  </div>
						 <div class="goods-price">
						 <span>价格&nbsp;&nbsp;￥<s:property value="#l_sellergoods.goods.goodsPrice" /></span>
						 </div>
						 <div class="goods-buy">
						 	
						 	<ul class="list3">
						 	  <li class="list2_left"><span class="m_1"><a href="#" class="link">购物车&nbsp;</a></span></li>
						 	  <li class="list2_right"><span class="m_2"><a href="#" class="link1">立即购买</a></span></li>
						 	  <div class="clearfix"> </div>
						 	</ul>
						 	
						 </div>
					   </div>
				   </s:iterator>
			   
			   
			   
			   		<center>
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
	        
	        <s:if test="#request.pageBean.currentPage == 1">
	           	 首页&nbsp;上一页
	        </s:if>
	        
	        <s:else>
	            <a href="usersearchbytypename.action">首页</a>
	            &nbsp;
	            <a href="usersearchbytypename.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
	        </s:else>
	        	&nbsp;
	        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
	            <a href="usersearchbytypename.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
	            &nbsp;
	            <a href="usersearchbytypename.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
	        </s:if>
	        
	        <s:else>
	            	下一页&nbsp;尾页
	        </s:else>
	    
	    </center><br>
			   
		</div>
	</div>
	</div>
	</div>
	</div>
	
	<iframe id="footer" src="<%=basePath%>footer.jsp"  scrolling="no" frameborder="0"></iframe>
</body>
</html>		