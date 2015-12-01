package com.qufenqi.entity;

import java.util.Date;

/**
 * 订单实体类
 * @author Administrator
 *
 */
public class Order {
	/**
	 * 订单的id
	 */
	private int orderId;
	/**
	 * 运费
	 */
	private float carriage;
	/**
	 * 订单总价
	 */
	private float orderAmount;
	/**
	 * 下单时间
	 */
	private Date orderTime;
	/**
	 * 订单状态
	 */
	private String orderStatus;
	
	private Delivery delivery;
	private Repayment repayment;
	private Logistics logistics;
	private PeriodPlan periodPlan;
	private User user;
	private Goods goods;
	private Seller seller;
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public float getCarriage() {
		return carriage;
	}
	public void setCarriage(float carriage) {
		this.carriage = carriage;
	}
	public float getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(float orderAmount) {
		this.orderAmount = orderAmount;
	}
	public Date getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public Delivery getDelivery() {
		return delivery;
	}
	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}
	public Repayment getRepayment() {
		return repayment;
	}
	public void setRepayment(Repayment repayment) {
		this.repayment = repayment;
	}
	public Logistics getLogistics() {
		return logistics;
	}
	public void setLogistics(Logistics logistics) {
		this.logistics = logistics;
	}
	public PeriodPlan getPeriodPlan() {
		return periodPlan;
	}
	public void setPeriodPlan(PeriodPlan periodPlan) {
		this.periodPlan = periodPlan;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", carriage=" + carriage
				+ ", orderAmount=" + orderAmount + ", orderTime=" + orderTime
				+ ", orderStatus=" + orderStatus + "]";
	}
}
