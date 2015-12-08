package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.PaymentBaseDao;
import com.qufenqi.entity.Delivery;
import com.qufenqi.entity.Order;

public class PaymentBaseDaoImpl extends HibernateDaoSupport implements PaymentBaseDao{
	/**
	 * 根据订单的id去查询订单的详细信息
	 * @param orderId
	 * @return
	 */
	public Order get(int orderId){
		return getHibernateTemplate().get(Order.class, orderId);
	}

	@Override
	public void updateOrderMess(Delivery delivery) {
		getHibernateTemplate().update(delivery);
	}

	@Override
	public void save(Order order) {
		getHibernateTemplate().save(order);
	}

	@Override
	public List<Order> findByStatus(String status , int userId) {
		return getHibernateTemplate().find("from Order as o where o.orderStatus = '"+status+"' and o.user.userId = "+userId);
	} 
}
