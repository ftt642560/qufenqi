<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
  </head>
  
  <body>
	<form name="from1"  method="post"  action="login.action">
		 <p>${requestScope.mess }</p>
		  用户名:<input name="user.userName" type="text" size="10"><br>
		  &nbsp;密码:<input name="user.password" type="password" size="10">
		  <br>
		 <input name="submit" type="submit"  value="登录">
		 <a href="quit.action">退出登录</a>
	</form>
  </body>
</html>
