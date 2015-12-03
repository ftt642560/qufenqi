<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
	<META HTTP-EQUIV="content-type" CONTENT="text/html; charset=UTF-8">
	<META HTTP-EQUIV="content-script-type" CONTENT="text/JavaScript">
	<META HTTP-EQUIV="content-style-type" CONTENT="text/css">
	<title>用户管理</title>
	<link rel="stylesheet" href="<%=basePath%>/css/cjpm.css">
	<script type="text/javascript" src="<%=basePath%>/js/cjcalendar.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/page.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.9.1.min.js"></script>
  </head>
  
  <SCRIPT LANGUAGE="javaScript">
	function goSearch(){
		if($("#username").val()==""){
			document.getElementById("userForm").action = "<%=basePath%>findAllUser.action";
		}else{
			document.getElementById("userForm").action = "<%=basePath%>findAllUser.action";
		}
	}
	
		$(function(){
				//1. 点击 delete 时, 弹出 确定是要删除 xx 的信息吗 ? 若确定, 执行删除, 若不确定, 则取消
				$(".delete").click(function(){
					alert("进来了");
					var sellerId = $(this).next(":input").val();//this代表a链接
					var flag = confirm("确定要删除"+ sellerId +"的信息吗？");
					alert(flag)
					if(flag){//真的要删除
						alert("进来了ooooo");
						var $tr = $(this).parent().parent();
						//执行删除，实行ajax的方法
						var url = this.href;
						var args = {"time":new Date()};
						$.post(url , args , function(data){//data如何返回
						alert("ftt");
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
</SCRIPT>

	<body background="<%=basePath%>/image/bg.gif">
		<FORM ID="userForm" method="post"  action="findSomeSeller.action"  >
          <table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
			<tr>
				<td class="headerbar61">查询商家信息</td>
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
					<td class="textbar81" width="15%">商家用户名</td>
					<td class="textbar01" width="35%">
						<input type="text" id="username" name="sellerName" size="20">
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
			  		<td class="headerbar61" width="100%" colspan="1">商家信息列表</td>
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
						<td style="color: red ; font-weight: bolder;"><center>没有商家</center></td>
					</tr>
				</table>
			</s:if>
			<s:else>
				<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="0"  bgcolor="gray">
					<tr>
			  			<td  width="100%" colspan="1">
			  				<table  border="0" cellspacing="1" cellpadding="2" width="100%">
				  				<tr>
									<td  width="8%"  class="headerbar82">序号</td>
									<td  width="10%"  class="headerbar82">用户名</td>
									<td  width="8%" class="headerbar82">密码</td>
									<td  width="8%" class="headerbar82">姓名</td>					
									<td  width="12%" class="headerbar82">身份证</td>
									<td  width="16%" class="headerbar82">电话</td>
									<td  width="13%" class="headerbar82">邮箱</td>
									<td  width="5%" class="headerbar82">角色(1:已认证 0：未通过)</td>
									<td  width="13%" class="headerbar82">认证的管理员</td>
									<td  class="headerbar82">删除</td>	
								</tr>
								
								<s:iterator value="#request.pageBean.list" status="status">
								
									<s:if test="#status.odd">
										<tr>
											<td class="gridbar11" align="center">${sellerId }</td>
											<td class="gridbar11" align="center">${sellerName }</td>
											<td class="gridbar11" align="center">${sellerpassword }</td>
											<td class="gridbar11" align="center">${name }</td>
											<td class="gridbar11" align="center">${idCard }</td>
											<td class="gridbar11" align="center">${telephone }</td>
											<td class="gridbar11" align="center">${email }</td>
											<td class="gridbar11" align="center">${role }</td>
											<td class="gridbar11" align="center">${manager.managName}</td>
											<td class="gridbar11" align="center">
												<a href="<%=basePath%>/deleteSeller.action?sellerId=${sellerId}" class="delete">
													<input type="hidden" value="${sellerId }">
													<img src="<%=basePath%>/image/del.gif" align="bottom" border="0" alt="删除" />
												</a>
											</td>
										</tr>
									</s:if>
									
									<s:else>
										<tr>
											<td class="gridbar01" align="center">${sellerId }</td>
											<td class="gridbar01" align="center">${sellerName }</td>
											<td class="gridbar01" align="center">${sellerpassword }</td>
											<td class="gridbar01" align="center">${name }</td>
											<td class="gridbar01" align="center">${idCard }</td>
											<td class="gridbar01" align="center">${telephone }</td>
											<td class="gridbar01" align="center">${email }</td>
											<td class="gridbar01" align="center">${role }</td>
											<td class="gridbar01" align="center">${manager.managName }</td>
											<td class="gridbar01" align="center">
												<a href="<%=basePath%>/deleteSeller.action?sellerId=${sellerId}" class="delete">
													<input type="hidden" value="${sellerId }">
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
	</body>
</html>
