<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>信息修改</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>/css/user-style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath%>/js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>/js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="stylesheet" href="css/etalage.css">
</head>
<script>
	function update(){
	 alert(22);
	 var tele = document.getElementById('tele').value.trim();
	 if(tele == ""){
	 	alert("请输入电话");
		return false; 
	 }
	 
	 $.ajax({  
	        url : "<%=basePath%>updateUserMess.action",  
	        type : "POST",
	        data:$("#form1").serialize(),
	        success : function(data) {
	        	alert(data);
				if(data==1){
					document.getElementById('tele').innerHTML = tele;
					document.getElementById('div').innerHTML="修改成功";
				}else{
					document.getElementById('div').innerHTML="修改失败";
				}
	        },
   		});
	}		
</script>
<body>
<iframe id="header" src="<%=basePath%>/header.jsp"  scrolling="no" frameborder="0"></iframe>

<nav class="nav">
  <ul class="nav_menu">
    <li class="nav_menu-item"><a href="<%=basePath%>/index.jsp" target="_top">首页</a></li>
    <li class="nav_menu-item"><a href="" target="_top">商品分类</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_top">手机</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">电脑/平板</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">摄影摄像</a></li>
		<li class="nav_submenu-item"> <a href="" target="_top">潮流数码</a></li>
      </ul>
    </li>
    <li class="nav_menu-item"><a href="" target="_top">特卖商品</a>
      <ul class="nav_submenu">
        <li class="nav_submenu-item"> <a href="" target="_top">零首付</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">三期免息</a></li>
        <li class="nav_submenu-item"> <a href="" target="_top">限时特惠</a></li>
      </ul>
    </li>
   
  </ul>
</nav>	
 
 <div class="user-container">  
   <div class="main-container">
	 
	<iframe id="lefter" src="<%=basePath%>/lefter.jsp"  scrolling="no" frameborder="0"></iframe>
		<div class="p-info" >
		<h2>信息修改</h2>
			<div class="line" style="width: 650px"></div>
			<form id="form1">
			     <br>用户名:<input type="text" value="${user.userName }" name="user.userName" size="24" readonly="readonly" style="color: #999"/><br>	 
				 <br>姓&nbsp;名:<input type="text" value="${user.name }" size="24" readonly="readonly" style="color: #999"/><br>
			     <br>邮&nbsp;箱:<input  type="text" value="${user.email }" size="24" readonly="readonly" style="color: #999"/><br>
				 <br>电&nbsp;话:<input  id="tele" onchange="updateValue(this.value)" name="user.telephone" type="text" value="${user.telephone }" size="20" /><br>
				 <br>身份证:<input type="text" value="${user.idCard }" size="20" readonly="readonly" style="color: #999"/><br>
				 <br>信誉度:<input type="text" value="${user.quota }" size="20" readonly="readonly" style="color: #999"/><br>
				 <br>状&nbsp;态:<input type="text" value="${user.status }" size="20" readonly="readonly" style="color: #999"/><br>
			     <br><br>
		     	<input type="submit" name="submit" value="&nbsp 提交 &nbsp" onclick="update()"/>&nbsp;&nbsp;
		     	&nbsp;&nbsp;<input type="reset" value="&nbsp; 清空 &nbsp;" >
		      </form>
		  <br></br>
		</div>
	</div>
</div>		
		<div id="div" style="color: black; display:none; border: 1px; width: 200px; height: 50px ; 
			background-color: yellow ; z-index: 1; position: absolute; left: 400px;
			top: 180px; padding-top: 15px; font-weight: bolder;font-size: 18px;padding-left: 55px">
		</div>	
 

<div class="footer">
	<div class="f-container">
		
		<ul class="footer_nav">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">商品</a></li>
		  <li><a href="#">商家</a></li>
		  
		  <li><a href="#">关于我们</a></li>
		  <li><a href="<%=basePath%>/contact.jsp">联系我们</a></li>
		</ul>
		
	</div>
</div>

</body>
</html>		