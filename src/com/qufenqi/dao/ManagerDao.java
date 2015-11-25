package com.qufenqi.dao;
import com.qufenqi.entity.Manager;

	
	public interface ManagerDao{
	    //新增管理员
		public void save(Manager manager);
		//id更改管理员
		public void save(String sql);
		//删除管理员
		public void delete(int id);
}

