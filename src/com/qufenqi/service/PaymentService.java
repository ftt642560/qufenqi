package com.qufenqi.service;

import java.util.List;

import com.qufenqi.entity.Delivery;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
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
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @param sellerid 商家的ID
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage( int sellerId,int pageSize,int currentPage);
    
    /**
     * 根据订单id去查询订单详细信息
     * @param orderID
     * @return
     */
    Order get(int orderID);
    /**
     * 更新收货人下信息
     * @param delivery
     */
    void updateOrderMess(Delivery delivery);
    
    /**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage( int pageSize,int currentPage);
    /**
     * 购买保存订单
     * @param order 
     */
    void orders(Order order);
    
    
    /**
     * 分页查询：根据用户查询自己的未付款的订单信息
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @param orderStatus d订单的状态
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage(int userId , String orderStatus ,  int pageSize,int currentPage);
    
    /**
     * 分页查询：根据用户查询自己的未付款的订单信息
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryRepaymentForPage(int userId  ,  int pageSize,int currentPage);
}
