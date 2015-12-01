package com.qufenqi.service;

import java.util.List;

import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.User;

/**
 * 用户的业务逻辑接口
 * @author Administrator
 *
 */
public interface UserService {
	/**
	 * 用户注册
	 * @param user 需要注册的对象实例
	 */
	int register(User user);
	/**
	 * 用户登录
	 * @param user 登录的用户的实例
	 * @return 返回登录的状态，4：登录成功  3：登录失败 (密码不正确)2:表示没有注册  1：用户名或者密码为空
	 */
	int login(User user);
	/**
	 * 添加用户
	 * @param user 要添加的用户实例
	 * @return
	 */
	int add(User user);
	
	void update(User user);
	/**
	 * 查询所有的User实例
	 */
	List<User> findAlls();
	
	void deleteById(int userId);
	
	
	User getById(int userId);
	
	List<User> getByUserName(String userName);
	
	List<Order> queryOrderByUserId(int userId);
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
    PageBean queryForPage(User user , int pageSize,int currentPage);
}
