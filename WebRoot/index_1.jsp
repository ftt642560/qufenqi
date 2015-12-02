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
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.min.js"></script>
  </head>
  <body>
    <h1>首页</h1>
    <div>
    	<a href="quit.action">退出登录</a>
    	<a href="findAll.action">查询所有的用户</a>
    	<a href="queryOrders.action">查看我的订单</a>
    </div>
    <div>
		<table  border="1" cellspacing="1" cellpadding="2">
			<s:if test="#request.userLists == null || #request.userLists.size() == 0">
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
					<td  >删除</td>
					<td  >修改</td>
				<tr>
				<s:iterator value="#request.userLists" status="users">
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
						<td>
							<a href="<%=basePath%>/delete.action?userId=${userId}">
								<input type="hidden" value="${userId }">删除
							</a>
						</td>
						<td><a href="<%=basePath%>/query.action?userId=${userId}">修改</a></td>
				</s:iterator>
			</s:else>
		</table>
    </div>
    <div id="div" style="display:none; border: 1px;color: black; width: 200px; height: 50px ; 
			background-color: yellow ; z-index: 1; position: absolute; left: 400px;
			top: 180px; padding-top: 15px; font-weight: bolder;font-size: 18px; padding-left: 55px;">
		</div>
  </body>
</html>
