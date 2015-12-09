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
		<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.min.js"></script>
	</head>
		<script type="text/javascript">
			$(function(){
				//1. 点击 delete 时, 弹出 确定是要删除 xx 的信息吗 ? 若确定, 执行删除, 若不确定, 则取消
				$(".delete").click(function(){
					var userId = $(this).next(":input").val();//this代表a链接
					var flag = confirm("确定要删除"+ userId +"的信息吗？");
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
								<a href="<%=basePath%>/goods/findAllGoods.action">分类管理</a>
							</dd>
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
				<h2>用户管理</h2>
				<div class="manage">
					<table class="list">
						<tr>
							<th>ID</th>
							<th>用户名</th>
							<th>姓名</th>
							<th>电话</th>
							<th>身份证</th>
							<th>邮箱</th>
							<th>信誉度</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
						
						<s:iterator value="#request.pageBean.list" status="status">
								<tr>
									<td class="first w4 c">${userId }</td>
									<td class="w1 c">${userName }</td>
									<td class="gw4 c">${name }</td>
									<td class="w1 c">${telephone }</td>
									<td class="w2 c">${idCard }</td>
									<td>${email }</td>
									<td>${quota }</td>
									<td>${status }</td>
									<td class="w1 c">
										<a href="<%=basePath%>/delete.action?userId=${userId}" class="delete">
											<input type="hidden" value="${userId }">
											<img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" />
										</a>
									</td>
								</tr>				
						</s:iterator>
					</table>
				</div>
				
				<center style="font-size: 14px">
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
			        <font size="3">共<font color="red"><s:property value="#request.pageBean.allRow"/></font>条记录</font><br><br>
			        
			        <s:if test="#request.pageBean.currentPage == 1">
			           	 首页&nbsp;上一页
			        </s:if>
			        
			        <s:else>
			            <a href="findAllUser.action">首页</a>
			            &nbsp;
			            <a href="findAllUser.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
			        </s:else>
			        	&nbsp;
			        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
			            <a href="findAllUser.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
			            &nbsp;
			            <a href="findAllUser.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
			        </s:if>
			        
			        <s:else>
			            	下一页&nbsp;尾页
			        </s:else>
			    
			   </center><br>
				
			</div>
			
			<div id="div" style="color: black; display:none; border: 1px; width: 200px; height: 50px ; 
				background-color: yellow ; z-index: 1; position: absolute; left: 400px;
				top: 180px; padding-top: 15px; font-weight: bolder;font-size: 18px;padding-left: 55px">
			</div>
			
			<div class="clear"></div>
		</div>
		<div id="footer">Copyright &copy; 2015 广东海洋大学 All Rights Reserved.
		粤ICP证1000001号</div>
	</body>
</html>
