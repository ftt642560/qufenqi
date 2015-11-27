<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
  	<form action="update.action" method="post">
  		<table  border="1" cellspacing="1" cellpadding="2">
			<s:if test="#request.user == null">
				<tr>
					<td>
						<center>没查到用户</center>
					</td>
				</tr>
			</s:if>
			<s:else>
				<tr>
					<td>用户id</td>
					<td >用户名</td>
					<td >密码</td>
					<td  >真实姓名</td>
					<td   >电话</td>
					<td >身份证号码</td>		
					<td >email</td>
					<td  >信誉度</td>
					<td  >状态</td>
					<td  >删除</td>
					<td  >修改</td>
				<tr>
				<s:iterator value="#request.user" status="user">
					<tr>
						<td><input type="text" name="user.userId" value="${userId }"/></td>
						<td><input type="text" name="user.userName" value="${userName }" readonly="readonly"/></td>
						<td><input type="text" name="user.password" value="${password }" /></td>
						<td><input type="text" name="user.name" value="${name }"/></td>
						<td><input type="text" name="user.telephone" value="${telephone }" readonly="readonly"/></td>
						<td><input type="text" name="user.idCard" value="${idCard }"/></td>
						<td><input type="text" name="user.email" value="${email }" /></td>
						<td><input type="text" name="user.quota " value="${quota }" readonly="readonly"/></td>
						<td><input readonly="readonly" type="text" name="user.status" value="${status }"/></td>
					</tr>
				</s:iterator>
			</s:else>
		</table>
		<input type="submit" value="提交" />
	</form>
  </body>
</html>
