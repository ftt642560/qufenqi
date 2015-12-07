package com.qufenqi.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.User;
import com.qufenqi.service.PaymentService;
import com.qufenqi.service.UserService;


public class UserAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private UserService userService;
	private User user;
	private InputStream inputStream;
	private PaymentService paymentService;
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
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public void setPaymentService(PaymentService paymentService) {
		this.paymentService = paymentService;
	}
	//得到一个公共的User
	public int queryUserById(){
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		int userId =userService.getByUserName(userName).get(0).getUserId();
		return userId;
	}
	public String queryOrderByUserId(){
		int userId = queryUserById();
		List<Order> orderLists = userService.queryOrderByUserId(userId);
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
	 
	 public String updateUserMess(){
		 System.out.println("用户修改自己的信息进来了");
		 
		 long tele = user.getTelephone();
		 System.out.println("tele=="+tele);
		 String userName = user.getUserName();
		 userService.update(tele, userName);
		 System.out.println("userName =="+userName );
		 User user = userService.getByUserName(userName).get(0);
		 session.setAttribute("user", user);
		 System.out.println("user=="+user);
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
	 
	 public String findOrderByUserId(){
		 User user = (User) session.getAttribute("user");
		 int userId = user.getUserId();
		 paymentService.queryForPage(userId, null, 2, page);
		 System.out.println("pageBean=="+pageBean);
		 return "success";
	 }
}
