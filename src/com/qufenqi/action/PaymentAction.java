package com.qufenqi.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.User;
import com.qufenqi.service.PaymentService;
import com.qufenqi.service.UserService;

public class PaymentAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private PaymentService paymentService;
	private UserService userService;
	
	public PaymentService getPaymentService() {
		return paymentService;
	}

	public void setPaymentService(PaymentService paymentService) {
		this.paymentService = paymentService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String query(){
		User user = (User) session.getAttribute("user");
		String userName = user.getUserName();
		System.out.println("userName========="+userName);
		int userId = userService.getByUserName(userName).get(0).getUserId();
		System.out.println("userId==="+userId);
		List<Order> orderList = paymentService.findAll(userId);
		if(orderList.size() == 0){
			request.setAttribute("该用户没有订单", orderList);
		}else{
			System.out.println("orderList.size()==="+orderList.size());
			request.setAttribute("orderList", orderList);
		}
		return "success";
	}
}
