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
	 * @param 商品ID GoodsId
	 * 
	 */
	public Goods QueryOneGoods(Long GoodsId);
	
	/**
	 * 按照购买的多少，相应地减少商品库存量
	 * @param 商品ID GoodsID,购买数量 buyNum
	 */
	public void ReduceGoodsNum(Long GoodsId,int buyNum);
	
}
