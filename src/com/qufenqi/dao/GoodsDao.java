package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Goods;
import com.qufenqi.entity.GoodsType;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.SellerGoodsImages;

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
	
	/**
	 * 用户根据商品类型查找商品
	 * @param 商品类型名
	 * @return List<SellerGoods>
	 * 
	 */
	public List<SellerGoods> UserSearchByType(String GoodsTypeName);
	
	/**
	 * 商家上传商品图片
	 * @param Image image
	 * 
	 */
	public void addImages(SellerGoodsImages image);
	
	
	/**
	 * 获取每个商家某件商品的图片
	 */
	public List<SellerGoodsImages> findImages(String SellerId,String GoodsId);
	
	/**
	 * 商品添加
	 * @param Goods goods
	 * 
	 */
	public void addGoods(Goods goods,Seller seller,int quantity);
	
	/**
	 * 
	 * 商品上架、下架
	 * @param goodsId
	 * @return 返回值为1，表示成功；返回值为0，表示失败；
	 */
	public int changeState(Long goodsId);
	
	/**
	 * 通过商品类型名，查找到商品类型对象
	 */
	public GoodsType findgoodstypebytypename(String GoodsTypeName);
}

