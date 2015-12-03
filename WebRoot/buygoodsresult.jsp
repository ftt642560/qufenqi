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
	SUCCESS
	
	<br /><br />
	<script language="javascript">
			
				function queryall()
				{
				//	alert("gotoupdate");
				//	alert("id="+id);
					alert("!!");
					var targetForm = document.forms[0];
					targetForm.action="<%=basePath%>goods/sellerquerygoods.action";
					
				}
	</script>
	
	<form method="post" action="" >
		商家ID<input type="text" name="testsellerid" value=""></input>
		<input type=submit value="查找商家商品信息" onClick="queryall();"  />
		
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
			
			
			<s:iterator value="l_ofsellergoods" id="l_ofsellergoods" status="status">
				<tr>
					<td align="center"><s:property value="#l_ofsellergoods.goods.goodsId"/></td>
					<td>
						<s:property value="#l_ofsellergoods.goods.goodsName" ></s:property>
					</td>
					<td align="center"><s:property value="#l_ofsellergoods.goods.brand"/></td>
					<td align="center"><s:property value="#l_ofsellergoods.goods.model"/></td>
					<td align="center"><s:property value="#l_ofsellergoods.goods.size"/></td>
					<td align="center"><s:property value="#l_ofsellergoods.goods.color"/></td>
					<td align="center"><s:property value="#l_ofsellergoods.goods.material"/></td>
					<td align="center"><s:property value="#l_ofsellergoods.quantity"/></td>
				</tr>
			</s:iterator>
		</table>
		
		
	</form>
</body>
</html>