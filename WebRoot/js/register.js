function register(){
	if(document.getElementById('userName').value.trim() == "") { 
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
	if(document.getElementById('email').value.trim() == "") { 
		   document.getElementById('emailDiv').innerHTML = "用户名密码不能为空";
		  return false; 
	}else{
		document.getElementById('fromRegister').action="register.action";	
		return true;
	}
}			

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
//function register(){ 		
//  	var userName=document.getElementById("userName").value;
//  	var password=document.getElementById("password").value;
//  	var email=document.getElementById("email").value;
//		
//	//对输入条件进行验证
//	if( userName=="" || password=="" || email == "" ){
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
//		if(email=="")
//		{
//			alert("空");
//			addnode("邮箱不能为空","email");				
//		}
//		else{
//			removenode("email");
//		}
//		return false;		
//	}else{
//		document.getElementById("fromRegister").action = "register.action";
//		return true;
//	}			
//}