package com.qufenqi.dao;

import  org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.qufenqi.entity.Manager;

public class ManagerIDao extends HibernateDaoSupport implements ManagerDao{
	public Manager get(Integer id){

		return (Manager)getHibernateTemplate()
			.get(Manager.class , id);
	}

	public void delete(int id) {
		getHibernateTemplate()
		.delete(get(id));
	}

	public void save(Manager manager) {
		getHibernateTemplate()
		.save(manager);
	}

	public void save(String sql) {
		this.getHibernateTemplate().getSessionFactory().openSession().createSQLQuery(sql).executeUpdate();
	}


}