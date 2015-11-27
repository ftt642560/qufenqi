package com.qufenqi.service;

import java.util.List;

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
}
