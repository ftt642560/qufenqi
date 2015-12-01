package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.Repayment;
/**
 * 支付模块的数据访问接口
 * @author Administrator
 *
 */
public interface PaymentDao {
	/**
	 * 根据用户的id去查询该用户所有的订单
	 * @param userId 用户的id
	 * @return 用户的所有的订单
	 */
	List<Order> findAll(int userId);
}
