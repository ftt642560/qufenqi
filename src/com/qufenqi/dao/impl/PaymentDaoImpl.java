package com.qufenqi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.qufenqi.dao.PaymentDao;
import com.qufenqi.entity.Order;
/**
 * 支付模块的数据访问的实现类
 * @author Administrator
 *
 */
public class PaymentDaoImpl implements PaymentDao{
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Override
	public List<Order> findAll(int userId) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		String hql = "from Order as order where order.user.userId = 23";
		List<Order> orderList = session.createQuery(hql).list();
		transaction.commit();
		session.close();   
		return orderList;
	}
	
	
	
}
