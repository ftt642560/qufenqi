package com.qufenqi.dao;

import com.qufenqi.entity.Seller;

/**
 * 商家的数据访问对象接口
 * @author Administrator
 *
 */
public interface SellerDao {
	/**
	 * 商家查询自己的信息
	 * @param id
	 * 			商家id
	 * @return
	 */
	public Seller querySelf(int id);
	/**
	 * 商家修改自己的信息
	 * @param seller
	 * @return 
	 */
	public int updateSelf(String sellerPassword);
	
	
	
}
