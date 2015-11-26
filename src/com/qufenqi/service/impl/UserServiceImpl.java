package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.UserDao;
import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		
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
}
