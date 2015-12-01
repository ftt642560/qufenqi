package com.qufenqi.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.PageBaseDao;

public class PageBaseDaoImpl extends HibernateDaoSupport implements PageBaseDao{

	@Override
	public List queryForPage(final String hql, final int offset, final int length) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query = session.createQuery(hql);
				query.setFirstResult(offset);
	            query.setMaxResults(length);
	            List list = query.list();
				return list;
			}
		});
		return list;
	}

	@Override
	public int getAllRowCount(String hql) {
		return getHibernateTemplate().find(hql).size();
	}

}
