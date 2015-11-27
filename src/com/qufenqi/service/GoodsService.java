package com.qufenqi.service;

import com.qufenqi.entity.*;
import java.util.List;

/**
 * 
 * 商品模块服务层
 * @author zlin
 *
 */
public interface GoodsService {
	
	/**
	 * 搜索商品
	 * @param 商品类 goods
	 */
	public List<Goods> SearchGoods(Goods goods);
	
	/**
	 * 浏览商品：查找商品详情
	 * @param 商品ID  goodsId
	 */
	public Goods QueryOneGoods(Long goodsId);
	
	/**
	 * 购买商品：相应地减少商品量
	 * @param 商品ID goodsID, 购买数量 buyNum
	 */
	public void ReduceGoodsNum(Long goodsId,int buyNum);
	
	
}
