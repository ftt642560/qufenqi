package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.impl.GoodsDaoImpl;
import com.qufenqi.entity.Goods;
import com.qufenqi.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	public Goods goods;
	public GoodsDaoImpl goodsDaoImpl;
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public GoodsDaoImpl getGoodsDaoImpl() {
		return goodsDaoImpl;
	}

	public void setGoodsDaoImpl(GoodsDaoImpl goodsDaoImpl) {
		this.goodsDaoImpl = goodsDaoImpl;
	}

	/**
	 * 搜索商品
	 * @param 商品类 goods
	 */
	@Override
	public List<Goods> SearchGoods(Goods goods) {
		// TODO Auto-generated method stub
		
		return null;
	}

	/**
	 * 浏览商品：查找商品详情
	 * @param 商品ID  goodsId
	 */
	@Override
	public Goods QueryOneGoods(Long goodsId) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 购买商品：相应地减少商品量
	 * @param 商品ID goodsID, 购买数量 buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long goodsId,int buyNum) {
		// TODO Auto-generated method stub

	}

}
