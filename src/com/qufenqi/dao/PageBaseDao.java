package com.qufenqi.dao;

import java.util.List;


public interface PageBaseDao {
	/**
	 * 分页查询
	 * @param hql 查询的条件
	 * @param offset 开始记录
	 * @param pageSize 一页最多显示多少条记录
	 * @return length
	 */
	public List queryForPage(final String hql,final int offset,final int length);
	/**
	 * 查询所有的记录数
	 * @param hql 查询条件
	 * @return 总的记录数
	 */
	int getAllRowCount(String hql);
	
	
	
//	private final Class<T> clazz ;
//	public static <U> BaseDao<U> createBaseDao(Class<U> clazz) {   
//        return new BaseDao<U>(clazz);   
//    }  
//	protected BaseDao(Class<T> clazz) {   
//        this.clazz = clazz;   
//    }  
//	/**
//	 * 根据标识来加载T实例
//	 * @param objects 需加载的T实例的标识属性值
//	 * @return T 指定标识属性对应的T实例
//	 */
//	public T get(Object...objects){
//		return getHibernateTemplate().get(clazz, objects);
//	}
//	
//	/**
//	 * 查询全部的T实例
//	 * @return 数据库中全部的T实例
//	 */
//	public List<T> findAll() {
//		return (List<T>)getHibernateTemplate().find("from T");
//	}
//	/**
//	 * 修改指定的T实例
//	 * @param t 需要被修改的T实例
//	 */
//	public void update(T t) {
//		getHibernateTemplate().update(t);
//	}
//	/**
//	 * 持久化指定的T实例
//	 * @param t 需要被持久化的User实例 
//	 * @return T实例被持久化后的标识属性
//	 */
//	public Integer save(T t) {
//		return (Integer)getHibernateTemplate().save(t);
//	}
//	/**
//	 * 根据标识属性删除T实例
//	 * @param id 需要被删除的T实例的标识属性
//	 */
//	public void delete(Object...objects) {
//		getHibernateTemplate().delete(get(objects));
//	}
//	/**
//	 * 删除指定的T实例
//	 * @param t 需要删除的T实例
//	 */
//	public void delete(T t) {
//		getHibernateTemplate().delete(t);
//	}
//	
//	public List<Seller> find(Object object){
//		return getHibernateTemplate().find("from Seller as seller where seller.sellerName="+object);
//	}
//	
//	public List<Seller> findByEmail(Object object){
//		return getHibernateTemplate().find("from Seller as seller where seller.email="+object);
//	}
}
