<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
	<script type="text/javascript">
		$(function(){
			$("#userid").val("${sessionScope.curUser[0].id}");
		});
		function save(){
			if(document.getElementById('password0').value.trim() == "") { 
				  document.getElementById('password0Span').innerHTML = "旧密码不能为空";
				  return false; 
			}
			if(document.getElementById('password1').value.trim() == "") { 
				document.getElementById('password1Span').innerHTML = "新密码不能为空";
				  return false; 
			}
			if(document.getElementById('password2').value.trim() == "") { 
				document.getElementById('password2Span').innerHTML = "新密码不能为空";
				  alert("旧密码不能为空");
				  return false; 
			}
			if(document.getElementById('password2').value.trim()!=document.getElementById('password1').value.trim()) { 
				  document.getElementById('password2Span').innerHTML = "两次密码不一致,请重新填写";
				  return false; 
			}
			$.ajax({  
		        url : "<%=basePath%>modifySeller.action",  
		        type : "POST",
		        data:$("#modifyPwd").serialize(),
		        success : function(data) {
					alert(data.result);
					if(data.result!=1)
						location.href="<%=basePath%>/system/index.jsp";
					
		        },
		        error:function(){
		        	console.log("修改出现异常");
		        }
    		}); 
		}
	</script>
  </head>
  
  <body BACKGROUND="<%=basePath%>/image/bg.gif">
	    <FORM ID="modifyPwd" method="post" action="">
			<table border=0 cellspacing=0 cellpadding=2 width="100%" bgcolor="gray">
				<tr>
					<td class="headerbar61"> 修改密码</td>
					<td class="headerbar61">
						<p align="right">
							<input type="submit" value=" 保 存 " onClick="JavaScript:save();">
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
						<td class="textbar81" width="15%">旧密码</td>
						<td class="textbar01" width="85%">
							<input type="password" id="password0" name="oldPassword" size="30" >
							<span id="password0Span"></span>
						</td>				
					</tr>	
					<tr>
						<td class="textbar81" width="15%">新密码</td>
						<td class="textbar01" width="85%">
							<input type="password" id="password1" size="30" >
							<span id="password1Span"></span>
						</td>				
					</tr>	
					<tr>
						<td class="textbar81" width="15%">确认密码</td>
						<td class="textbar01" width="85%">
							<input type="password" id="password2" name="seller.sellerPassword" size="30" >
							<span id="password2Span"></span>
						</td>				
					</tr>			
				</table>
	
		</FORM>
  </body>
</html>
