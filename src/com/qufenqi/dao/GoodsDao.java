package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Goods;

/**
 * 
 * 商品模块GoodsDao
 * @author zlin
 *
 */
public interface GoodsDao {
	/**
	 * 查找商品
	 * @param 商品类goods
	 * @return List
	 * 
	 */
	public List QueryGoods(Goods goods);
	
	/**
	 * 查找商品详情
	 * @param  商品ID GoodsId
	 * @return Goods
	 * 
	 */
	public Goods QueryOneGoods(Long GoodsId);
	
	/**
	 *减少商品库存量
	 * @param 商品ID GoodsId,购买数量 buyNum
	 * @return 无
	 */
	public void ReduceGoodsNum(Long GoodsId,int buyNum);
	
}
