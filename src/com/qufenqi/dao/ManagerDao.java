package com.qufenqi.dao;
import com.qufenqi.entity.Manager;

	
	public interface ManagerDao{
	    //��������Ա
		public void save(Manager manager);
		//id���Ĺ���Ա
		public void save(String sql);
		//ɾ������Ա
		public void delete(int id);
}

