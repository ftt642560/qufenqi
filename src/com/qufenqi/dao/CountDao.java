package com.qufenqi.dao;

import java.util.List;

/**
 * 统计的数据访问接口
 * @author Administrator
 *
 */
public interface CountDao {
	/**
	 * 统计某个地区的某个商品的数量
	 */
	List count();
	/**
	 * 查询所有的地区
	 * @return
	 */
	List<String> countArea();
	
	/**
	 * 查询所有的商品名
	 * @return
	 */
	List<String> countGoodsName();
}
