package com.qufenqi.service.impl;

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
		int flag = -1;
		String userName = user.getUserName();
		String password = user.getPassword();
		User userFromDateBase = userDao.find(userName);
		//1:判断用户名是否为空
		if(userName == null || userName.trim().equals("")){
			flag = 1;
		}else if (password == null || password.trim().equals("")) {
			flag = 1;
		}
		else if(userFromDateBase == null){
			System.out.println("用户名没有注册");
			flag = 2;
		}else if(!password.equals(userFromDateBase.getPassword())){
			System.out.println("用户的密码不正确！");
			flag = 3;
		}else{
			flag = 4;
		}
		return flag;
	}
}
