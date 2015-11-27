<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div>
  		${requestScope.mess }
  	</div>
  	<div>
	    <form action="register.action" method="post">
	    	用户名：<input type="text" name="user.userName"><br>
	    	密码：<input type="text" name="user.password"><br>
	    	真实姓名：<input type="text" name="user.name"><br>
	    	电话：<input type="text" name="user.telephone"><br>
	    	身份证号码：<input type="text" name="user.idCard"><br>
	    	email：<input type="text" name="user.email"><br>
	    	<input type="submit" value="注册">
	    	<input type="reset" value="取消"><br>
	    </form>
    </div>
  </body>
</html>
