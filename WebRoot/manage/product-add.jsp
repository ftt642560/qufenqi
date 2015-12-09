<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
		<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 趣分期</title>
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/style.css" />
<script type="text/javascript" src="<%=basePath%>/scripts/function-manage.js"></script>
</head>
<body>
	<div id="header" class="wrap">
			<div id="logo">
				<img src="<%=basePath%>/images/logo.gif" />
			</div>
			<div class="help">
				<a href="<%=basePath%>/index.jsp">返回前台页面</a>
			</div>
			<div class="navbar">
				<ul class="clearfix">
						<li class="current">
							<a href="<%=basePath%>/manage/index.jsp">首页</a>
						</li>
						<li>
							<s:if test="#session.role == 1">
								<a href="<%=basePath%>findSelf.action">用户</a>
							</s:if>
							<s:else>
								<a href="<%=basePath%>findAllUser.action">用户</a>
							</s:else>
						</li>
						<li>
							<s:if test="#session.role == 1">
								<a href="<%=basePath%>/goods/sellerquerygoods.action?sellerName=${seller.sellerName }">商品</a>
							</s:if>
							<s:else>
								<a href="<%=basePath%>/goods/findAllGoods.action">商品</a>
							</s:else>
						</li>
						<li>
							<s:if test="#session.role == 1">
								<a href="<%=basePath%>/queryOrderBySelleName.action">订单</a>
							</s:if>
							<s:else>
								<a href="<%=basePath%>/findAllOrders.action">订单</a>
							</s:else>
						</li>
						<s:if test="#session.role != 1">
							<li>
								<a href="<%=basePath%>/<%=basePath%>showchart.action">统计销量</a>
							</li>
						</s:if>
				</ul>
			</div>
		</div>
		<div id="childNav">
			<div class="welcome wrap">
				<s:if test="#session.role == 1">
					商家${seller.sellerName }您好，欢迎回到趣分期管理后台。
				</s:if>
				<s:else>
					管理员${manager.managName }您好，欢迎回到趣分期管理后台。
				</s:else>
			</div>
		</div>
		<div id="position" class="wrap">
			您现在的位置：<a href="<%=basePath%>/manage/index.jsp">趣分期</a> &gt; 管理后台
		</div>
		<div id="main" class="wrap">
			<div id="menu-mng" class="lefter">
				<div class="box">
					<s:if test="#session.role == 1">
						<dl>
							<dt>个人信息管理</dt>
							<dd>
								<a href="<%=basePath%>findSelf.action">个人信息管理</a>
							</dd>
							<dt>商品管理</dt>
							<dd>
								<em><a href="<%=basePath%>goods/findallgoodstype.action">新增</a>
								</em><a href="<%=basePath%>/goods/sellerquerygoods.action?sellerName=${seller.sellerName }">商品管理${seller.sellerId }</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/queryOrderBySelleName.action">订单管理${seller.sellerName }</a>
							</dd>
						</dl>
					</s:if>
					<s:else>
						<dl>
							<dt>用户管理</dt>
							<dd>
								<a href="<%=basePath%>findAllUser.action">用户管理</a>
							</dd>
							<dt>商家管理</dt>
							<dd>
								<a href="<%=basePath%>/findAll.action">商家管理</a>
							</dd>
							<dt>商品信息</dt>
							<dd>
								<a href="<%=basePath%>/goods/findAllGoods.action">商品管理</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/findAllOrders.action">订单管理</a>
							</dd>
							<dt>统计</dt>
							<dd>
								<a href="<%=basePath%>showchart.action">统计销量</a>
							</dd>
						</dl>
					</s:else>
				</div>
			</div>
		<div class="main">
			<h2>添加商品</h2>
			<div class="manage">
				<s:form action="/goods/addgoods.action" theme="simple" method="POST">
					<table class="form">
						<tr>
							<td class="field">商家名称：</td>
							<td>
								<input type="text" value="${seller.sellerName }" 
									name="seller.sellerName" readonly="readonly"/>
							</td>
						</tr>
						<tr>
							<td class="field">商品名称：</td>
							<td>
								<input type="text" value="" name="goods.goodsName" />
							</td>
						</tr>
						<tr>
							<td class="field">品牌：</td>
							<td>
								<input type="text" value="" name="goods.brand" />
							</td>
						</tr>
						<tr>
							<td class="field">型号：</td>
							<td>
								<input type="text" value="" name="goods.model" />
							</td>
						</tr>
						<tr>
							<td class="field">大小：</td>
							<td>
								<input type="text" value="" name="goods.size" />
							</td>
						</tr>
						<tr>
							<td class="field">颜色：</td>
							<td>
								<input type="text" value="" name="goods.color" />
							</td>
						</tr>
						<tr>
							<td class="field">材料：</td>
							<td>
								<input type="text" value="" name="goods.material" />
							</td>
						</tr>
						<tr>
							<td class="field">商品价格：</td>
							<td>
								<input type="text" value="" name="goods.goodsPrice" />
							</td>
						</tr>
						<tr>
							<td class="field">商品数量：</td>
							<td>
								<input type="text" value="" name="quantity" />
							</td>
						</tr>
						<tr>
							<td colspan="1">
								<center>
									<input type="submit" value="添加" />
								</center>
							</td>
						</tr>
					</table>
				</s:form>
				
			
			<!-- 
				<form action="<%=basePath%>/manage/manage-result.jsp">
					<table class="form">
						<tr>
							<td class="field">商品名称：</td>
							<td><input type="text" class="text" name="productName"
								value="铁三角 Audio-Technica ATH-EQ300M-SV 银色 挂耳式耳机" />
							</td>
						</tr>
						<tr>
							<td class="field">所属分类：</td>
							<td><select name="parentId">
									<option value="1">电器</option>
									<option value="3">├ 电器</option>
									<option value="3">└ 电器</option>
									<option value="2">衣服</option>
									<option value="3">├ 电器</option>
									<option value="3">└ 电器</option>
							</select></td>
						</tr>
						<tr>
							<td class="field">商品图片：</td>
							<td><input type="file" class="text" name="photo" />
							</td>
						</tr>
						<tr>
							<td class="field">商品价格：</td>
							<td><input type="text" class="text tiny" name="productPrice" />
								元</td>
						</tr>
						<tr>
							<td class="field">品牌：</td>
							<td><input type="text" class="text" name="productName" />
							</td>
						</tr>
						<tr>
							<td class="field">库存：</td>
							<td><input type="text" class="text tiny" name="productName" />
							</td>
						</tr>
						<tr>
							<td class="field">条码号：</td>
							<td><input type="text" class="text" name="productName" />
							</td>
						</tr>
						<tr>
							<td></td>
							<td><label class="ui-blue"><input type="submit"
									name="submit" value="添加" />
							</label>
							</td>
						</tr>
					</table>
				</form>
				 -->
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2015 广东海洋大学 All Rights Reserved.
		粤ICP证1000001号</div>
</body>
</html>
