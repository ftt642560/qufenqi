package com.qufenqi.entity;

/**
 * ��Ʒʵ����
 * @author zlin
 *
 */
public class Goods {
	private long goodsId;//��ƷID
	private String goodsName;//��Ʒ��
	private String brand; //��ƷƷ��
	private String model;//��Ʒ�ͺ�
	private String size; //��Ʒ�ߴ�
	private String color;//��Ʒ��ɫ
	private String material;//��Ʒ����
	private int storeNum;//�����
	private String goodsPrice;//��Ʒ�۸�
	private long weight;//��Ʒ��������
	private int status;//��Ʒ�Ƿ��ϼܣ�0��ʾδ�ϼܣ�1��ʾ�ϼ�
	
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
	
	
	
	
}
