package com.qufenqi.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.GoodsDao;
import com.qufenqi.entity.Goods;
/**
 * 商品实现类
 * @author zlin
 *
 */
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	public Goods goods;//商品类
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	/**
	 * 查找商品:模糊查找商品
	 * @param 商品类goods
	 * 
	 */
	@Override
	public List QueryGoods(Goods goods) {
		List<Goods> l_goods=new ArrayList<Goods>();
		try{
			String goodsName = goods.getGoodsName();
			String sql="select * from Goods as goods where goods.goodsName like '% "+goodsName+"%'"; //模糊查询，在任何字段存在有关键字的，都查询出来
			System.out.println("===========GoodsDaoImpl===模糊查询QueryGoods====sql==="+sql+"================");
			l_goods = (this).getHibernateTemplate().find(sql);
			
			if(l_goods == null)
			{
				System.out.println("======GoodsDaoImpl===l_goods为空");
				
			}
			
		}catch(HibernateException e)
		{
			e.printStackTrace();
		}
		return l_goods;
	}

	/**
	 * 查找商品详情
	 * @param  商品ID GoodsId
	 * 
	 */
	@Override
	public Goods QueryOneGoods(Long GoodsId) {
		goods = (Goods)this.getHibernateTemplate().get(Goods.class, GoodsId);//按照商品ID，查找商品信息
		return goods;
	}

	/**
	 *减少商品库存量
	 * @param 商品ID GoodsId,购买数量 buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long GoodsId,int buyNum) {
		goods = QueryOneGoods(GoodsId);//按照商品ID查找一个商品
		int goodsStoreNum = goods.getStoreNum();//获取商品库存量
		goodsStoreNum=goodsStoreNum-buyNum;//商品库存量相应地减少件数
		goods.setStoreNum(goodsStoreNum);//更新商品库存量
		this.getHibernateTemplate().update(goods);//连接数据库修改
		

	}
	

}
