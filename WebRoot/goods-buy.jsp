<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<%=basePath%>css/user-style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="<%=basePath%>js/jquery.easydropdown.js"></script>
<!-- start menu -->

<link href="<%=basePath%>css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>css/menu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<link rel="stylesheet" href="<%=basePath%>css/etalage.css">
<script>
  var idOld = "";
  var idNew = "";
  function myFun(id){    
    if(idNew != "") {
      idOld = idNew;
    }
    idNew = id;
    document.getElementById(idNew).style.border = "5px solid #1bccf7";
    if(idOld != "") {
      document.getElementById(idOld).style.border = "2px solid #dea32c";
    }
  }
  var idOld1 = "";
  var idNew1 = "";
  function myType(id){    
    if(idNew1 != "") {
      idOld1 = idNew1;
    }
    idNew1 = id;
    document.getElementById(idNew1).style.border = "5px solid #1bccf7";
    if(idOld1 != "") {
      document.getElementById(idOld1).style.border = "2px solid #dea32c";
    }
  }
 var idOld2 = "";
  var idNew2 = "";
  function myNum(id){    
    if(idNew2 != "") {
      idOld2 = idNew2;
    }
    idNew2 = id;
    document.getElementById(idNew2).style.border = "5px solid #1bccf7";
    if(idOld2 != "") {
      document.getElementById(idOld2).style.border = "2px solid #dea32c";
    }
  }
  
   function add() {
     var obj = document.getElementById("tx1");
         obj.value = parseInt(obj.value) + 1;
         }

   function remove() {
     var obj = document.getElementById("tx1");
       if(obj.value == 0) {
              return;
             }
       obj.value = parseInt(obj.value) - 1;
         }

  
  
  </script>

</head>

<!-- <iframe id="header" src="header.jsp"  scrolling="no" frameborder="0"></iframe>  -->
<div class="header_top">
  <div class="container">
  	<div class="header_top-box">
  
			 <div class="cssmenu">
				<ul>
					<li id="loginLi" style="color: #fff ; font-size: 13px; ">
						
						<s:if test="#session.user == null">
							未登录
						</s:if>
						<s:else>
							欢迎${user.userName }的登录！
						</s:else>
					</li>
					<li class="active"><a href="<%=basePath%>/user-login.jsp" target="_top">登录</a></li> 
					<li><a href="<%=basePath%>/register.jsp" target="_top">注册</a></li>
					<li><a href="<%=basePath%>/personal center.jsp" target="_top">个人中心</a></li> 
					
					<li id="quitLi" style="font-size: 13px;">
						<a href="<%=basePath%>quitUser.action" class="quit">注销</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
   </div>
</div>
</div>
<div class="header_bottom">
	<div class="container">
	 <div class="header_bottom-box">
		
			<div class="logo">
				<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>/image/logo.png" alt=""/></a>
			</div>
			
			<script language="javascript">
				function searchGoods()
				{
					var targetForm = document.forms[0];
					targetForm.action="<%=basePath%>goods/usersearchgoods.action";
				}
			</script>
			
			<form method="post" action="">
				<div class="search">
				  <input type="text" value="" name="goodsName" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}">
				  <input type="submit" value=""  onClick="searchGoods();">
				 
				 
				<nav id="navigation">
				  <ul>
				        <li class="hotSearchings"><a href="">iphone 7</a></li>
						<li><a href="">魅族</a></li>
						<li><a href="">华为</a></li>
						<li><a href="">小米</a></li>
						<li><a href="">运动户外</a></li>
						
				  </ul>
				  </nav>
	  		</div>
	  		
	  		</form>
	  		
	  		<div class="2D-code" style="width:120px; float:right; ">
				<a href="<%=basePath%>index.jsp"><img src="<%=basePath%>/image/2D-code.jpg" alt="" style="width:70px; height:70px;"/></a>
			</div>
		</div>
		
	
	</div>
