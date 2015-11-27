<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>test_goods</title>
</head>

<script language="javascript">
	function searchGoods()
	{
		var targetForm = document.forms[0];
		targetForm.action="goods/searchGoods.action";
	}
</script>

<body>
	<form method="post" action="" >
		商品名<input type="text" name="goodsName"></input>
		<input type=submit value="查询" onClick="searchGoods();" id="querygoods" />
		
		<table>
			<tr>
				<td>商品ID</td>
				<td>商品名</td>
				<td>品牌</td>
				<td>型号</td>
				<td>尺寸</td>
				<td>颜色</td>
				<td>材料</td>
				<td>库存量</td>				
			</tr>
			<s:iterator value="l_goods" id="l_goods" status="status">
				<tr>
					<td align="center"><s:property value="#l_goods.goodsId"/></td>
					<td align="center"><s:property value="#l_goods.goodsName"/></td>
					<td align="center"><s:property value="#l_goods.brand"/></td>
					<td align="center"><s:property value="#l_goods.model"/></td>
					<td align="center"><s:property value="#l_goods.size"/></td>
					<td align="center"><s:property value="#l_goods.color"/></td>
					<td align="center"><s:property value="#l_goods.material"/></td>
					<td align="center"><s:property value="#l_goods.storeNum"/></td>
				</tr>
			</s:iterator>
		</table>
		
		
	</form>
</body>
</html>