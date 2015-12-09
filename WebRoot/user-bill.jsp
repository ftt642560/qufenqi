<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>我的账单</title>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>css/user-style.css" rel='stylesheet' type='text/css' />
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
	<span><h2>账单详情</h2></span>
	<div class="line6"></div>
		<s:if test="#request.pageBean == null || #request.pageBean.size() == 0">
			<table border="1px" border="1px" width="800px" style="font-size: 18px;font-weight: bolder;">
							<tr>
								<td></td>
							</tr>
						</table>
						
						<table border="1px" cellspacing="0" cellpadding="0" width="100%" height="">
							<tr>
								<td style="color: red ; font-weight: bolder;"><center>账单信息</center></td>
							</tr>
						</table>
					</s:if>
					<s:else>
						<table class="list" border="1px" width="800px" >
							<tr style="font-size: 20px;font-weight: bolder;height: 100px;">
					  			<td>还款单id</td>
								<td>已还期数</td>
								<td>待还期数</td>
								<td>月还金额</td>
								<td>还款状态</td>
								<td>还款</td>
							</tr>
							<s:iterator value="#request.pageBean.list" status="status">
								<tr>
									<td>${repayment.repaymentId }</td>
									<td>${repayment.finishPeriodNum }</td>
									<td>${repayment.needPeriodNum }</td>
									<td>${repayment.onePeriodMoney }</td>
									<td>${repayment.repaymentState }</td>
									<td>
										<a href="#">我要还款</a>
									</td>
								</tr>										
							</s:iterator>
						</table>
					</s:else>	
	</div>
    </div>	
    <br><br>
    <center style="font-size: 14px">
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
			        
			        <s:if test="#request.pageBean.currentPage == 1">
			           	 首页&nbsp;上一页
			        </s:if>
			        
			        <s:else>
			            <a href="<%=basePath %>/querySelfRepayment.action">首页</a>
			            &nbsp;
			            <a href="<%=basePath %>/querySelfRepayment.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
			        </s:else>
			        	&nbsp;
			        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
			            <a href="<%=basePath %>/querySelfRepayment.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
			            &nbsp;
			            <a href="<%=basePath %>/querySelfRepayment.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
			        </s:if>
			        
			        <s:else>
			            	下一页&nbsp;尾页
			        </s:else>
			    
			   </center><br>		
</div>
</div>
			
<iframe id="footer" src="footer.jsp"  scrolling="no" frameborder="0"></iframe>
</body>
</html>		