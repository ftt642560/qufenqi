package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Delivery;
import com.qufenqi.entity.Order;

public interface PaymentBaseDao {
	/**
	 * 根据订单的id去查询订单的详细信息
	 * @param orderId
	 * @return
	 */
	public Order get(int orderId);
	/**
	 *修改订单信息
	 * @param order
	 */
	void updateOrderMess(Delivery delivery);
	
	/**
	 *下单购买
	 * @param order
	 */
	void save(Order order);
	
	/**
	 * 用户查询自己未付款的订单信息
	 */
	List<Order> findByStatus(String status , int userId);
}
