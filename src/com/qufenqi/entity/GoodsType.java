package com.qufenqi.entity;

import java.util.Set;

/**
 * 商品类型
 * @author zlin
 *
 */
public class GoodsType {
	private long goodsTypeId;//商品类型ID
	private String goodsTypeName; //商品类型名
	private Set<Goods> goods; //一个商品集合
	
	public Set<Goods> getGoods() {
		return goods;
	}
	public void setGoods(Set<Goods> goods) {
		this.goods = goods;
	}
	public long getGoodsTypeId() {
		return goodsTypeId;
	}
	public void setGoodsTypeId(long goodsTypeId) {
		this.goodsTypeId = goodsTypeId;
	}
	public String getGoodsTypeName() {
		return goodsTypeName;
	}
	public void setGoodsTypeName(String goodsTypeName) {
		this.goodsTypeName = goodsTypeName;
	}
	
	
}
