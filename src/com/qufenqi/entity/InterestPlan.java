package com.qufenqi.entity;

public class InterestPlan 
{
	/**
	 * 利息id
	 */
	private int interestId;
	/**
	 * 利率
	 */
	private float interest;
	/**
	 * 分期月数
	 */
	private int month;
	public int getInterestId() {
		return interestId;
	}
	public void setInterestId(int interestId) {
		this.interestId = interestId;
	}
	
	public float getInterest() {
		return interest;
	}
	public void setInterest(float interest) {
		this.interest = interest;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	
	}
