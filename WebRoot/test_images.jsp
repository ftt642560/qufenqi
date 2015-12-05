<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<s:form action="uploadImage" theme="simple" enctype="multipart/form-data">
		<input type="text" value="" name="sellerId"/>
		<br /><br />
		<input type="text" value="" name="goodsId" />
	

    	<table align="center" width="50%" border="0">
    		<tr>
    			<td>IMG</td>
    			<td id="more">
    				<s:file name="file" id="file" onchange="filechange(this)"></s:file>
    				<!-- <input type="button" value="Add More..." onclick="addMore()"> -->
    			</td>
    			<td>
    				<div>
    					<img src="" id="imgview" style="display:none;" alt=""/>
    				</div>
    				<div>
    					<span></span>
    				</div>
    			</td>
    		</tr>
    		<tr>
    			<td><s:submit value="submit" onclick="return checkform()"></s:submit></td>
    			<td><s:reset value="reset"></s:reset></td>
    		</tr>
    	</table>
  
    </s:form>
  </body>
  
  <script type="text/javascript">
    function $(id) {
        return document.getElementById(id);
    }

    function showimg(src) {
        var img = $('imgview');
        img.src = src;
        img.style.display = 'block';
    }

    function filechange(file) {
        if (file.files && file.files[0]) {
            var reader = new FileReader();
            reader.onload = function (evt) {
                showimg(evt.target.result);
            };
            reader.readAsDataURL(file.files[0]);
        } else {
            file.select();
            var src = document.selection.createRange().text;
            showimg(src);
        }
    }


	function checkform(){
		var file=document.getElementById('file');
		if(file.value==""){
			alert("请上传图片");
			return false;
		}else if(!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG|BMP)$/.test(file.value)){
				alert("类型必须是.gif,jpeg,jpg,png,bmp中的一种");
				file.value="";
				return false;
		}else{	
			return true;
		}
	}

</script>

</html>