package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.PaymentDao;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.User;
import com.qufenqi.service.PaymentService;

/**
 * 用户支付模块的业务逻辑的实现类
 * @author Administrator
 *
 */
public class PaymentServiceImpl implements PaymentService {
	private PaymentDao paymentDao;
	
	public PaymentDao getPaymentDao() {
		return paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}

	@Override
	public List<Order> findAll(int userId) {
		List<Order> orderList = paymentDao.findAll(userId);
		return orderList;
	}

}
