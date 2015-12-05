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
	<title>无标题文档</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/frame.css">
	<script type="text/jscript" language="JavaScript" src="<%=basePath%>/js/qq_hidemenu.js"></script>
  </head>
  
  <SCRIPT language=JavaScript>
  
	function gotoGoodsOfSeller(){
		document.idFrmMain.action="<%=basePath%>/findGoodsBySeller.action";
		document.idFrmMain.target = "main";
		document.idFrmMain.submit();
	}
	function jsgoto(surl){
		document.idFrmMain.action = surl;
		document.idFrmMain.target = "main";
		document.idFrmMain.submit();
	}
	
	function gotoOnShelf(){
			document.idFrmMain.action="<%=basePath%>/goods/onShelf.jsp";
			document.idFrmMain.target = "main";
			document.idFrmMain.submit();
		}
		
	function gotoUnderShelf(){
		document.idFrmMain.action="<%=basePath%>/UnderShelf.action";
			document.idFrmMain.target = "main";
			document.idFrmMain.submit();
	}
</SCRIPT>
  
  <body nLoad="widgets.ToggleWidget(hideTop1);widgets.ToggleWidget(hideTop2);widgets.ToggleWidget(hideTop3)">
    	<FORM NAME="idFrmMain" ID="idFrmMain" METHOD="POST"  ACTION="" ONSUBMIT=""> 
  <table width="180" height="100%"  border="0" cellpadding="0" cellspacing="0"> 
    <tr> 
      <td valign="top" class="left"><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0"> 
          <tr> 
            <td  height="9"></td> 
          </tr> 
          <tr> 
            <td > <table width="100%" cellspacing="0" cellpadding="0" border="0"> 
                <tr> 
                  <td  class="left1"> 
                  	<a id="exp52" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);" >
                  		<img id="exp5" alt="折叠" src="<%=basePath%>/image/qq_minimize.gif"  border="0">
                  	</a> 
                  	&nbsp;&nbsp;&nbsp;&nbsp;
                  	<a id="exp51" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);">商家商品管理</a>
                  </td> 
                </tr> 
              </table></td> 
          </tr> 
          <tr> 
            <td class="left2" > <div id="hideTop1"  img="exp5" openAlt="折叠" closedAlt="展开"> 
                <table width="100%"  border="0" cellspacing="1" cellpadding="0"> 
                  
                  <tr> 
                    <td><div align="right"><img src="<%=basePath%>/image/dot1.gif" width="13" height="16"></div></td> 
                    <td><a href="<%=basePath%>/goods/left.jsp" onClick="gotoGoodsOfSeller();">商家查询</a></td> 
                  </tr> 
				  <tr> 
                    <td><div align="right"><img src="<%=basePath%>/image/dot1.gif" width="13" height="16"></div></td> 
                    <td><a href="<%=basePath%>/goods/left.jsp" onClick="gotoOnShelf();">上架商家</a></td> 
                  </tr>                 
				   <tr> 
                    <td><div align="right"><img src="<%=basePath%>/image/dot1.gif" width="13" height="16"></div></td> 
                    <td><a href="<%=basePath%>/goods/left.jsp" onClick="gotoUnderShelf();">下架商品</a></td> 
                  </tr>  
                  <tr> 
                    <td colspan="2"  height="10"></td> 
                  </tr> 
                </table> 
              </div></td> 
          </tr> 
		  
		  
		  <!--需要修改4个id和两个div的id--> 
          <tr> 
            <td height="8"></td> 
          </tr> 
         
          <tr> 
            <td height="8"></td> 
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
          </tr> 
        </table></td> 
    </tr> 
  </table> 
</form> 
  </body>
</html>

<SCRIPT LANGUAGE="javascript">
</SCRIPT>
