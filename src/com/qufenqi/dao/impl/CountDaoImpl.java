package com.qufenqi.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;

import com.qufenqi.dao.CountDao;
import com.qufenqi.entity.Count;

public class CountDaoImpl implements CountDao{
	private Count count;
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void setCount(Count count) {
		this.count = count;
	}
	@Override
	public List<Count> count() {
		String sql = "SELECT s.address,g.goodsName ,SUM(g.weight) FROM sellergoods as sg LEFT JOIN seller as s ON s.sellerId=sg.sellerId LEFT JOIN goods as g ON g.goodsId=sg.goodsId GROUP BY g.goodsName";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createSQLQuery(sql);
		List list = query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		List<Count> countList = new ArrayList<Count>();
		List<Integer> in = new ArrayList<Integer>();
		for(int i = 0 ; i < list.size() ; i++){
			Map<String, Object> map = (Map<String, Object>) list.get(i);
			Count count = new Count();
			count.setArea((String) map.get("address"));
			count.setGoodsName((String) map.get("goodsName"));
			count.setSaleNumber(Integer.parseInt(map.get("SUM(g.weight)").toString()));
			System.out.println("1-----------"+count);
			countList.add(i, count);
			in.add((Integer)i);
		}
		System.out.println("countList daoImpl111=="+countList);
		System.out.println("countList daoImpl111=="+countList.get(0));
		System.out.println("countList daoImpl111=="+countList.get(2));
		System.out.println("in=="+in);
		return countList;
	}
	@Override
	public List<String> countArea() {
		String sql = "SELECT address FROM seller GROUP BY address";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createSQLQuery(sql);
		List list = query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		List<String> areaList = new ArrayList<String>();
		for(int i = 0 ; i < list.size() ; i++){
			Map<String, Object> map = (Map<String, Object>) list.get(i);
			String address = (String) map.get("address");
			System.out.println("address===="+address);
			areaList.add(address);
		}
		System.out.println("areaList.size()=="+areaList.size());
		return areaList;
	}
	@Override
	public List<String> countGoodsName() {
		String sql = "SELECT goodsName FROM goods GROUP BY goodsName";
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createSQLQuery(sql);
		List list = query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP).list();
		List<String> goodsNameList = new ArrayList<String>();
		for(int i = 0 ; i < list.size() ; i++){
			Map<String, Object> map = (Map<String, Object>) list.get(i);
			String goodsName = (String) map.get("goodsName");
			System.out.println("goodsName===="+goodsName);
			goodsNameList.add(goodsName);
		}
		System.out.println("goodsNameList.size()=="+goodsNameList.size());
		return goodsNameList;
	}

}
