package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.GoodsDao;
import com.qufenqi.entity.Goods;

public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	public Goods goods;//��Ʒ��
	
	/**
	 * ģ����ѯ��Ʒ
	 * @param ��Ʒ�� goods
	 * 
	 */
	@Override
	public List QueryGoods(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * ����һ����Ʒ��Ϣ
	 * @param ��ƷID GoodsId
	 * 
	 */
	@Override
	public Goods QueryOneGoods(Long GoodsId) {
		goods = (Goods)this.getHibernateTemplate().get(Goods.class, GoodsId);//������ƷID������Ʒ
		return goods;
	}

	/**
	 * ������Ʒ�����
	 * @param ��ƷID GoodsId,�������� buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long GoodsId,int buyNum) {
		goods = QueryOneGoods(GoodsId);//����ID���ҵ���Ʒ
		int goodsStoreNum = goods.getStoreNum();//��ȡ��Ʒ�Ŀ����
		goodsStoreNum=goodsStoreNum-buyNum;//���˶��ټ���Ʒ��������ͼ��ٶ��ټ�
		goods.setStoreNum(goodsStoreNum);//�޸���Ʒ����Ŀ����
		this.getHibernateTemplate().update(goods);//�������ݿ�
		

	}

}
