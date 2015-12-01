package com.qufenqi.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;


public class UserAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private UserService userService;
	private User user;
	//第几页
	private int page;    
	//包含分布信息的bean
    private PageBean pageBean;    
	
	public int getPage() {
		return page;
	}
	//若URL中无此参数,会默认为第1页
	public void setPage(int page) {
		this.page = page;
	}
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
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
	
	public String findSome(){
		if(user.getUserName().trim().equals("")){
			this.pageBean = userService.queryForPage(null , 2, page);
			request.setAttribute("pageBean", pageBean);
		    return "success";
		}
		if(!user.getUserName().trim().equals("")){
			this.pageBean = userService.queryForPage(user , 2, page);
			request.setAttribute("pageBean", pageBean);
		    return "success";
		}
		return "error";
	}
	
	 public String findAll() throws Exception {
	     //分页的pageBean,参数pageSize表示每页显示记录数,page为当前页
		 if(user == null){
			 this.pageBean = userService.queryForPage(null , 2, page);
		     request.setAttribute("pageBean", pageBean);
		     return "success";
		 }
		 return "error";
	 }
}
