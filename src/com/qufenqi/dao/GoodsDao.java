package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Goods;

/**
 * 
 * 商品模块 Dao层
 * @author zlin
 *
 */
public interface GoodsDao {
	/**
	 * 模糊查询商品
	 * @param 商品类 goods
	 * 
	 */
	public List QueryGoods(Goods goods);
	
	/**
	 * 查找一个商品信息
	 * @param 商品ID
	 * 
	 */
	public Goods QueryOneGoods(Long GoodsId);
	
	/**
	 * 减少商品库存量
	 * @param 商品ID
	 */
	public void ReduceGoodsNum(Long GoodsId);
	
}
