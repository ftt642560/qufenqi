package com.qufenqi.dao.impl;

import java.util.List;

import com.qufenqi.dao.GoodsDao;
import com.qufenqi.entity.Goods;

public class GoodsDaoImpl implements GoodsDao {

	/**
	 * 模糊查询商品
	 * @param 商品类 goods
	 * 
	 */
	@Override
	public List QueryGoods(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 查找一个商品信息
	 * @param 商品ID
	 * 
	 */
	@Override
	public Goods QueryOneGoods(Long GoodsId) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 减少商品库存量
	 * @param 商品ID
	 */
	@Override
	public void ReduceGoodsNum(Long GoodsId) {
		// TODO Auto-generated method stub

	}

}
