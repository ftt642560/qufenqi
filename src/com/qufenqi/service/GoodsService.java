package com.qufenqi.service;

import com.qufenqi.entity.*;
import java.util.List;

/**
 * 
 * 商品模块接口
 * @author zlin
 *
 */
public interface GoodsService {
	
	/**
	 * 商品搜索：按照条件搜索商品
	 * @param 商品 goods
	 */
	public List<Goods> SearchGoods(Goods goods);
	
	/**
	 * 商品浏览：浏览商品详细信息,查找商品的详细信息
	 * @param 商品ID goodsID
	 */
	public Goods QueryOneGoods(String goodsId);
	
	/**
	 * 商品购买：对商品购买的操作，相应的商品库存量减少
	 * @param 商品ID goodsID
	 */
	public void ReduceGoodsNum(String goodsId);
	
	
}
