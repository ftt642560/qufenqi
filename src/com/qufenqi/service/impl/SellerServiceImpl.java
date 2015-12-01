package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.PageBaseDao;
import com.qufenqi.dao.SellerDao;
import com.qufenqi.dao.UserDao;
import com.qufenqi.dao.impl.SellerBaseDao;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;
import com.qufenqi.service.SellerService;
import com.qufenqi.util.MD5;
import com.qufenqi.util.SendEmail;

public class SellerServiceImpl implements SellerService{
	private SellerBaseDao sellerBaseDao;
	private UserDao userDao; 
	private SellerDao sellerDao;
	private PageBaseDao pageBaseDao;
	public void setSellerBaseDao(SellerBaseDao sellerBaseDao) {
		this.sellerBaseDao = sellerBaseDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public void setSellerDao(SellerDao sellerDao) {
		this.sellerDao = sellerDao;
	}
	public void setPageBaseDao(PageBaseDao pageBaseDao) {
		this.pageBaseDao = pageBaseDao;
	}
	/**
	 * 商家注册
	 */
	public int register(Seller seller) {
		//前提是用户不为空
		String sellerName = seller.getSellerName();
		System.out.println(sellerName);
		String email = seller.getEmail();
		//首先查询用户数据表，判断该注册商家是否是用户，如果不是用户则不允许其注册商家
		List<User> userList = userDao.find(sellerName);
		if(userList.size() == 0){
			return 0;   //0代表该注册商家不是用户，不允许注册商家
		}
		//根据用户名查询库
		List<Seller> sellerList = sellerBaseDao.find(sellerName);
		int size = sellerList.size();
		if(size != 0){
			return 1; //该商家用户名已经被注册
		}
		sellerList = sellerBaseDao.findByEmail(email);
		size = sellerList.size();
		if(size != 0){ 
			return 2;  //该商家的邮箱已经被注册
		}
		seller.setRole(0);//0 代表是等待管理员通过的注册商家  1：1是商家  2：是管理员
		//执行注册，也就是将用户信息添加到数据库,现将用户密码加密
		seller.setSellerPassword(MD5.getMD5(seller.getSellerPassword()));
		int sellerId = sellerBaseDao.save(seller);
		if(sellerId == 0){
			return 3;  //该商家的注册失败
		}
		//发送邮件，给管理员
		SendEmail.send(email);
		return 4; //代表注册成功
	}
	@Override
	public int login(Seller seller) {
		String sellerName = seller.getSellerName();
		System.out.println(MD5.getMD5("627"));
		String sellerPassword = MD5.getMD5(seller.getSellerPassword());
		System.out.println(sellerPassword);
		//根据用户名查询数据库中的用户信息
		List<Seller> sellerList = sellerBaseDao.find(sellerName);
		if(sellerList.size() == 0){
			return 4;
		}
		String password = sellerList.get(0).getSellerPassword();
		if(!password.equals(sellerPassword)){
			return 3;
		}
		int role = sellerList.get(0).getRole();
		if(role == 1){
			System.out.println("说明该商家登录成功");
			return 1;
		}if(role == 2){
			System.out.println("说明该管理员登录成功");
			return 2;
		}
		return 0;
	}
	@Override
	public boolean modify(String sellerPsw) {
		int i = sellerDao.updateSelf(sellerPsw);
		System.out.println("i====="+i);
		if(i > 0){
			return true;
		}
		return false;
	}
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	public PageBean queryForPage(Seller seller, int pageSize, int page) {
		String hql = "";
		if(seller == null){
			hql = "from Seller"; 
		}else{
			String sellerName = seller.getSellerName();
			hql = "from Seller as seller where seller.sellerName = '"+ sellerName +"'";
		}
		//查询语句
		//查询数据库中一共有多少条记录
		int allRow = pageBaseDao.getAllRowCount(hql);
		//查询总页数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		//当前页的开始记录
		final int offset = PageBean.countOffset(pageSize, page);
		//每页的记录数
		final int length = pageSize;
		//获得当前页
		final int currentPage = PageBean.countCurrentPage(page);
		//一页的记录
		 List<User> list = pageBaseDao.queryForPage(hql, offset, length);
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
