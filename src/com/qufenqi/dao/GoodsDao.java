package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Goods;
import com.qufenqi.entity.SellerGoods;

/**
 * 
 * 商品模块GoodsDao
 * @author zlin
 *
 */
public interface GoodsDao {
	/**
	 * 查找商品:按照商品名进行模糊查询
	 * @param 商品类goods
	 * @return List
	 * 
	 */
	public List QueryGoods(String goodsName);
	
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
	
	
	/**
	 * 商家查找属于他自己的商品信息
	 * @param 商家ID
	 * @return List<SellerGoods>
	 * 
	 */
	public List<SellerGoods> SellerQueryAllGoods(int sellerid);
	
	/**
	 * 用户按关键字查找商品
	 * @param 商品名
	 * @return List<Goods>
	 * 
	 */
	public List<SellerGoods> UserSearchGoods(String GoodsName);
	
}
