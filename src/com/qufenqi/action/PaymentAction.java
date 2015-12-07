package com.qufenqi.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Delivery;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;
import com.qufenqi.service.PaymentService;
import com.qufenqi.service.UserService;

public class PaymentAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	private HttpSession session = request.getSession();
	private PaymentService paymentService;
	private UserService userService;
	private Order order;
	private int orderId;//接收前台传来的id
	//第几页
	private int page;
	//包含查询结果的信息的bean
	private PageBean pageBean;
	
	public PaymentService getPaymentService() {
		return paymentService;
	}

	public void setPaymentService(PaymentService paymentService) {
		this.paymentService = paymentService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
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
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	/**
	 * 
	 * 根据善商家名查找商家的订单
	 * @return
	 */
	public String queryOrderBySelleName(){
		Seller seller = (Seller) session.getAttribute("seller");
		int sellerId = seller.getSellerId();
		this.pageBean = paymentService.queryForPage(sellerId, 2, page);
		session.setAttribute("pageBean", pageBean);
		return "success";
	}
	
	/**
	 *根据订单的id去查询 订单
	 */
	public String queryOrderByOrderId(){
		System.out.println("进来了");
		order = paymentService.get(orderId);
		System.out.println(order);
		if(order == null){
			return "error";
		}
		return "success";
	}
	
	public String updateOrderMess(){
		Delivery delivery = order.getDelivery();
		System.out.println("delivery=="+delivery);
		paymentService.updateOrderMess(delivery);
		return "success";
	}
	
	public String findAllOrders(){
		this.pageBean = paymentService.queryForPage( 2, page);
		System.out.println(pageBean);
		return "success";
	}
	
	public String orders(){
		paymentService.orders(order);
		return "success";
	}
}
