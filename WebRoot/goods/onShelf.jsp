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
  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商品上架</title>
	<link rel="stylesheet" href="<%=basePath%>/css/cjpm.css">
	<script type="text/javascript" src="<%=basePath%>/js/page.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/msn_message.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.min.js"></script>
	<style type="text/css">
		<!--
		body {
			background-color: #f8f7f7;
		}
		-->
	</style>
  </head>
  
  <body background="<%=basePath%>/image/bg.gif">
		<FORM ID="userForm" method="post"  action="findSome.action"  >
          <table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="headerbar61">为您的商品信息选择何时的类目</td>
				<td class="headerbar61">
					<p align="right">
						<input type="submit" value="查 询 ">
					</p>
				</td>
			</tr>
  		  </table>
			
			<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
			<tr>
				<td></td>
			</tr>
			</table>
			
		  	<table border=0 cellspacing=1 cellpadding=2 width="100%" bgcolor="gray">
				<tr>
					<td class="textbar81" width="15%">商品名</td>
					<td class="textbar01" width="35%">
						<input type="text" id="username" name="user.userName" size="20">
					</td>
				</tr>
			</table>
			
			<table border=0 cellspacing=0 cellpadding=2 width="100%" height="5">
				<tr>
					<td></td>
				</tr>
			</table>
		</FORM>
		
		<form name="form2" id="idmig0101" action="" method="post" onsubmit="">
			<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
				<tr>
			  		<td class="headerbar61" width="100%" colspan="1">商品信息列表</td>
				</tr>
			</table>
			
			
						
			<s:if test="#request.pageBean == null || #request.pageBean.size() == 0">
				<table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
					<tr>
						<td></td>
					</tr>
				</table>
				
				<table border="1" cellspacing="0" cellpadding="0" width="100%" height="">
					<tr>
						<td style="color: red ; font-weight: bolder;"><center>没有商品</center></td>
					</tr>
				</table>
			</s:if>
			<s:else>
				<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="0"  bgcolor="gray">
					<tr>
			  			<td  width="100%" colspan="1">
			  				<table  border="0" cellspacing="1" cellpadding="2" width="100%">
				  				<tr>
									<td  width="3%"  class="headerbar82">序号</td>
									<td  width="6%"  class="headerbar82">商品名</td>
									<td  width="9%" class="headerbar82">品牌</td>
									<td  width="9%" class="headerbar82">类型</td>					
									<td  width="9%" class="headerbar82">大小</td>
									<td  width="7%" class="headerbar82">颜色</td>
									<td  width="9%" class="headerbar82">材料</td>
									<td  width="7%" class="headerbar82">库存量</td>
									<td  width="9%" class="headerbar82">价格</td>
									<td  width="9%" class="headerbar82">权重</td>
									<td  width="11%" class="headerbar82">状态(1:已上架 0:未上架)</td>
									<td  class="headerbar82">删除</td>	
								</tr>
								
								<s:iterator value="#request.pageBean.list" status="status">
								
									<s:if test="#status.odd">
										<tr>
											<td class="gridbar11" align="center">${goodsId }</td>
											<td class="gridbar11" align="center">${goodsName }</td>
											<td class="gridbar11" align="center">${brand }</td>
											<td class="gridbar11" align="center">${model }</td>
											<td class="gridbar11" align="center">${size }</td>
											<td class="gridbar11" align="center">${color }</td>
											<td class="gridbar11" align="center">${material }</td>
											<td class="gridbar11" align="center">${storeNum }</td>
											<td class="gridbar11" align="center">${goodsPrice }</td>
											<td class="gridbar11" align="center">${weight }</td>
											<td class="gridbar11" align="center">${status }</td>
											<td class="gridbar11" align="center">
												<a href="<%=basePath%>/deleteGoods.action?goodsId=${goodsId}" class="delete">
													<input type="hidden" value="${goodsId }">
													<img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" />
												</a>
											</td>
										</tr>
									</s:if>
									
									<s:else>
										<tr>
											<td class="gridbar01" align="center">${goodsId }</td>
											<td class="gridbar01" align="center">${brand }</td>
											<td class="gridbar01" align="center">${name }</td>
											<td class="gridbar01" align="center">${model }</td>
											<td class="gridbar01" align="center">${color }</td>
											<td class="gridbar01" align="center">${material }</td>
											<td class="gridbar01" align="center">${storeNum }</td>
											<td class="gridbar01" align="center">${goodsPrice }</td>
											<td class="gridbar01" align="center">${weight }</td>
											<td class="gridbar01" align="center">${status }</td>
											<td class="gridbar01" align="center">
												<a href="<%=basePath%>/deleteGoods.action?goodsId=${goodsId}" class="delete">
													<input type="hidden" value="${goodsId }">
													<img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" />
												</a>
											</td>
										</tr>
									</s:else>
								</s:iterator>
			  				</table>
			  			</td>
					</tr>
				</table>
			</s:else>
		</form>
		
		<center>
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
	        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
	        
	        <s:if test="#request.pageBean.currentPage == 1">
	           	 首页&nbsp;上一页
	        </s:if>
	        
	        <s:else>
	            <a href="findAllGoods.action">首页</a>
	            &nbsp;
	            <a href="findAllGoods.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
	        </s:else>
	        	&nbsp;
	        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
	            <a href="findAllGoods.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
	            &nbsp;
	            <a href="findAllGoods.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
	        </s:if>
	        
	        <s:else>
	            	下一页&nbsp;尾页
	        </s:else>
	    
	    </center><br>
		
		<div id="div" style="color: black; display:none; border: 1px; width: 200px; height: 50px ; 
			background-color: yellow ; z-index: 1; position: absolute; left: 400px;
			top: 180px; padding-top: 15px; font-weight: bolder;font-size: 18px;padding-left: 55px">
		</div>
	</body>
</html>
