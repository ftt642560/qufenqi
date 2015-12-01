package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 用户实体类
 * @author Administrator
 *
 */
public class User {
	/**
	 * 用户id
	 */
	private int userId;
	/**
	 * 用户登录时的用户名
	 */
	private String userName;
	/**
	 * 用户登录时的密码
	 */
	private String password;
	/**
	 * 用户的真实姓名
	 */
	private String name;
	/**
	 * 用户的电话
	 */
	private long telephone;
	/**
	 * 用户的身份证号码
	 */
	private String idCard;
	/**
	 * 用户的email
	 */
	private String email;
	/**
	 * 用户的信誉度
	 */
	private int quota;
	private int status;
	
	private Set<Order> orders = new HashSet<Order>();
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getTelephone() {
		return telephone;
	}
	public void setTelephone(long telephone) {
		this.telephone = telephone;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getQuota() {
		return quota;
	}
	public void setQuota(int quota) {
		this.quota = quota;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName
				+ ", password=" + password + ", name=" + name + ", telephone="
				+ telephone + ", idCard=" + idCard + ", email=" + email
				+ ", quota=" + quota + "]";
	}
	
}
