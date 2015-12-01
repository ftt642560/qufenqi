package com.qufenqi.service;

import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;

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
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage(Seller seller , int pageSize,int currentPage);
}
