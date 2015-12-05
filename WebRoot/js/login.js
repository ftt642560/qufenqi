function login(){
	var userName = document.getElementById("userName").value.trim();
	var password = document.getElementById('password').value.trim();
	if(userName == "" || password == ""){
		if(userName == ""){
			document.getElementById("userNameDiv").innerHTML = "用户名不能为空";
		}
		if(password == "" ){
			document.getElementById("passwordDiv").innerHTML = "密码不能为空";
		}
		return false;
	}else{
		document.getElementById("loginForm").action = "login.action";
		return true;
	}
}			

//function addnode(text,tagid)
//  		{
//  			var validate_text=document.createElement("span");//创建span节点
//			var textnode=document.createTextNode(text);	//创建一个text节点
//			validate_text.style.color="red";//对span样式进行设置			
//			validate_text.appendChild(textnode);//把text节点添加到span节点
//
//					
//			var validate=document.getElementById(tagid);//获取需要验证的节点
//			var parentobj=validate.parentNode;	//获取验证节点的父节点							
//			var childobj=parentobj.childNodes;	//获取父节点的所有儿子节点
//			
//			var spanexit=parentobj.getElementsByTagName("span");//检索节点中是否包含span节点,返回一个数组
//			if(spanexit.length==1)//如果不存在span节点，则添加验证提示的span节点
//			{
//				parentobj.appendChild(validate_text);//添加一个span子节点
//			}
//  		}
//  		
//  		//查询时，如果已经输入条件，则移除提示节点span
//  		function removenode(tagid)
//  		{
//  			var validate=document.getElementById(tagid);
//			var parentobj=validate.parentNode;								
//			var childobj=parentobj.childNodes;	
//			
//			var spanexit=parentobj.getElementsByTagName("span");
//			for(var i=0;i<spanexit.length;i++)
//				parentobj.removeChild(spanexit[i]);
//			
//  		}
//  		
//  		function login()
//  		{ 		
//  			var userName=document.getElementById("userName").value;
//  			var password=document.getElementById("password").value;
//		
//			//对输入条件进行验证
//			if( userName=="" || password=="" )
//			{
//				if(userName=="")
//				{
//					alert("空");
//					addnode("用户名不能为空","userName");
//					
//				}
//				else{
//					removenode("userName");
//				}	
//				
//				if(password=="")
//				{
//					alert("空");
//					addnode("密码不能为空","password");				
//				}
//				else{
//					removenode("password");
//				}	
//				
//				return false;		
//			}
//				
//			else{
//				document.getElementById("").action = "login.action";
//				return true;
//			}	
//  		}



//function addnode(text,tagid){
//	var validate_text=document.createElement("span");
//	var textnode=document.createTextNode(text);	
//	validate_text.style.color="red";			
//	validate_text.appendChild(textnode);
//
//	var validate=document.getElementById(tagid);
//	var parentobj=validate.parentNode;							
//	var childobj=parentobj.childNodes;	
//			
//	var spanexit=parentobj.getElementsByTagName("span");
//	if(spanexit.length==0){
//		parentobj.appendChild(validate_text);
//	}
//}
//  		
////查询时，如果已经输入条件，则移除提示节点span
//function removenode(tagid){
//	var validate=document.getElementById(tagid);
//	var parentobj=validate.parentNode;								
//	var childobj=parentobj.childNodes;	
//			
//	var spanexit=parentobj.getElementsByTagName("span");
//	for(var i=0;i<spanexit.length;i++){
//		parentobj.removeChild(spanexit[i]);
//	}
//}
//  		
//function login(){ 		
//  	var userName=document.getElementById("userName").value;
//  	var password=document.getElementById("password").value;
//		
//	//对输入条件进行验证
//	if( userName=="" || password=="" ){
//		if(userName==""){
//			alert("空");
//			addnode("用户名不能为空","userName");
//		}
//		else{
//			removenode("userName");
//		}	
//				
//		if(password=="")
//		{
//			alert("空");
//			addnode("密码不能为空","password");				
//		}
//		else{
//			removenode("password");
//		}
//		return false;		
//	}else{
//		document.getElementById("").action = "register.action";
//		return true;
//	}			
//}