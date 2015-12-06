package com.qufenqi.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.entity.Order;

public class PaymentBaseDaoImpl extends HibernateDaoSupport{
	/**
	 * 根据订单的id去查询订单的详细信息
	 * @param orderId
	 * @return
	 */
	public Order get(int orderId){
		
		return null;
	}
	
}
