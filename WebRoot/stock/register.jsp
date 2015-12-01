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
	<TITLE>趣分期后台管理系统</TITLE>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/register.css">
  </head>
  <body BACKGROUND="<%=basePath%>image/bg.gif">
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td width="100%" height="32"><TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD width="376"> <IMG SRC="<%=basePath%>image/top_1.jpg" WIDTH=376 HEIGHT=54 ALT=""></TD>
              <TD width="90%" align="right" valign="bottom" background="<%=basePath%>image/top_2.jpg">
              	<table width="100%"  border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="5%" align="center">&nbsp;</td>
                    <td width="80%" align="right">&nbsp;</td>
                    <td width="27%" align="right"><table width="75%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="128" height="24" align="right" ></td>
                        </tr>
                    </table></td>
                  </tr>
              	</table>
              </TD>
            </TR>
          </TABLE>
         </td>
		</tr>
	</table>
	
	<s:if test="#request.mess == null">
		<div id="mess">${requestScope.mess }</div>
	</s:if>
	<s:if test="#request.mess != null">
		<div id="mess" style="visibility: visible;">${requestScope.mess }</div>
	</s:if>
    <form id="registerForm" action="" method="post">
    	用户名：<input id="usercode" type="text" name="seller.sellerName" size="20">
    	<span id="userDiv" class="style"></span>
    	<br><br>
    	密&nbsp;码：<input id="password" type="password" name="seller.sellerPassword" id="usercode" size="20">
    	<span id="pswDiv" class="style"></span>
    	<br><br>
    	姓&nbsp;名：<input id="name" type="text" name="seller.name" id="usercode" size="20">
    	<span id="nameDiv" class="style"></span>
    	<br><br>
    	身份证：<input id="idCard" type="text" name="seller.idCard" id="usercode" size="20">
    	<span id="idCardDiv" class="style"></span>
    	<br><br>
    	电&nbsp;话：<input id="phone" type="text" name="seller.telephone" id="usercode" size="20">
    	<span id="phoneDiv" class="style"></span>
    	<br><br>
    	邮&nbsp;箱：<input id="email" type="text" name="seller.email" id="usercode" size="20">
    	<span id="emailDiv" class="style"></span>	
    	<br><br>
    	角&nbsp;色：<select id="role" name="seller.role" style="width:174px">
    		<option value ="role">商家</option>
  			<option value ="role">管理员</option>
    	</select>
    	<br><br>
    	&nbsp;&nbsp;&nbsp;&nbsp;<input name="<%=basePath%>imageField" type="submit" onclick="registerBg()" value="提交" alt="登录" width="42" height="32" border="0" >
	      &nbsp;&nbsp;&nbsp;&nbsp;
	    <input name="<%=basePath%>imageField" type="reset" value="取消" alt="注册" width="42" height="32" border="0" >
    </form>
    
    <script type="text/javascript">
		function registerBg(){
			if(document.getElementById('usercode').value.trim() == "") { 
				  document.getElementById('userDiv').innerHTML = "用户名不能为空";
				  return false; 
			}else{
				 document.getElementById('userDiv').innerHTML = "";
			}
			if(document.getElementById('password').value.trim() == "") { 
				   document.getElementById('pswDiv').innerHTML = "用户名密码不能为空";
				  return false; 
			}else{
				document.getElementById('pswDiv').innerHTML = "";
			}
			if(document.getElementById('name').value.trim() == "") { 
				   document.getElementById('nameDiv').innerHTML = "真实姓名不能为空";
				  return false; 
			}else{
				document.getElementById('nameDiv').innerHTML = "";
			}
			if(document.getElementById('idCard').value.trim() == "") { 
				   document.getElementById('idCardDiv').innerHTML = "身份证号不能为空";
				  return false; 
			}else{
				document.getElementById('idCardDiv').innerHTML = "";
			}
			if(document.getElementById('phone').value.trim() == "") { 
				   document.getElementById('phoneDiv').innerHTML = "电话不能为空";
				  return false; 
			}else{
				document.getElementById('phoneDiv').innerHTML = "";
			}
			if(document.getElementById('email').value.trim() == "") { 
				   document.getElementById('emailDiv').innerHTML = "邮箱不能为空";
				  return false; 
			}else{
				document.getElementById('emailDiv').innerHTML = "";
			}
			if(document.getElementById('role').value.trim() == "") { 
				   document.getElementById('roleDiv').innerHTML = "角色不能为空";
				  return false; 
			}else{
				document.getElementById('registerForm').action = "<%=basePath%>/sellerRegister.action";
			}
		}
    </script>
  </body>
</html>
	