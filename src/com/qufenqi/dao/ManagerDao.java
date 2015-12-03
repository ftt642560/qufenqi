package com.qufenqi.dao;
import java.util.List;

import com.qufenqi.entity.Manager;

	
	public interface ManagerDao{
		
		public Manager get(int sellerId);
		
		public Integer save(Manager manager);
		
		public List<Manager> find(String managerName); 
		
		void delete(long id);
		
}

