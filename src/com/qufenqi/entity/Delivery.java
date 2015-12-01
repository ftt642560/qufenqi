package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 收货人的信息实体类
 * @author Administrator
 *
 */
public class Delivery {
	/**
	 * 配送实体的id
	 */
	private int deliveryId;
	/**
	 * 收获人的地址
	 */
	private String address;
	/**
	 * 收货人的电话
	 */
	private long telephone;
	/**
	 * 收货人姓名
	 */
	private String contactPersonName;
	
	private Set<Order> orders = new HashSet<Order>();
	
	public int getDeliveryId() {
		return deliveryId;
	}
	public void setDeliveryId(int deliveryId) {
		this.deliveryId = deliveryId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getTelephone() {
		return telephone;
	}
	public void setTelephone(long telephone) {
		this.telephone = telephone;
	}
	public String getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "Delivery [deliveryId=" + deliveryId + ", address=" + address
				+ ", telephone=" + telephone + ", contactPersonName="
				+ contactPersonName + "]";
	}
}
