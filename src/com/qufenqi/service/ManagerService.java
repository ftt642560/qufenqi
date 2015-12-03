package com.qufenqi.service;

import com.qufenqi.entity.Manager;

public interface ManagerService {
	int register(Manager manager);
	
	int login(Manager Manager);
	void delete(long id);
}
