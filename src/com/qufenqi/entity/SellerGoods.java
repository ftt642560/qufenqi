package com.qufenqi.entity;


/**
 * 
 * 商家和商品的中间表 sellergoods
 * @author zlin
 *
 */
public class SellerGoods {
	private int id;//主键：自增
	private int quantity;//商品数量
	private Seller seller;
	private Goods goods;
	
	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
