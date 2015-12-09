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
<title>个人中心</title>
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
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>/js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="<%=basePath%>/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>/css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="stylesheet" href="<%=basePath%>/css/etalage.css">
</head>
<body>
<iframe id="header" src="<%=basePath%>/header.jsp"  scrolling="no" frameborder="0"></iframe>

 <nav class="nav">
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="<%=basePath%>/index.jsp" target="_top">首页</a></li>
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
	 <frameset>
	   <frame src="lefter.jsp">
	   <frame src="basic.jsp" name="framename">
	 </frameset>

	<iframe id="lefter" src="lefter.jsp"  scrolling="no" frameborder="0"></iframe>
	
	  <div class="user-info">
	  <div class="basic-info">
		  <div class="portrait">
		  <img src="<%=basePath%>/image/t7.jpg" alt="头像" >	
           </div>	
          <div class="basic">		   
		    <span class="name">${user.userName }</span>
		
			<br>
			<span class="address"></span>
			<br>
			<span class="mobile">${user.telephone }</span>
			<br></br>
		</div>
		</div>
	   <div class="limit">
	     <div class="limit-item">
		   <span class="lable">剩余可用额度</span>
		   <span class="money-money1">
		   "100"
		   </span>
		   <div class="line">
		    	<span style="width:100%;"></span>
		   </div>
		   <span class="money-full">		   
		   		"当前授信额度:"
		   		<i>${user.quota }</i>
		   </span>
		 </div>
	   </div>
		  <br>&nbsp;&nbsp;&nbsp;&nbsp;<br>
		 <!-- 
		  <div class="ordering">
		  <h2>最近一期还款 </h2>
		   <div class="line">
		    
		    </div>
		  </div>
		   -->
		  <br>&nbsp;&nbsp;&nbsp;&nbsp;<br>
		<div class="ordering">
		  <h2>待处理订单 </h2>
		   	<div class="line" >
		    </div>
		    <s:if test="#request.pageBean == null || #request.pageBean.size() == 0">
						<table>
							<tr>
								<td></td>
							</tr>
						</table>
						
						<table border="1" cellspacing="0" cellpadding="0" width="100%" height="">
							<tr>
								<td style="color: red ; font-weight: bolder;"><center>没有商品</center></td>
							</tr>
						</table>
					</s:if>
					<s:else>
						<table width="650px">
							<s:iterator value="#request.pageBean.list">
								
							</s:iterator>
							
							<tr style="height: 30px">
					  			<th>订单id</th>
					  			<th>商品名</th>
								<th>运费</th>
								<th>总价</th>
								<th>订货人</th>
								<th>收货人</th>
								<th>状态</th>
								<th>修改</th>
							</tr>
							<s:iterator value="#request.pageBean.list" status="status">
								<tr style="height: 30px">
									<td>${orderId }</td>
									<td><a href="<%=basePath %>userBuy-goods.jsp">${goods.brand }</a></td>
									<td>${carriage }</td>
									<td>${orderAmount }</td>
									<td>${user.userName }</td>
									<td><a href="<%=basePath %>/userDelivery.jsp">收获详情</a></td>
									<td>${orderStatus }</td>
									<td>
										<a href="<%=basePath%>/queryOrderByOrderId.action?orderId=${orderId }">修改</a>
									</td>
								</tr>										
							</s:iterator>
						</table>
					</s:else>
					
					<center style="font-size: 14px">
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
			        
			        <s:if test="#request.pageBean.currentPage == 1">
			           	 首页&nbsp;上一页
			        </s:if>
			        
			        <s:else>
			            <a href="<%=basePath%>findOrderByStatus.action">首页</a>
			            &nbsp;
			            <a href="<%=basePath%>findOrderByStatus.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
			        </s:else>
			        	&nbsp;
			        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
			            <a href="<%=basePath%>findOrderByStatus.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
			            &nbsp;
			            <a href="<%=basePath%>findOrderByStatus.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
			        </s:if>
			        
			        <s:else>
			            	下一页&nbsp;尾页
			        </s:else>
			    
			   </center><br>
		  </div>
		  
		</div>
		
</div>
</div>
			
 

<div class="footer">
	<div class="container">
		
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