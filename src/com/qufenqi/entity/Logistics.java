package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 物流信息实体类
 * @author Administrator
 *
 */
public class Logistics {
	/**
	 * 物流的id
	 */
	private int logisticsId;
	/**
	 * 物流的公司名称
	 */
	private String company;
	/**
	 * 物流的状态
	 */
	private String logisticsStatus;
	
	private Set<Order> orders = new HashSet<Order>();
	public int getLogisticsId() {
		return logisticsId;
	}
	public void setLogisticsId(int logisticsId) {
		this.logisticsId = logisticsId;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getLogisticsStatus() {
		return logisticsStatus;
	}
	public void setLogisticsStatus(String logisticsStatus) {
		this.logisticsStatus = logisticsStatus;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "Logistics [logisticsId=" + logisticsId + ", company=" + company
				+ ", logisticsStatus=" + logisticsStatus + "]";
	}
}
