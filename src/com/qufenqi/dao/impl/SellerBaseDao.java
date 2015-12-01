package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.entity.Seller;

public class SellerBaseDao extends HibernateDaoSupport{
	/**
	 * 根据标识来加载T实例
	 * @param objects 需加载的T实例的标识属性值
	 * @return T 指定标识属性对应的T实例
	 */
	public Seller get(int sellerId){
		return getHibernateTemplate().get(Seller.class, sellerId);
	}
	
	/**
	 * 查询全部的T实例
	 * @return 数据库中全部的T实例
	 */
	public List<Seller> findAll() {
		return (List<Seller>)getHibernateTemplate().find("from Seller");
	}
	/**
	 * 修改指定的T实例
	 * @param t 需要被修改的T实例
	 */
	public void update(Seller seller) {
		getHibernateTemplate().update(seller);
	}
	/**
	 * 持久化指定的T实例
	 * @param t 需要被持久化的User实例 
	 * @return T实例被持久化后的标识属性
	 */
	public Integer save(Seller seller) {
		return (Integer)getHibernateTemplate().save(seller);
	}
	/**
	 * 根据标识属性删除T实例
	 * @param id 需要被删除的T实例的标识属性
	 */
	public void delete(int sellerId) {
		getHibernateTemplate().delete(get(sellerId));
	}
	/**
	 * 删除指定的T实例
	 * @param t 需要删除的T实例
	 */
	public void delete(Seller seller) {
		getHibernateTemplate().delete(seller);
	}
	
	public List<Seller> find(String sellerName){
		return getHibernateTemplate().find("from Seller as seller where seller.sellerName='"+sellerName+"'");
	}
	
	public List<Seller> findByEmail(String email){
		return getHibernateTemplate().find("from Seller as seller where seller.email= '"+ email +"'");
	}
}
