package com.qufenqi.entity;

import java.util.Set;

/**
 * ��Ʒ����
 * @author zlin
 *
 */
public class GoodsType {
	private long goodsTypeId;//��Ʒ����ID
	private String goodsTypeName; //��Ʒ������
	private Set<Goods> goods; //һ����Ʒ����
	
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
