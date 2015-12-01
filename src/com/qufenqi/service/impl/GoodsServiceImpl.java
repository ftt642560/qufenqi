package com.qufenqi.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qufenqi.dao.impl.GoodsDaoImpl;
import com.qufenqi.entity.Goods;
import com.qufenqi.service.GoodsService;

/**
 * 
 * 商品服务类
 * @author zlin
 *
 */
public class GoodsServiceImpl implements GoodsService {
	public Goods goods;
	public GoodsDaoImpl goodsDaoImpl;
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public GoodsDaoImpl getGoodsDaoImpl() {
		return goodsDaoImpl;
	}

	public void setGoodsDaoImpl(GoodsDaoImpl goodsDaoImpl) {
		this.goodsDaoImpl = goodsDaoImpl;
	}

	/**
	 * 搜索商品
	 * @param 商品名 goodsName
	 * @return List<Goods>
	 */
	@Override
	public List<Goods> SearchGoods(String goodsName) {
		List<Goods> l_goods = new ArrayList<Goods>();
		try{		
		l_goods=goodsDaoImpl.QueryGoods(goodsName);
		System.out.println("===GoodsServiceImpl======l_goods="+l_goods);
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return l_goods;
	}

	/**
	 * 浏览商品：查找商品详情
	 * @param 商品ID  goodsId
	 * @return Goods goods
	 */
	@Override
	public Goods QueryOneGoods(Long goodsId) {
		try{
			goods=goodsDaoImpl.QueryOneGoods(goodsId);
			System.out.println("GoodsServiceImpl=====QueryOneGoods====goodsName="+goods.getGoodsName());
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return goods;
	}

	/**
	 * 购买商品：相应地减少商品量
	 * @param 商品ID goodsID, 购买数量 buyNum
	 * @return 无
	 */
	@Override
	public void ReduceGoodsNum(Long goodsId,int buyNum) {
		try{
			goodsDaoImpl.ReduceGoodsNum(goodsId, buyNum);
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}

	}
	
	
	/**
	 * 商家查询自己的所有商品信息
	 * @param 商家ID
	 * @return 商品列表
	 * 
	 */
	@Override
	public List<Goods> SellerSearchGoods(int sellerId)
	{
		List<Goods> l_goods=new ArrayList<Goods>();
		
		
		return l_goods;
	}
	

}
