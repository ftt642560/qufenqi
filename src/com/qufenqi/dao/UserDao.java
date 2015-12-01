package com.qufenqi.dao;

import java.util.List;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.User;

/**
 * 用户数据库访问接口
 * @author Administrator
 *
 */
public interface UserDao {
	/**
	 * 根据用户登录名来加载User实例
	 * @param userName 需加载的User实例的用户的登录名
	 * @return User 指定用户登录名对应的User实例
	 */
	List<User> find(String userName);
	List<User> findByEmail(String email);
	/**
	 * 根据标识来加载User实例
	 * @param userId 需加载的User实例的标识属性值
	 * @return List<User> 指定标识属性对应的User实例
	 */
	User get(int userId);
	/**
	 * 查询全部的User实例
	 * @return 数据库中全部的User实例
	 */
	List<User> findAll();
	/**
	 * 修改指定的User实例
	 * @param user 需要被修改的User实例
	 */
	void update(User user);
	/**
	 * 持久化指定的User实例
	 * @param user 需要被持久化的User实例 
	 * @return User实例被持久化后的标识属性
	 */
	Integer save(User user);
	/**
	 * 根据标识属性删除User实例
	 * @param id 需要被删除的User实例的标识属性
	 */
	void delete(int userId);
	/**
	 * 删除指定的User实例
	 * @param user 需要删除的User实例
	 */
	void delete(User user);
	/**
	 * 根据用户名查询订单
	 * @param userId 用户的id
	 * @return
	 */
	List<Order> queryOrderByUserId(int userId);
	/**
	 * 分页查询
	 * @param hql 查询的条件
	 * @param offset 开始记录
	 * @param pageSize 一页最多显示多少条记录
	 * @return length
	 */
	List<User> queryByPage(final String hql, final int offset,final int length);
	/**
	 * 查询所有的记录数
	 * @param hql 查询条件
	 * @return 总的记录数
	 */
	int getAllRowCount(String hql);
}
