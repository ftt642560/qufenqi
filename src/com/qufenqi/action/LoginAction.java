package com.qufenqi.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;


/**
 * 处理用户的Action
 * @author Administrator
 *
 */
public class LoginAction {
	
	private static final int SUCCESS = 4;
	private static final int PASSWRONG = 3;
	private static final int NOREGIS = 2 ;
	private static final int NULL = 1;
	private String flag = null;
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpServletResponse response = ServletActionContext.getResponse();
	/**
	 * 用户实体类
	 */
	private User user;
	/**
	 * 处理User的业务逻辑类
	 */
	private UserService userService;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public LoginAction() {
		super();
	}
	public String register(){
		
		return flag;
	}

	/**
	 * 用户登录的Action
	 * @return
	 */
	public String login(){
		int status = userService.login(user);
		switch (status) {
		case NULL:
			request.setAttribute("mess" , "用户名或者密码不能为空");
			flag = "error";
			break;
		case NOREGIS:
			request.setAttribute("mess" , "该用户没有注册");
			flag = "error";
			break;
		case PASSWRONG:
			request.setAttribute("mess" , "密码错误");
			flag = "error";
			break;
		case SUCCESS:
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			flag = "success";
			break;
		default:
			break;
		}
		return flag;
	}
	
	/**
	 * 退出系统的action
	 * @return
	 */
	public String quit(){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("User");
		if(user != null){
			session.removeAttribute("user");
			flag = "seccess";
		}else{
			flag = "error";
		}
		return flag;
	}
}
