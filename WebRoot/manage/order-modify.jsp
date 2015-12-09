<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
			<h2>修改订单</h2>
			<div class="manage">
				<form action="<%=basePath%>/updateOrderMess.action">
					<table border="1px" style="font-size: 16px">
						<tr>
							<td class="field">订单ID：</td>
							<td><input type="text" class="text" name="order.orderId"
								value="${order.orderId }" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td class="field">商品名：</td>
							<td>
								<input type="text" class="text" name="order.goods.goodsName" 
								value="${order.goods.goodsName }" readonly="readonly"/>
							</td>
						</tr>
						<tr>
							<td class="field">运费:</td>
							<td><input type="text" class="text" name="order.carriage" value="${order.carriage }" />
							</td>
						</tr>
						<tr>
							<td class="field">总价</td>
							<td><input type="text" class="text" name="order.orderAmount" value="${order.orderAmount }" />
							</td>
						</tr>
						<tr>
							<td class="field">订货人信息信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">订货人ID：</td>
										<td><input type="text" class="text" name="order.user.userId" 
											value="${order.user.userId }" />
										</td>
										<td class="field">订货人：</td>
										<td><input type="text" class="text" name="order.user.userName" 
											value="${order.user.userName }" />
										</td>
										<td class="field">收货地址：</td>
										<td><input type="text" class="text" name="order.user.password" 
											value="${order.user.password }" />
										</td>
										<td class="field">收货人电话：</td>
										<td><input type="text" class="text" name="order.user.email" 
											value="${order.user.email }" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						
						<tr>
							<td class="field">订货人信息信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">订货人ID：</td>
										<td><input type="text" class="text" name="order.user.userId" 
											value="${order.user.userId }" />
										</td>
										<td class="field">订货人：</td>
										<td><input type="text" class="text" name="order.user.userName" 
											value="${order.user.userName }" />
										</td>
										<td class="field">收货地址：</td>
										<td><input type="text" class="text" name="order.user.password" 
											value="${order.user.password }" />
										</td>
										<td class="field">收货人电话：</td>
										<td><input type="text" class="text" name="order.user.email" 
											value="${order.user.email }" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="field">收货信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">收货人ID：</td>
										<td><input type="text" class="text" name="order.delivery.deliveryId" 
											value="${order.delivery.deliveryId }" />
										</td>
										<td class="field">收货人：</td>
										<td><input type="text" class="text" name="order.delivery.contactPersonName" 
											value="${order.delivery.contactPersonName }" />
										</td>
										<td class="field">收货地址：</td>
										<td><input type="text" class="text" name="order.delivery.address" 
											value="${order.delivery.address }" />
										</td>
										<td class="field">收货人电话：</td>
										<td><input type="text" class="text" name="order.delivery.telephone" 
											value="${order.delivery.telephone }" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="field">订单状态：</td>
							<td><input type="text" class="text" name="order.orderStatus" value="${order.orderStatus }" />
							</td>
						</tr>
						<tr>
							<td class="field">分期信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">分期：</td>
										<td><input type="text" class="text" name="order.periodPlan.periodId" 
										value="${order.periodPlan.periodId }" readonly="readonly"/>
										</td>
										<td class="field">分期月数：</td>
										<td><input type="text" class="text" name="order.periodPlan.periodNumber" 
											value="${order.periodPlan.periodNumber }" />
										</td>
										<td class="field">首付：</td>
										<td><input type="text" class="text" name="order.periodPlan.downPayment" 
											value="${order.periodPlan.downPayment }" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="field">还款信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">还款信息：</td>
										<td><input type="text" class="text" name="order.repayment.repaymentId" 
										value="${order.repayment.repaymentId }" />
										</td>
										<td class="field">分期月数：</td>
										<td><input type="text" class="text" name="order.repayment.finishPeriodNum" 
											value="${order.repayment.finishPeriodNum }" />
										</td>
										<td class="field">首付：</td>
										<td><input type="text" class="text" name="order.repayment.needPeriodNum" 
											value="${order.repayment.needPeriodNum }" />
										</td>
										<td class="field">首付：</td>
										<td><input type="text" class="text" name="order.repayment.onePeriodMoney" 
											value="${order.repayment.onePeriodMoney }" />
										<td class="field">首付：</td>
										<td><input type="text" class="text" name="order.repayment.repaymentState" 
											value="${order.repayment.repaymentState }" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="field">物流信息：</td>
							<td>
								<table>
									<tr>
										<td class="field">物流：</td>
										<td><input type="text" class="text" name="order.logistics.logisticsId" value="${order.logistics.logisticsId }" />
										</td>
										<td class="field">分期月数：</td>
										<td><input type="text" class="text" name="order.logistics.company" 
											value="${order.logistics.company }" />
										</td>
										<td class="field">首付：</td>
										<td><input type="text" class="text" name="order.logistics.logisticsStatus" 
											value="${order.logistics.logisticsStatus }" />
										</td>
									</tr>
								</table>
							</td>
						
						</tr>
						<tr>
							<td></td>
							<td>
								<label class="ui-blue"><input type="submit"
									name="submit" value="更新" />
								</label>
								<label class="ui-blue"><input type="reset"
									name="reset" value="取消" />
								</label>
							</td>
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
