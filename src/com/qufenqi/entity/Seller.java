package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 商家实体类
 * @author Administrator
 *
 */
public class Seller {
	/**
	 * 商家的ID
	 */
	private int sellerId;
	/**
	 * 商家登录的用户名
	 */
	private String sellerName;
	/**
	 * 商家的登录密码
	 */
	private String sellerPassword;
	/**
	 * 商家的真实姓名
	 */
	private String name;
	/**
	 * 商家的身份证号码
	 */
	private String idCard;
	/**
	 * 商家的电话
	 */
	private long telephone;
	/**
	 * 商家的邮箱
	 */
	private String email;
	private int role;
	
	private Set<Order> orders = new HashSet<Order>();
	
	private Manager manager;
	
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public String getSellerPassword() {
		return sellerPassword;
	}
	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public long getTelephone() {
		return telephone;
	}
	public void setTelephone(long telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", sellerName=" + sellerName
				+ ", sellerPassword=" + sellerPassword + ", name=" + name
				+ ", idCard=" + idCard + ", telephone=" + telephone
				+ ", email=" + email + ", role=" + role + ", orders=" + orders
				+ "]";
	}
}
