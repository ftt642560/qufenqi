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
	 * @param 商品名 goodsName
	 */
	public List<Goods> SearchGoods(String goodsName);
	
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
	
	/**
	 * 商家查询自己的所有商品信息
	 * @param 商家ID
	 * @return 商品列表
	 * 
	 */
	public List<Goods> SellerSearchGoods(int sellerId);
	
	
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	/////房婷婷 2015-12-1
    PageBean queryForPage( int pageSize,int currentPage);
    
    /**
     * 用户根据关键字搜索商品
     * @param 商品名 GoodsName
     */
    public List<SellerGoods> UserSearchGoods(String GoodsName);
}
