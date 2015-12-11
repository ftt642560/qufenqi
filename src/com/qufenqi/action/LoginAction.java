package com.qufenqi.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Manager;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;
import com.qufenqi.service.ManagerService;
import com.qufenqi.service.SellerService;
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
	private String userName;//接收前台传来的数据
	private String password;//接收前台传来的数据
	private int role;//接收前台传来的数据
	private Seller seller;
	private Manager manager;
	private ManagerService managerService;
	private SellerService sellerService;
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
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public LoginAction() {
		super();
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public SellerService getSellerService() {
		return sellerService;
	}
	public void setSellerService(SellerService sellerService) {
		this.sellerService = sellerService;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public ManagerService getManagerService() {
		return managerService;
	}
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	/**
	 * 注册
	 * @return
	 */
	public String register(){
		System.out.println("用户注册进来了");
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
		user.setStatus(1);
		user.setQuota(1000);
		userService.update(user);
		return "success";
	}

	/**
	 * 用户登录的Action
	 * @return
	 */
	public String login(){
		if(role == 0){//角色等于0说明是用户登录
			user.setUserName(userName);
			user.setPassword(password);
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
					session.setAttribute("user", userService.getByUserName(userName).get(0));
					session.setAttribute("role",0);
					flag = "userLogin";
					break;
				default:
					break;
			}
			return flag;
		}else if(role == 1){//角色等于1说明是商家
			seller.setSellerName(userName);
			seller.setSellerPassword(password);
			int status = sellerService.login(seller);
			switch (status) {
				case -1:
					request.setAttribute("mess", "登录失败");
					flag = "error";
					break;
				case 2:
					request.setAttribute("mess", "该用户名没有注册");
					flag = "error";
					break;
				case 1:
					request.setAttribute("mess", "用户密码不正确");
					flag = "error";
					break;
				case 0:
					request.setAttribute("mess", "该商家登录成 功");
					Seller seller = sellerService.find(userName);
					session.setAttribute("seller", seller);
					request.setAttribute("role", 1);
					//因为商家就是管理员，所以将用户登录成功时可以讲登录名和密码赋值给USER,
					user.setUserName(userName);
					user.setPassword(password);
					session.setAttribute("user", user);
					session.setAttribute("role",1);
					flag = "sellerLogin";
					break;
				default:
					break;
				}
			System.out.println(flag);
			return flag;
		}else {
			manager.setManagName(userName);
			manager.setPassword(password);
			int status = managerService.login(manager);
			switch (status) {
				case -1:
					request.setAttribute("mess", "登录失败");
					flag = "error";
					break;
				case 2:
					request.setAttribute("mess", "该用户名没有注册");
					flag = "error";
					break;
				case 1:
					request.setAttribute("mess", "用户密码不正确");
					flag = "error";
					break;
				case 0:
					request.setAttribute("mess", "该管理员登录成功");
					session.setAttribute("manager", manager);
					session.setAttribute("role",2);//2是管理员
					flag = "managerLogin";
					break;
				default:
					break;
			}
			return flag;
		}
		
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
