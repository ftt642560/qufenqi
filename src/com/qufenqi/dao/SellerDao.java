package com.qufenqi.dao;

import com.qufenqi.entity.Seller;

/**
 * 商家的数据访问对象接口
 * @author Administrator
 *
 */
public interface SellerDao {
	/**
	 * 商家注册
	 * @param seller
	 * 			商家实体类
	 */
	public void register(Seller seller);
	/**
	 * 商家登录
	 * @param seller
	 * 			商家实体类
	 */
	public void login(Seller seller);
	/**
	 * 商家退出系统
	 */
	public void quit();
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
	 */
	public void updateSelf(Seller seller);
	
	
	
}
