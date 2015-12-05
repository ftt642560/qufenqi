package com.qufenqi.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
	private HttpSession session = request.getSession();
	private InputStream inputStream;
	/**
	 * 用户实体类
	 */
	private User user;
	/**
	 * 处理User的业务逻辑类
	 */
	private UserService userService;
	
	private int userId;
	
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
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
	/**
	 * 注册
	 * @return
	 */
	public String register(){
		//刚开始注册status为0
		//该开始注册信誉度为0
		user.setStatus(0);
		user.setQuota(0);
		System.out.println("register user==="+user);
		int status = userService.register(user);
		if (status == 1) {
			request.setAttribute("mess", "该用户名已注册");
			flag = "error";
		}else if(status == 2){
			request.setAttribute("mess", "该邮箱已注册");
			flag = "error";
		}else{
			request.setAttribute("mess", "请到"+user.getEmail()+"激活");
			flag = "success";
		}
		return flag;
	}
	
	/**
	 * 通过激活邮箱注册成功
	 * @return
	 */
	public String registbyEmail(){
		user.setStatus(2);
		user.setQuota(100);
		userService.update(user);
		return "success";
	}

	/**
	 * 用户登录的Action
	 * @return
	 */
	public String login(){
		int status = userService.login(user);
		System.out.println(status+"==status");
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
			session.setAttribute("user", user);
			flag = "success";
			break;
		default:
			break;
		}
		System.out.println(flag+"==flag");
		return flag;
	}
	
	/**
	 * 退出系统的action
	 * @return
	 */
	public String quit(){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		session.removeAttribute("user");
		try {
			inputStream =  new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
		}
//		if(user != null){
//			session.removeAttribute("user");
//			flag = "seccess";
//		}else{
//			flag = "error";
//		}
		return "success";
	}
	
	public String findAll(){
		List<User> userLists = userService.findAlls();
		System.out.println(userLists.size());
		request.setAttribute("userLists", userLists);
		return "success";
	}
	public String delete(){
		userService.deleteById(userId);
		try {
			inputStream =  new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
		}
		return "success";
	}
	
	public String update(){
		userService.update(user);
		return "success";
	}
	
	public String query(){
		User user = userService.getById(userId);
		request.setAttribute("user", user);
		return "success";
	}
	
	public String queryByName(){
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		System.out.println("userName===="+userName);
		List<User> userList = userService.getByUserName(userName);
		System.out.println("userList.size()==="+userList.size());
		if(userList.size() == 0){;
			flag = "error";
		}else{
			user = userList.get(0);
			request.setAttribute("user", user);
			//查看我的信誉度
//			int quote = user.getQuota();
			flag = "success";
		}
		return flag;
	}
}
