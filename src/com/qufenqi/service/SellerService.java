package com.qufenqi.service;

import com.qufenqi.entity.PageBean;
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
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage( int pageSize,int currentPage);
    
    PageBean queryForPageCondition(String sellerName , int pageSize,int currentPage);
    
    void delete(int sellerId);
    
    Seller find(String sellerName);

	boolean modifyPassword(String oldPassword, String sellerPassword,
			String name);
	
	//-----------------zlin---------------
	/**
	 * 
	 * 通过商家ID查找商家
	 */
	public Seller findBySellerId(int SellerId);
}