</div>

 

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
	<div class="clearfix"> </div>
  </ul>
</nav>
<div class="goods-container">
   <div class="goods-container-left">
   <div class="goods-photo2"><img src="${pageContext.request.contextPath}/${goodscover.imageUrl}" class="img-responsive" alt=""/>
				 </div>
   </div>
   
   <script language="javascript">
				window.onload=function(){
					//var id="${goods.goodsId}";
					var id;
					document.getElementById("goodsId").value=id;
					alert("id="+id);
				};
				
				function buygoods()
				{
					alert("购买成功！");
					var id="${goods.goodsId}";
					var buynum = document.getElementById("tx1").value;
					alert("id="+id+"buynum="+buynum);
					//window.location.href="goods/buyGoods.action?goodsId="+id+"&s_buynum="+s_buynum;
					document.forms[0].action="<%=basePath%>goods/buyGoods.action";
					document.forms[0].submit();
				}
			</script>
   <div class="goods-container-right">
   
   <!-- 购买的form表单 -->
  <form action="" method="post">
     <div class="goodsname1">
	 <span><h2><s:property value="sellergoods.goods.goodsName" /></h2></span>
   </div>
   <div class="line4"></div>
    <div class="goodsname2">
	 <span>抢购价：¥<s:property value="sellergoods.goods.goodsPrice" /></span>
   </div>
   
	 <div class="choose">
	 <div class="choose1">
     &nbsp;&nbsp;颜色:
    <s:property value="sellergoods.goods.color" />
	<!--   <span id="1" onclick="myFun(this.id);">土豪金</span> 
	 <span id="2" onclick="myFun(this.id);">尊贵银</span> 
	 <span id="3" onclick="myFun(this.id);">玫瑰粉</span> 
	 <span id="4" onclick="myFun(this.id);">至尊黑</span> -->
	 </div>
	 <div class="choose2">
     选购类型:
     <s:property value="sellergoods.goods.model" />
	 <!--<span id="5" onclick="myType(this.id);">移动版64G</span> 
	 <span id="6" onclick="myType(this.id);">移动版16G</span> 
	 <span id="7" onclick="myType(this.id);">三网通64G</span> 
	 <span id="8" onclick="myType(this.id);">三网通16G</span> -->
	 </div>
	 <div class="choose3">
     &nbsp;&nbsp;库存:
	 <s:property value="sellergoods.quantity" />
	 </div>
	 <div class="choose-num">
	 购买数量：
	     <input type="button" value="-" id="remove1" onclick="remove()">
         <input type="text" value="1" id="tx1" width="10px" name="sbuynum">    
         <input type="button" value="+" id="add1" onclick="add()">
     </div>


	 <div class="btn1">
	 <!-- 
	 <input type="button" value="加入购物车" onclick="window.open('index.html')">
	 <input type="button" value="立即购买" onclick="window.open('index.html')">
	 -->
	 	<input type="button" value="购买" onClick="buygoods();" />
	 </div>
	 </div>
	 </form>
   </div>



</div>		
 <div class="goods-details">
 <div class="sellers_grid1">
			<ul class="sellers">
				<i class="star"> </i>
				<li class="sellers_desc"><h2>商品详情</h2></li>
				<div class="clearfix"> </div>
			</ul>
		</div>
	<div class="line5"></div>
 <div class="goods-picture">
 	<s:iterator value="sgi">
   		<img src="${pageContext.request.contextPath}/${imageUrl}" class="img" alt=""/>
   	</s:iterator>
	 <img src="<%=basePath%>image/2.jpg" class="img" alt=""/>
	 <img src="<%=basePath%>image/2.jpg" class="img" alt=""/>
	 <img src="<%=basePath%>image/2.jpg" class="img" alt=""/>
 </div>
 </div>
</div>
<iframe id="footer" src="<%=basePath%>footer.jsp"  scrolling="no" frameborder="0"></iframe>

</body>
</html>		