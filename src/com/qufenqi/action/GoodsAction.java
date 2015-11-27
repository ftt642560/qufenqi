package com.qufenqi.action;

import java.util.ArrayList;
import java.util.List;

import com.qufenqi.entity.Goods;
import com.qufenqi.service.impl.GoodsServiceImpl;

/**
 * 
 * 商品Action
 * @author zlin
 *
 */
public class GoodsAction {
	public GoodsServiceImpl goodsserviceimpl;//商品服务类
	public Goods goods;//商品类
	public List<Goods> l_goods; //搜索到的商品的链表
	public int buynum;//用户购买的商品量
	
	public int getBuynum() {
		return buynum;
	}


	public void setBuynum(int buynum) {
		this.buynum = buynum;
	}


	public List<Goods> getL_goods() {
		return l_goods;
	}


	public void setL_goods(List<Goods> l_goods) {
		this.l_goods = l_goods;
	}


	public Goods getGoods() {
		return goods;
	}


	public void setGoods(Goods goods) {
		this.goods = goods;
	}


	public GoodsServiceImpl getGoodsserviceimpl() {
		return goodsserviceimpl;
	}


	public void setGoodsserviceimpl(GoodsServiceImpl goodsserviceimpl) {
		this.goodsserviceimpl = goodsserviceimpl;
	}


	/**
	 * 
	 * 模糊查询商品
	 * @return
	 */
	public String searchGoods()
	{
		l_goods=new ArrayList<Goods>();
		l_goods=goodsserviceimpl.SearchGoods(goods);
		return "success";
	}
	
	/**
	 * 
	 * 查找商品的详细信息
	 */
	public String queryOneGoods()
	{
		Long goodsid = goods.getGoodsId();//用户选中的用来查看详情的商品
		goodsserviceimpl.QueryOneGoods(goodsid);//通过商品ID查找相应的商品信息
		return "success";
	}
	
	/**
	 * 
	 * 商品购买：减少商品的库存量
	 */
	public String buyGoods()
	{
		Long goodsid = goods.getGoodsId();
		goodsserviceimpl.ReduceGoodsNum(goodsid, buynum);
		return "success";
	}
		
	
}
