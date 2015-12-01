package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 分期方案实体类
 * @author Administrator
 *
 */
public class PeriodPlan {
	/**
	 * 分期方案的id
	 */
	private int periodId;
	/**
	 * 分期月数
	 */
	private int periodNumber;
	/**
	 * 分期的首付
	 */
	private int downPayment;
	
	private Set<Order> orders = new HashSet<Order>();
	private InterestPlan interestPlan;
	
	public int getPeriodId() {
		return periodId;
	}
	public void setPeriodId(int periodId) {
		this.periodId = periodId;
	}
	public int getPeriodNumber() {
		return periodNumber;
	}
	public void setPeriodNumber(int periodNumber) {
		this.periodNumber = periodNumber;
	}
	public int getDownPayment() {
		return downPayment;
	}
	public void setDownPayment(int downPayment) {
		this.downPayment = downPayment;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	public InterestPlan getInterestPlan() {
		return interestPlan;
	}
	public void setInterestPlan(InterestPlan interestPlan) {
		this.interestPlan = interestPlan;
	}
	@Override
	public String toString() {
		return "PeriodPlan [periodId=" + periodId + ", periodNumber="
				+ periodNumber + ", downPayment=" + downPayment + "]";
	}
}
