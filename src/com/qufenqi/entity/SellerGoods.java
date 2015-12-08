package com.qufenqi.entity;


/**
 * 
 * 商家和商品的中间表 sellergoods
 * @author zlin
 *
 */
public class SellerGoods {
	private long id;//主键：自增
	private int quantity;//商品数量
	private Seller seller;
	private Goods goods;
	private String coverpic;//封面图片路径
	
	
	public String getCoverpic() {
		return coverpic;
	}

	public void setCoverpic(String coverpic) {
		this.coverpic = coverpic;
	}

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

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "SellerGoods [id=" + id + ", quantity=" + quantity + ", seller="
				+ seller + ", goods=" + goods + "]";
	}
	
	/**
	 * 自己加的
	 */
	
}
