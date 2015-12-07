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
	<s:form action="/goods/addgoods.action" theme="simple" method="POST">
		商家名<input type="text" value="" name="seller.sellerName" /><br />
		商品名<input type="text" value="" name="goods.goodsName" /><br />
		品牌<input type="text" value="" name="goods.brand" /><br />
		型号<input type="text" value="" name="goods.model" /><br />
		大小<input type="text" value="" name="goods.size" /><br />
		颜色<input type="text" value="" name="goods.color" /><br />
		材料<input type="text" value="" name="goods.material" /><br />
		商品价格<input type="text" value="" name="goods.goodsPrice" /><br />
		商品数量<input type="text" value="" name="quantity" /><br />
		权重<input type="text" value="" name="goods.weight" /><br />
		状态<input type="text" value="" name="goods.status" /><br />
		商品类型名<input type="text" value="" name="goodsTypeName" /><br />
		
		<input type="submit" value="添加" />
	</s:form>
</body>
</html>