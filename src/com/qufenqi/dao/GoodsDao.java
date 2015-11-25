package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Goods;

/**
 * 
 * ��Ʒģ�� Dao��
 * @author zlin
 *
 */
public interface GoodsDao {
	/**
	 * ģ����ѯ��Ʒ
	 * @param ��Ʒ�� goods
	 * 
	 */
	public List QueryGoods(Goods goods);
	
	/**
	 * ����һ����Ʒ��Ϣ
	 * @param ��ƷID
	 * 
	 */
	public Goods QueryOneGoods(Long GoodsId);
	
	/**
	 * ������Ʒ�����
	 * @param ��ƷID
	 */
	public void ReduceGoodsNum(Long GoodsId);
	
}
