package com.qufenqi.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.ManagerDao;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.Manager;

public class ManagerDaoImpl extends HibernateDaoSupport implements ManagerDao {

	@Override
	public Manager get(int managerId) {
		return getHibernateTemplate().get(Manager.class, managerId);
	}

	@Override
	public Integer save(Manager manager) {
		return (Integer) getHibernateTemplate().save(manager);
	}

	@Override
	public List<Manager> find(String managerName) {
		return getHibernateTemplate().find("from Manager as m where m.managName = '"+managerName+"' ");
	}
	
	public Goods getById(long id) {
		return getHibernateTemplate().get(Goods.class, id);
	}
	
	@Override
	public void delete(long id) {
		getHibernateTemplate().delete(getById(id));
	}

}
