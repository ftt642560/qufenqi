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
	<title>在线通知</title>
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
  
  <body BACKGROUND="<%=basePath%>/image/bg.gif">
	    <form name="form2" id="idmig0101" action="" method="post" onsubmit="">
			<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="2"  bgcolor="gray">
				<tr>
			  		<td class="headerbar61" width="100%" colspan="1">商家信息列表</td>
				</tr>
			</table>
			
			<s:if test="#request.seller == null">
				<table border=0 cellspacing=0 cellpadding=0 width="100%" height=5>
					<tr>
						<td></td>
					</tr>
				</table>
				
				<table border="1" cellspacing="0" cellpadding="0" width="100%" height="">
					<tr>
						<td style="color: red ; font-weight: bolder;"><center>没有该商家</center></td>
					</tr>
				</table>
			</s:if>
			<s:else>
				<table border="0" width="100%" id="table1" cellspacing="0"  cellpadding="0"  bgcolor="gray">
					<tr>
			  			<td  width="100%" colspan="1">
			  				<table  border="0" cellspacing="1" cellpadding="2" width="100%">
				  				<tr>
									<td  width="4%"  class="headerbar82">序号</td>
									<td  width="6%"  class="headerbar82">用户名</td>
									<td  width="12%" class="headerbar82">密码</td>
									<td  width="8%" class="headerbar82">姓名</td>					
									<td  width="12%" class="headerbar82">身份证</td>
									<td  width="16%" class="headerbar82">电话</td>
									<td  width="13%" class="headerbar82">邮箱</td>
									<td  width="14%" class="headerbar82">角色(1:已认证 0：未通过)</td>
									<td  width="13%" class="headerbar82">认证的管理员</td>
								</tr>
								
								<s:iterator value="#request.seller" status="status">
								
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
	            <a href="findSelf.action">首页</a>
	            &nbsp;
	            <a href="findSelf.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
	        </s:else>
	        	&nbsp;
	        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
	            <a href="findSelf.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
	            &nbsp;
	            <a href="findSelf.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
	        </s:if>
	        
	        <s:else>
	            	下一页&nbsp;尾页
	        </s:else>
	    
	    </center><br>
  </body>
</html>
