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
		<h2>新增用户</h2>
		<div class="manage">
			<form action="<%=basePath%>/manage/manage-result.jsp">
				<table class="form">
					<tr>
						<td class="field">用户名：</td>
						<td><input type="text" class="text" name="userName" value="" /></td>
					</tr>
					<tr>
						<td class="field">姓名：</td>
						<td><input type="text" class="text" name="name" value="" /></td>
					</tr>
					<tr>
						<td class="field">密码：</td>
						<td><input type="text" class="text" name="passWord" value="" /></td>
					</tr>
					<tr>
						<td class="field">性别：</td>
						<td><input type="radio" name="sex" value="1" checked="checked" />男 <input type="radio" name="sex" value="1" />女</td>
					</tr>
					<tr>
						<td class="field">出生日期：</td>
						<td>
							<select name="birthyear">
								<option value="2000">2000</option>
								<option value="1999">1999</option>
							</select>年
							<select name="birthmonth">
								<option value="12">12</option>
								<option value="11">11</option>
							</select>月
							<select name="birthday">
								<option value="2">2</option>
								<option value="1">1</option>
							</select>日
						</td>
					</tr>
					<tr>
						<td class="field">手机号码：</td>
						<td><input type="text" class="text" name="mobile" value="" /></td>
					</tr>
					<tr>
						<td class="field">送货地址：</td>
						<td><input type="text" class="text" name="address" value="" /></td>
					</tr>
					<tr>
						<td class="field">头像：</td>
						<td><input type="file" class="text" name="photo" /></td>
					</tr>
					<tr>
						<td></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="添加" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">Copyright &copy; 2015 广东海洋大学 All Rights Reserved.
		粤ICP证1000001号</div>
</body>
</html>
