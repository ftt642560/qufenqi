package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.entity.Goods;
import com.qufenqi.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	/**
	 * ��Ʒ��������������������Ʒ
	 * @param ��Ʒ goods
	 */
	@Override
	public List<Goods> SearchGoods(Goods goods) {
		// TODO Auto-generated method stub
		
		return null;
	}

	/**
	 * ��Ʒ����������Ʒ��ϸ��Ϣ,������Ʒ����ϸ��Ϣ
	 * @param ��ƷID goodsID
	 */
	@Override
	public Goods QueryOneGoods(Long goodsId) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * ��Ʒ���򣺶���Ʒ����Ĳ����������˶��ټ���Ʒ����Ӧ����Ʒ���������
	 * @param ��ƷID goodsID, �������� buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long goodsId,int buyNum) {
		// TODO Auto-generated method stub

	}

}
