package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.GoodsDao;
import com.qufenqi.entity.Goods;

public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	public Goods goods;//商品类
	
	/**
	 * 模糊查询商品
	 * @param 商品类 goods
	 * 
	 */
	@Override
	public List QueryGoods(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 查找一个商品信息
	 * @param 商品ID GoodsId
	 * 
	 */
	@Override
	public Goods QueryOneGoods(Long GoodsId) {
		goods = (Goods)this.getHibernateTemplate().get(Goods.class, GoodsId);//按照商品ID查找商品
		return goods;
	}

	/**
	 * 减少商品库存量
	 * @param 商品ID GoodsId,购买数量 buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long GoodsId,int buyNum) {
		goods = QueryOneGoods(GoodsId);//按照ID查找到商品
		int goodsStoreNum = goods.getStoreNum();//获取商品的库存量
		goodsStoreNum=goodsStoreNum-buyNum;//买了多少件商品，库存量就减少多少件
		goods.setStoreNum(goodsStoreNum);//修改商品对象的库存量
		this.getHibernateTemplate().update(goods);//更新数据库
		

	}

}
