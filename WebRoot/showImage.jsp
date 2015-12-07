<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showImage.jsp' starting page</title>
    
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
  显示图片
  <s:form action="/goods/showImage.action" method="POST">
  	商家ID<input type="text" name="sellerId" /> <br />
  	商品ID<input type="text" name="goodsId" /> <br />
  	
   	<table align="left">
   		<s:iterator value="sgi">
   			<tr>
   				<td><img src="${pageContext.request.contextPath}/${imageUrl}"></td>
   			</tr>
   		</s:iterator>
   	</table>
   	<input type="submit" value="显示图片" />
   	
   	</s:form>
  </body>
</html>
