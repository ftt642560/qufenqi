<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath %>css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath %>css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>/js/jquery.easydropdown.js"></script>
<!-- start menu -->
<link href="<%=basePath %>css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
     
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="<%=basePath %>user-login.jsp">登录</a></li> 
					<li><a href="<%=basePath %>register.jsp">注册</a></li>
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
	    <div class="col-md-12 register">
		  	  <form> 
			   <div class="login-left">
					<img src="<%=basePath%>/image/logo3.png" class="img-responsive" alt=""/>
				 </div>
				 <div class="register-top-grid">
					<h3>新用户注册</h3>
					 <div>					
						<span>&nbsp;&nbsp;手机号：</span>
						
						<input type="text">
					
						<span>登录密码：</span>
						<input type="text"> 
					
						 <span>邮箱：</span>
						 <input type="text"> 
						 <span>&nbsp;&nbsp;</span>
					   <input class="register-but" type="submit" value="submit"></div>
					   <div class="clearfix"> </div>
				    
					 </div>
				     
				</form>
				<div class="clearfix"> </div>
				<div >
				   
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
		  <li><a href="<%=basePath %>contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>

</body>
</html>		