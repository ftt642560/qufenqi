package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

public class Manager 
{
	private int managerId;//����ԱID
	private String managName;//��½����
	private String password;//����
	private String name;//����Ա����
	private int telephone;//����Ա���֤
	private int idCard;//�û����
	private String email;//����
	private int role;
	private Set<Seller> sellers = new HashSet<Seller>();
	
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
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public Set<Seller> getSellers() {
		return sellers;
	}
	public void setSellers(Set<Seller> sellers) {
		this.sellers = sellers;
	}
	@Override
	public String toString() {
		return "Manager [managerId=" + managerId + ", managName=" + managName
				+ ", password=" + password + ", name=" + name + ", telephone="
				+ telephone + ", idCard=" + idCard + ", email=" + email
				+ ", role=" + role + "]";
	}

}
