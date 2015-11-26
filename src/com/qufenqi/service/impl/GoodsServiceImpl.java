package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.entity.Goods;
import com.qufenqi.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	/**
	 * 商品搜索：按照条件搜索商品
	 * @param 商品 goods
	 */
	@Override
	public List<Goods> SearchGoods(Goods goods) {
		// TODO Auto-generated method stub
		
		return null;
	}

	/**
	 * 商品浏览：浏览商品详细信息,查找商品的详细信息
	 * @param 商品ID goodsID
	 */
	@Override
	public Goods QueryOneGoods(Long goodsId) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 商品购买：对商品购买的操作，购买了多少件商品，相应的商品库存量减少
	 * @param 商品ID goodsID, 购买数量 buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long goodsId,int buyNum) {
		// TODO Auto-generated method stub

	}

}
