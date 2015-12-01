package com.qufenqi.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 商品类
 * @author zlin
 *
 */
public class Goods {
	private long goodsId;//商品ID
	private String goodsName;//商品名
	private String brand; //品牌
	private String model;//类型
	private String size; //大小
	private String color;//颜色
	private String material;//材料
	private int storeNum;//库存量
	private String goodsPrice;//价格
	private long weight;//权重：用以统计商品购买量
	private int status;//状态：代表商品是否商家
	private Set<Order> orders = new HashSet<Order>();
	private Set<SellerGoods> sellergoods;//商家和商品表关联中间表:sellergoods，多对多，转成两个1对多
	private Coupon coupon;
	public Coupon getCoupon() {
		return coupon;
	}
	public void setCoupon(Coupon coupon) {
		this.coupon = coupon;
	}
	public Set<SellerGoods> getSellergoods() {
		return sellergoods;
	}
	public void setSellergoods(Set<SellerGoods> sellergoods) {
		this.sellergoods = sellergoods;
	}
	public long getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public int getStoreNum() {
		return storeNum;
	}
	public void setStoreNum(int storeNum) {
		this.storeNum = storeNum;
	}
	public String getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public long getWeight() {
		return weight;
	}
	public void setWeight(long weight) {
		this.weight = weight;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
	
	
	
	
}
