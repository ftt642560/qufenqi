<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>/js/jquery.easydropdown.js"></script>
<!-- start menu -->
<link href="<%=basePath%>/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
     
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="<%=basePath%>/user-login.jsp">登录</a></li> 
					<li><a href="<%=basePath%>/register.jsp">注册</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
    </div>
  </div>
</div>
<div class="header_bottom">
	<div class="container">
	  <div class="login">
					<img src="<%=basePath%>/image/logo4.png" class="img-responsive" alt=""/>
				 </div>
 </div>
</div>



<div class="men">
	<div class="container">
	    <div class="register">
			   <div class="login-left">
					<img src="<%=basePath%>/image/logo3.png" class="img-responsive" alt=""/>
				 </div>
			   <div class="col-md-6 login-right">
			  	<h3>用户登录</h3>
				<p>如果您已经拥有我们的账号，请<a class="" href="<%=basePath%>/user-login.jsp">登录</a>！</p>
				<p>如果没有，请<a class="" href="<%=basePath%>/register.jsp">注册</a>！</p>
				<!-- 登录ftt添加 -->
				<p style="color: red;font-weight: bolder;position: relative;left: 60px;height: -20px;">${requestScope.mess }</p>
				<!-- form表单 -->
				<form name="from1"  method="post"  action="login.action">
				  <div>
					<span>账号：</span>
					<input id="userName" type="text" name="user.userName"> 
				  </div>
				  <div>
					<span>密码：</span>
					<input id="password" type="password" name="user.password"> 
				  </div>
				  <a class="forgot" href="#">忘记密码?</a>
				  <input type="submit" value="Login" onclick="JavaScript:login();">
			    </form>
			   </div>	
			   <div class="clearfix"> </div>
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
		  <li><a href="<%=basePath%>/contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>

</body>
</html>		