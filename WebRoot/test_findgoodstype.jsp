<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="/goods/findallgoodstype.action" method="POST">
		<table>
			<tr>
				<td>商品类型ID</td>
				<td>商品类型名</td>
			</tr>
			<s:iterator value="l_goodstype" id="l_goodstype"> 
				<tr>
					<td><s:property value="#l_goodstype.goodsTypeId"/></td>
					<td><s:property value="#l_goodstype.goodsTypeName" /></td>
				</tr>
			</s:iterator>
		</table>
		
		<input type="submit" value="查询" />
	</s:form>
</body>
</html>