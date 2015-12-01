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
    
    <title>My JSP 'queryByName.jsp' starting page</title>
    
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
		<table  border="1" cellspacing="1" cellpadding="2">
			<s:if test="#request.user == null">
				<tr>
					<td>
						<center>没有用户</center>
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
					<td  >修改</td>
				<tr>
				<s:iterator value="#request.user" status="users">
					<tr>
						<td>${userId }</td>
						<td>${userName }</td>
						<td>${password }</td>
						<td>${name }</td>
						<td>${telephone }</td>
						<td>${idCard }</td>
						<td>${email }</td>
						<td>${quota }</td>
						<td>${status }</td>
						<td><a href="<%=basePath%>/query.action?userId=${userId}">修改</a></td>
				</s:iterator>
			</s:else>
		</table>
    </div>
  </body>
</html>
