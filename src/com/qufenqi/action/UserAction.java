package com.qufenqi.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;


public class UserAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private UserService userService;
	private User user;
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	//得到一个公共的User
	public int queryUserById(){
		System.out.println("UserAction");
		User user = (User) session.getAttribute("user");
		System.out.println("UserAction user === "+ user);
		String userName = user.getUserName();
		System.out.println("userName==="+userName);
		int userId =userService.getByUserName(userName).get(0).getUserId();
		System.out.println("userId UserAction === "+userId);
		return userId;
	}
	public String queryOrderByUserId(){
		int userId = queryUserById();
		List<Order> orderLists = userService.queryOrderByUserId(userId);
		System.out.println("orderLists.size()"+orderLists.size());
		return "success";
	}
	
	public String queryRepByUserId(){
		int userId = 0;
		return "success";
	}
	public String findAll(){
		System.out.println(111111);
		List<User> userList = userService.findAlls();
		int size = userList.size();
		System.out.println("size===="+size);
		System.out.println("listUsers==="+userList);
		if(size != 0){
			ActionContext.getContext().put("userList", userList);
			request.setAttribute("userList", userList);
			return "success";
		}
		return "error";
	}
	
	public String findSome(){
		System.out.println(222222);
		String userName = user.getUserName();
		System.out.println(user.getUserName());
		List<User> userList = userService.getByUserName(userName);
		int size = userList.size();
		System.out.println("size===="+size);
		System.out.println("listUsers==="+userList);
		if(size != 0){
			ActionContext.getContext().put("userList", userList);
			request.setAttribute("userList", userList);
			return "success";
		}
		return "error";
	}
}
