$(function(){
	$(".quit").click(function(){
		var flag = confirm("确定要退出吗？");
		if(flag){
			//执行退出，实行ajax的方法
			var url = this.href;
			var args = {"time":new Date()};
			$.post(url , args , function(data){//data如何返回
				//若data的返回值为1.则提示退出成功
				if(data == 1){
					//获取却出id=quitLi的li的值quitLi
					document.getElementById('loginLi').innerHTML = '未登录';
					document.getElementById('quitLi').innerHTML = '注销';
					document.getElementById('quitLi').style.color = '#fff';
				}
			});
		}
		//(先需要)取消超链接的默认行为
		return false;
	});
	
});