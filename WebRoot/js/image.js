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
