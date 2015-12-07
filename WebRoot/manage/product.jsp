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
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>/css/style.css" />
<script type="text/javascript"
	src="<%=basePath%>/scripts/function-manage.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){
				//1. 点击 delete 时, 弹出 确定是要删除 xx 的信息吗 ? 若确定, 执行删除, 若不确定, 则取消
				$(".delete").click(function(){
					var goodsId = $(this).next(":input").val();//this代表a链接
					var flag = confirm("确定要删除"+ goodsId +"的信息吗？");
					alert(flag+"11");
					if(flag){//真的要删除
						alert(1111);
						var $tr = $(this).parent().parent();
						//执行删除，实行ajax的方法
						var url = this.href;
						var args = {"time":new Date()};
						$.post(url , args , function(data){//data如何返回
							alert(111);
							alert(data);
								//若data的返回值为1.则提示删除成功，且把当前行删除，
								if(data == 1){
									$tr.remove();
									document.getElementById('div').innerHTML="删除成功";
								}else{
									//若data的返回值不是1，提示删除失败
									document.getElementById('div').innerHTML="删除失败！";
								}
								$("#div").show();
							});
					}
					//(先需要)取消超链接的默认行为
					return false;
				});
		});
</script>
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
							<a href="<%=basePath%>/manage/user.jsp">用户</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/product.jsp">商品</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/order.jsp">订单</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/guestbook.jsp">留言</a>
						</li>
						<li>
							<a href="<%=basePath%>/manage/news.jsp">新闻</a>
						</li>
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
								<a href="<%=basePath%>findAllUser.action">用户管理</a>
							</dd>
							<dt>商品管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/productClass-add.jsp">新增</a>
								</em><a href="<%=basePath%>/goods/findAllGoods.action">分类管理</a>
							</dd>
							<dd>
								<em><a href="<%=basePath%>/manage/product-add.jsp">新增</a>
								</em><a href="<%=basePath%>/goods/findAllGoods.action">商品管理</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/order.jsp">订单管理</a>
							</dd>
							<dt>申诉管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/guestbook.jsp">申诉管理</a>
							</dd>
							<dt>新闻管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/news-add.jsp">新增</a>
								</em><a href="<%=basePath%>/manage/news.jsp">新闻管理</a>
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
								<a href="<%=basePath%>/goods/findAllGoods.action">分类管理</a>
							</dd>
							<dd>
								<a href="<%=basePath%>/goods/findAllGoods.action">商品管理</a>
							</dd>
							<dt>订单管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/order.jsp">订单管理</a>
							</dd>
							<dt>申诉管理</dt>
							<dd>
								<a href="<%=basePath%>/manage/guestbook.jsp">申诉管理</a>
							</dd>
							<dt>新闻管理</dt>
							<dd>
								<em><a href="<%=basePath%>/manage/news-add.jsp">新增</a>
								</em><a href="<%=basePath%>/manage/news.jsp">新闻管理</a>
							</dd>
						</dl>
					</s:else>
				</div>
			</div>
		<div class="main">
			<h2>商品管理</h2>
			<div class="manage">
				<table class="list">
					<tr>
						<td  width="5%">序号</td>
						<td  width="8%">商品名</td>
						<td  width="9%">品牌</td>
						<td  width="9%">类型</td>					
						<td  width="9%">大小</td>
						<td  width="7%">颜色</td>
						<td  width="9%">材料</td>
						<td  width="7%">库存量</td>
						<td  width="9%">价格</td>
						<td  width="9%">权重</td>
						<td  width="5%">状态</td>
						<td>删除</td>
					</tr>
						<s:iterator value="#request.pageBean.list" status="status">
							<tr>
								<td>${goodsId }</td>
								<td>${goodsName }</td>
								<td>${brand }</td>
								<td>${model }</td>
								<td>${size }</td>
								<td>${color }</td>
								<td>${material }</td>
								<td>${storeNum }</td>
								<td>${goodsPrice }</td>
								<td>${weight }</td>
								<td>${status }</td>
								<td>
									<a href="<%=basePath%>/goods/deleteGoods.action?goodsId=${goodsId}" class="delete">
										<input type="hidden" value="${goodsId }">
										<img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" />
									</a>
								</td>
							</tr>				
						</s:iterator>					
				</table>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="footer">Copyright &copy; 2010 北大青鸟 All Rights Reserved.
		京ICP证1000001号</div>
</body>
</html>
