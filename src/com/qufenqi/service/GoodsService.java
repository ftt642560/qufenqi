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
	 * @param 商品ID  sellergoodsid
	 */
	public SellerGoods QueryOneGoods(Long sellergoodsid);
	
	
	
	/**
	 * 通过商品ID查找一个商品信息
	 */
	public Goods QueryOneGoodsById(Long GoodsId);
	
	/**
	 * 购买商品：相应地减少商品量
	 * @param Long sellergoodsid, 购买数量 buyNum
	 */
	public void ReduceGoodsNum(Long sellergoodsid,int buyNum);
	
	/**
	 * 商家查询自己的所有商品信息
	 * @param 商家ID
	 * @return 商品列表
	 * 
	 */
	//public List<SellerGoods> SellerSearchGoods(int sellerId);
	public PageBean SellerSearchGoods(int sellerID,int pageSize, int page);
	
	
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
    //public List<SellerGoods> UserSearchGoods(String GoodsName);
    public PageBean UserSearchGoods(String GoodsName,int pageSize, int page);
    
    
    /**
     * 用户根据商品类型查找商品
     * @param 商品类型
     */
    public PageBean UserSearchByType(String GoodsTypeName,int pageSize,int page);
    
    /**
     * 商家为某个商品添加图片
     */
    public void addImages(SellerGoodsImages image);
    
    /**
     * 读取某个商家某个商品的图片
     * 
     */
    public List<SellerGoodsImages> findImages(String SellerId,String GoodsId);
    
    /**
     * 商家添加商品
     */
    public SellerGoods addGoods(Goods goods,Seller seller,int quantity,String goodsTypeName);
    
    /**
     * 
     * 商品上架、下架
     */
    public int changeGoodsStatus(Long goodsId);
    
    /**
     * 查询所有的商品类型
     */
    public List<GoodsType> QueryAllGoodsType();
    
	//通过商品类型ID，查找商品类型 对象
	public GoodsType searchGoodsTypeById(long id);
	
	/**
	 * 查找所有的商品信息，放到首页
	 * @return
	 */
	public PageBean QueryAllGoods(int pageSize,int page);
    
}
