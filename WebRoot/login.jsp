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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/frame.css">
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.9.1.min.js"></script>
  </head>
  <script type="text/javascript">
    	function register(){
		  	document.getElementById('loginForm').action="<%=basePath%>stock/register.jsp";	
		}
		
		function login(){
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
				document.getElementById('loginForm').action="<%=basePath%>loginSeller.action";	
			}
			
		}
    </script>
  <body BACKGROUND="<%=basePath%>image/bg.gif">
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
		<tr>
		  <td width="100%" height="32"><TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD width="376"> <IMG SRC="<%=basePath%>image/top_1.jpg" WIDTH=376 HEIGHT=54 ALT=""></TD>
              <TD width="90%" align="right" valign="bottom" background="<%=basePath%>image/top_2.jpg"><table width="100%"  border="0" align="right" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="5%" align="center">&nbsp;</td>
                    <td width="80%" align="right">&nbsp;</td>
                    <td width="27%" align="right"><table width="75%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td width="128" height="24" align="right" ></td>
                        </tr>
                    </table></td>
                  </tr>
              </table></TD>
            </TR>
          </TABLE></td>
		</tr>
 
</table>

<s:if test="#request.mess == null">
		<div id="mess">${requestScope.mess }</div>
	</s:if>
	<s:if test="#request.mess != null">
		<div id="mess" style="visibility: visible;">${requestScope.mess }</div>
	</s:if>
	<form id="loginForm" method="post" action="">
		用户名:<input name="loginName" id="usercode" type="text" size="10">
		<span id="userDiv" class="style"></span>
		<br><br>
	   	密 &nbsp;&nbsp;码:<input name="password" id="password" type="password" size="10">
	   	<span id="pswDiv" class="style"></span>
	   	<br><br>
	   	管理员:<input type="radio" name="role" value="0"/> &nbsp;&nbsp;
	   	商家:<input type="radio" name="role" value="1"><br><br>
	    <input name="<%=basePath%>imageField" type="submit" onclick="login()" value="登录" alt="登录" width="42" height="32" border="0" >
	     &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
	    <input name="<%=basePath%>imageField" type="submit" onclick="register()" value="注册" alt="注册" width="42" height="32" border="0" >
	</form>

  </body>
</html>
