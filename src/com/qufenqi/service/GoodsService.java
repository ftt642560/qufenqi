package com.qufenqi.service;

import com.qufenqi.entity.*;
import java.util.List;

/**
 * 
 * ��Ʒģ��ӿ�
 * @author zlin
 *
 */
public interface GoodsService {
	
	/**
	 * ��Ʒ��������������������Ʒ
	 * @param ��Ʒ goods
	 */
	public List<Goods> SearchGoods(Goods goods);
	
	/**
	 * ��Ʒ����������Ʒ��ϸ��Ϣ,������Ʒ����ϸ��Ϣ
	 * @param ��ƷID goodsID
	 */
	public Goods QueryOneGoods(String goodsId);
	
	/**
	 * ��Ʒ���򣺶���Ʒ����Ĳ�������Ӧ����Ʒ���������
	 * @param ��ƷID goodsID
	 */
	public void ReduceGoodsNum(String goodsId);
	
	
}
