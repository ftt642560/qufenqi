package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.UserDao;
import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;
import com.qufenqi.util.SendEmail;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	private SendEmail sendEmail;
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public SendEmail getSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(SendEmail sendEmail) {
		this.sendEmail = sendEmail;
	}
	/**
	 * 注册
	 */
	@Override
	public int register(User user) {
		System.out.println("register service user===="+user);
		int registerId = userDao.save(user);
		if(registerId > 0){
			String toEmail = user.getEmail();
			System.out.println(toEmail);
			SendEmail.send(toEmail);
		}
		return registerId;
	}

	/**
	 * 用户登录
	 * @param user 登录的用户的实例
	 * @return 返回登录的状态，true：登录成功  false：登录失败
	 */
	public int login(User user) {
		String userName = user.getUserName();
		String password = user.getPassword();
		//1:判断用户名是否为空
		if(userName == null || userName.trim().equals("")){
			return  1;
		}
		if (password == null || password.trim().equals("")) {
			return 1;
		}
		List<User> userList = userDao.find(userName);
		if(userList.size() == 0){
			System.out.println("用户名没有注册");
			return 2;
		}
		String pass = userList.get(0).getPassword();
		if(!password.equals(pass)){
			System.out.println("用户的密码不正确！");
			return 3;
		}
		if(password.equals(pass)){
			return 4;
		}
		return 0;
	}
	@Override
	public int add(User user) {
		int userId = userDao.save(user);
		return userId;
	}
	@Override
	public void update(User user) {
		userDao.update(user);
	}
	/**
	 *查询所有的u
	 */
	@Override
	public List<User> findAlls() {
		List<User> userList = userDao.findAll();
		return userList;
	}
	@Override
	public void deleteById(int userId) {
		userDao.delete(userId);
	}
	@Override
	public User getById(int userId) {
		return userDao.get(userId);
	}
}
