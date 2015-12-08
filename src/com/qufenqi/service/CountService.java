package com.qufenqi.service;

import java.util.List;

import com.qufenqi.entity.Order;

/**
 * 统计某个地区的某个商品的销售量
 * @author Administrator
 *
 */
public interface CountService {
	//统计各个地区的各个商品的数量
	//先查找某个地区的各个商品的销量
	/**
	 * 统计所有的订单
	 * @return
	 */
	List<Order> countOrder();
	/**
	 * 统计所有的产品
	 * @return
	 */
	List<String> countAddress();
	/**
	 * 统计每个地区
	 * @return
	 */
	List<String> countGoodsName();
				
}
