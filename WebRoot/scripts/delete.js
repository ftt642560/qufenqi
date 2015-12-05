$(function(){
	//1. 点击 delete 时, 弹出 确定是要删除 xx 的信息吗 ? 若确定, 执行删除, 若不确定, 则取消
	$(".delete").click(function(){
		var userId = $(this).next(":input").val();//this代表a链接
		var flag = confirm("确定要删除"+ userId +"的信息吗？");
		alert(flag+"11");
		if(flag){//真的要删除
			alert(1111);
			var $tr = $(this).parent().parent();
			//执行删除，实行ajax的方法
			var url = this.href;
			var args = {"time":new Date()};
			$.post(url , args , function(data){//data如何返回
			alert(111);
			alert(data);
				//若data的返回值为1.则提示删除成功，且把当前行删除，
				if(data == 1){
					$tr.remove();
					document.getElementById('div').innerHTML="删除成功";
				}else{
					//若data的返回值不是1，提示删除失败
					document.getElementById('div').innerHTML="删除失败！";
				}
				$("#div").show();
			});
		}
		//(先需要)取消超链接的默认行为
		return false;
	});
});				