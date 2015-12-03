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
				<td>商品类型</td>			
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
					<td align="center"><s:property value="#l_ofsellergoods.goods.goodstype.goodsTypeName"/></td>
				</tr>
			</s:iterator>
		</table>
		
		<center>
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
	        
	        <s:if test="#request.pageBean.currentPage == 1">
	           	 首页&nbsp;上一页
	        </s:if>
	        
	        <s:else>
	            <a href="sellerquerygoods.action">首页</a>
	            &nbsp;
	            <a href="sellerquerygoods.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
	        </s:else>
	        	&nbsp;
	        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
	            <a href="sellerquerygoods.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
	            &nbsp;
	            <a href="sellerquerygoods.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
	        </s:if>
	        
	        <s:else>
	            	下一页&nbsp;尾页
	        </s:else>
	    
	    </center><br>
		
	</form>
</body>
</html>