package com.qufenqi.service;

import com.qufenqi.entity.Seller;

/**
 * 商家业务逻辑接口
 * @author Administrator
 *
 */
public interface SellerService {
	/**
	 * 商家注册
	 * @param seller
	 */
	int register(Seller seller);
	
	int login(Seller seller);
	
	boolean modify(String sellerPsw);
}
