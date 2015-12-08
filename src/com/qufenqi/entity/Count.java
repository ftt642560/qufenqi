package com.qufenqi.entity;

public class Count {
	private String area;
	private String goodsName;
	private int saleNumber;
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getSaleNumber() {
		return saleNumber;
	}
	public void setSaleNumber(int saleNumber) {
		this.saleNumber = saleNumber;
	}
	@Override
	public String toString() {
		return "Count [area=" + area + ", goodsName=" + goodsName
				+ ", saleNumber=" + saleNumber + "]";
	}
	
}
