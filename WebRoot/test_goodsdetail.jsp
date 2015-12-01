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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


</head>
<body>
	<form  method="post" action="">
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
			
			<script language="javascript">
				window.onload=function(){
					//var id="${goods.goodsId}";
					var id;
					document.getElementById("goodsId").value=id;
					alert("id="+id);
				};
				
				function buygoods()
				{
					alert("购买成功！");
					var id="${goods.goodsId}";
					var buynum = document.getElementById("sbuynum").value;
					alert("id="+id+"buynum="+buynum);
					//window.location.href="goods/buyGoods.action?goodsId="+id+"&s_buynum="+s_buynum;
					document.forms[0].action="<%=basePath%>goods/buyGoods.action?goodsId="+id;
					document.forms[0].submit();
				}
			</script>
			
			
			<tr>
				<!-- <td><input type="text" value="" id="goodsId"  /><s:property value="goods.goodsId" /></td> -->
				<td><s:property value="goods.goodsId"  /></td>
			</tr>
			
			<tr>
				<td><s:property value="goods.goodsName" /></td>
			</tr>
			
			<tr>
				<td><s:property value="goods.brand" /></td>
			</tr>
			
			<tr>
				<td><s:property value="goods.model" /></td>
			</tr>
			<tr>
				<td><s:property value="goods.size" /></td>
			</tr>
			<tr>
				<td><s:property value="goods.color" /></td>
			</tr>
			<tr>
				<td><s:property value="goods.material" /></td>
			</tr>
			<tr>
				<td><s:property value="goods.storeNum" /></td>
			</tr>
			
		</table>
	
	
		购买数量<input type="text" value="" name="sbuynum" id="sbuynum" />
		<input type="submit" value="购买" onClick="buygoods();" />
	</form>
</body>
</html>