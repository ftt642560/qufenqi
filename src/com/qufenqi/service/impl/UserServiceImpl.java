package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.UserDao;
import com.qufenqi.entity.Order;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.User;
import com.qufenqi.service.UserService;
import com.qufenqi.util.MD5;
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
		String userName = user.getUserName();
		String email = user.getEmail();
		List<User> userlistByUserName = userDao.find(userName);
		if(userlistByUserName.size() != 0){
			return 1;
		}
		List<User> userListByEmail = userDao.findByEmail(email);
		System.out.println("userListByEmail.size()==="+userListByEmail);
		if(userListByEmail.size() != 0){
			return 2;
		}else{
			String password = MD5.getMD5(user.getPassword());
			user.setPassword(password);
			int registerId = userDao.save(user);
			if(registerId > 0){
				String toEmail = user.getEmail();
				System.out.println(toEmail);
				SendEmail.send(toEmail);
			}
			return 3;
		}
	}

	/**
	 * 用户登录
	 * @param user 登录的用户的实例
	 * @return 返回登录的状态，true：登录成功  false：登录失败
	 */
	public int login(User user) {
		System.out.println("user=="+user);
		String userName = user.getUserName();
		String password = MD5.getMD5(user.getPassword());
		System.out.println(password);
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
		System.out.println(userList.size());
		String pass = userList.get(0).getPassword();
		System.out.println("pass===="+pass);
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
	public void update(long tele , String userName) {
//		userDao.update(user);
		String hql = "update user set telephone=" + tele + " where userName = '"+userName+"'";
		userDao.update(hql);
	}
	public void update(User user){
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
	@Override
	public List<User> getByUserName(String userName) {
		return userDao.find(userName);
	}
	@Override
	public List<Order> queryOrderByUserId(int userId) {
		return userDao.queryOrderByUserId(userId);
	}
	 /**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	public PageBean queryForPage(User user , int pageSize, int page) {
		String hql = "";
		if(user == null){
			hql = "from User"; 
		}else{
			String userName = user.getUserName();
			hql = "from User as user where user.userName = '"+ userName +"'";
		}
		//查询语句
		//查询数据库中一共有多少条记录
		int allRow = userDao.getAllRowCount(hql);
		//查询总页数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		//当前页的开始记录
		final int offset = PageBean.countOffset(pageSize, page);
		//每页的记录数
		final int length = pageSize;
		//获得当前页
		final int currentPage = PageBean.countCurrentPage(page);
		//一页的记录
		 List<User> list = userDao.queryForPage(hql, offset, length);
		 
		 //把分页信息保存到Bean中
	     PageBean pageBean = new PageBean();
	     pageBean.setPageSize(pageSize);    
	     pageBean.setCurrentPage(currentPage);
	     pageBean.setAllRow(allRow);
	     pageBean.setTotalPage(totalPage);
	     pageBean.setList(list);
	     pageBean.init();
		 return pageBean;
	}
}
