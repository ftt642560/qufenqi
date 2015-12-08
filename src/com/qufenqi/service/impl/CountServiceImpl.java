package com.qufenqi.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qufenqi.dao.PaymentDao;
import com.qufenqi.entity.Order;
import com.qufenqi.service.CountService;

public class CountServiceImpl implements CountService {
	private PaymentDao paymentDao;
	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}
	@Override
	public List<Order> countOrder() {
		//查询所有的订单
		List<Order> orderList = paymentDao.findAllOrders();
		return orderList;
	}

	/**
	 * 查询所有的地区
	 */
	public List<String> countAddress() {
		List<Order> orderList = countOrder();
		List<String> addressList = new ArrayList<String>();
		for(int i = 0 ; i < orderList.size() ; i++){
			String address = orderList.get(i).getSeller().getAddress();
			addressList.add(address);
		}
		return addressList;
	}
	@Override
	public List<String> countGoodsName() {
		// TODO Auto-generated method stub
		return null;
	}

}
