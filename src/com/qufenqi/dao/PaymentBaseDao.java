package com.qufenqi.dao;

import com.qufenqi.entity.Order;

public interface PaymentBaseDao {
	/**
	 * 根据订单的id去查询订单的详细信息
	 * @param orderId
	 * @return
	 */
	public Order get(int orderId);
}
