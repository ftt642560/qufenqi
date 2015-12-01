package com.qufenqi.service;

import java.util.List;

import com.qufenqi.entity.Order;
/**
 * 支付模块的业务逻辑访问接口
 * @author Administrator
 *
 */
public interface PaymentService {
	/**
	 * 根据用户的id去查询该用户的所有的订单
	 * @param userId 用户的id
	 * @return 所有的订单
	 */
	List<Order> findAll(int userId);
}
