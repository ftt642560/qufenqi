package com.qufenqi.entity;

public class Manager 
{
	private int managerId;//管理员ID
	private String managName;//登陆姓名
	private int password;//密码
	private String name;//管理员姓名
	private int telephone;//管理员身份证
	private int idCard;//用户简介
	private String email;//邮箱
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public String getManagName() {
		return managName;
	}
	public void setManagName(String managName) {
		this.managName = managName;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public int getIdCard() {
		return idCard;
	}
	public void setIdCard(int idCard) {
		this.idCard = idCard;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

}
