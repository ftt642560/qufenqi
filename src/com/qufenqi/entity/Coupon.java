package com.qufenqi.entity;

public class Coupon {
	/**
	 * 优惠id
	 */
	private int couponId;
	/**
	 * 优惠率
	 */
	private float discount;
	public int getCouponId() {
		return couponId;
	}
	public void setCouponId(int couponId) {
		this.couponId = couponId;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	
}
