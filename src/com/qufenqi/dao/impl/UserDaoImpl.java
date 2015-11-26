package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.UserDao;
import com.qufenqi.entity.User;
/**
 * 用户数据库访问接口的实现
 * @author Administrator
 *
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	/**
	 * 根据用户登录名来加载User实例
	 * @param userName 需加载的User实例的用户的登录名
	 * @return User 指定用户登录名对应的User实例
	 */
	public List<User> find(String userName) {
		String sql = "select user from User as user where user.userName = '"+userName+"'";
		return (List<User>)getHibernateTemplate().find(sql); 
	}
	/**
	 * 根据标识来加载User实例
	 * @param userId 需加载的User实例的标识属性值
	 * @return User 指定标识属性对应的User实例
	 */
	public User get(int userId) {
		return getHibernateTemplate().get(User.class, userId);
	}
	/**
	 * 查询全部的User实例
	 * @return 数据库中全部的User实例
	 */
	public List<User> findAll() {
		return (List<User>)getHibernateTemplate().find("from User");
	}
	/**
	 * 修改指定的User实例
	 * @param user 需要被修改的User实例
	 */
	public void update(User user) {
		getHibernateTemplate().update(user);
	}
	/**
	 * 持久化指定的User实例
	 * @param user 需要被持久化的User实例 
	 * @return User实例被持久化后的标识属性
	 */
	public Integer save(User user) {
		return (Integer) getHibernateTemplate().save(user);
	}
	/**
	 * 根据标识属性删除User实例
	 * @param id 需要被删除的User实例的标识属性
	 */
	public void delete(int userId) {
		getHibernateTemplate().delete(get(userId));
	}
	/**
	 * 删除指定的User实例
	 * @param user 需要删除的User实例
	 */
	public void delete(User user) {
		getHibernateTemplate().delete(user);
	}
}
