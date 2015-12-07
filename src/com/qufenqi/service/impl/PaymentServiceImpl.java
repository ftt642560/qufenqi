package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.PageBaseDao;
import com.qufenqi.dao.PaymentBaseDao;
import com.qufenqi.dao.PaymentDao;
import com.qufenqi.entity.Delivery;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;
import com.qufenqi.service.PaymentService;

/**
 * 用户支付模块的业务逻辑的实现类
 * @author Administrator
 *
 */
public class PaymentServiceImpl implements PaymentService {
	private PaymentDao paymentDao;
	private PageBaseDao pageBaseDao;
	private PaymentBaseDao paymentBaseDao;
	public PageBaseDao getPageBaseDao() {
		return pageBaseDao;
	}

	public PaymentBaseDao getPaymentBaseDao() {
		return paymentBaseDao;
	}

	public PaymentDao getPaymentDao() {
		return paymentDao;
	}

	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}

	public void setPageBaseDao(PageBaseDao pageBaseDao) {
		this.pageBaseDao = pageBaseDao;
	}

	public void setPaymentBaseDao(PaymentBaseDao paymentBaseDao) {
		this.paymentBaseDao = paymentBaseDao;
	}

	@Override
	public List<Order> findAll(int userId) {
		List<Order> orderList = paymentDao.findAll(userId);
		return orderList;
	}

	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	public PageBean queryForPage(int sellerId, int pageSize, int page) {
		String hql = "from Order as o where o.seller.sellerId = "+sellerId;
		
		//查询语句
		//查询数据库中一共有多少条记录
		int allRow = pageBaseDao.getAllRowCount(hql);
		//查询总页数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		//当前页的开始记录
		final int offset = PageBean.countOffset(pageSize, page);
				//每页的记录数
		final int length = pageSize;
				//获得当前页
		final int currentPage = PageBean.countCurrentPage(page);
				//一页的记录
		List<User> list = pageBaseDao.queryForPage(hql, offset, length);
				 //把分页信息保存到Bean中
		PageBean pageBean = new PageBean();
		pageBean.setPageSize(pageSize);  
		pageBean.setCurrentPage(currentPage);
		pageBean.setAllRow(allRow);
		pageBean.setTotalPage(totalPage);
		pageBean.setList(list);
		pageBean.init();
		return pageBean;
	}

	@Override
	public Order get(int orderID) {
		return paymentBaseDao.get(orderID);
	}

	@Override
	public void updateOrderMess(Delivery delivery) {
		paymentBaseDao.updateOrderMess(delivery);
		
	}

	@Override
	public PageBean queryForPage(int pageSize, int page) {
		String hql = "";
		hql = "from Order"; 
		//查询语句
		//查询数据库中一共有多少条记录
		int allRow = pageBaseDao.getAllRowCount(hql);
		//查询总页数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		//当前页的开始记录
		final int offset = PageBean.countOffset(pageSize, page);
		//每页的记录数
		final int length = pageSize;
		//获得当前页
		final int currentPage = PageBean.countCurrentPage(page);
		//一页的记录
		 List<User> list = pageBaseDao.queryForPage(hql, offset, length);
		 //把分页信息保存到Bean中
	     PageBean pageBean = new PageBean();
	     pageBean.setPageSize(pageSize);  
	     pageBean.setCurrentPage(currentPage);
	     pageBean.setAllRow(allRow);
	     pageBean.setTotalPage(totalPage);
	     pageBean.setList(list);
	     pageBean.init();
		 return pageBean;
	}

	@Override
	public void orders(Order order) {
		//下单的时候保存订单的状态是未付款
		order.setOrderStatus("未付款");
		paymentBaseDao.save(order);
	}

}
