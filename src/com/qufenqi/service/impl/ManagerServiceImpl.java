package com.qufenqi.service.impl;

import java.util.List;

import com.qufenqi.dao.ManagerDao;
import com.qufenqi.entity.Manager;
import com.qufenqi.entity.Seller;
import com.qufenqi.service.ManagerService;
import com.qufenqi.util.MD5;

public class ManagerServiceImpl implements ManagerService  {
	private ManagerDao managerDao;
	private Seller seller;
	private Manager manager;
	public void setManagerDao(ManagerDao managerDao) {
		this.managerDao = managerDao;
	}
	public Seller getSeller() {
		return seller;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	@Override
	public int login(Manager manager) {
		String managerName = manager.getManagName();
		String managerPassword = MD5.getMD5(manager.getPassword());
		//根据管理员表里面的商家信息
		List<Manager> managerList = managerDao.find(managerName);
		if(managerList.size() == 0){//登录的用户不是管理员
			return 2;
		}
		String password = managerList.get(0).getPassword();
		if(!password.equals(managerPassword)){
			return 1;
		}
		if(password.equals(managerPassword)){
			return 0;
		}
		return -1;
	}

	@Override
	public int register(Manager manager) {

		return 0;
	}
	@Override
	public void delete(long id) {
		managerDao.delete(id);
	}

}
