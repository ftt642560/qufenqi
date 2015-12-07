<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Register</title>
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
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
     
			 <div class="cssmenu">
				<ul>
					<li class="active"><a href="user-login.jsp">登录</a></li> 
					<li><a href="register.jsp">注册</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
    </div>
  </div>
</div>
<div class="header_bottom">
	<div class="container">
	  <div class="login">
					<img src="images/logo4.png" class="img-responsive" alt=""/>
				 </div>
 </div>
</div>

<div class="men">
	<div class="container">
	    <div class="col-md-12 register">
		  	  <form> 
			   <div class="login-left">
					<img src="images/logo3.png" class="img-responsive" alt=""/>
				 </div>
				 <div class="register-top-grid">
					<h3>新用户注册</h3>
					<table>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;昵称：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QQ：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>联系电话：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
					<tr>
					<td>家庭住址：</td>
					<td><input type="text"></td>
					<td>     </td>
					</tr>
											
					</table>
					<div class="register-but">
							 
                     <input type="submit" name="submit" value="&nbsp 提交 &nbsp"/ onclick="alert('提交成功！！！ ')">
                       &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="&nbsp; 清空 &nbsp;" >
					   </div>
				    
					 </div>
				     
				</form>
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
		  <li><a href="contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>

</body>
</html>		