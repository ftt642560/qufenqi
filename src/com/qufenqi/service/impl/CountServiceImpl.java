package com.qufenqi.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qufenqi.dao.CountDao;
import com.qufenqi.dao.PaymentDao;
import com.qufenqi.entity.Count;
import com.qufenqi.entity.Order;
import com.qufenqi.service.CountService;

public class CountServiceImpl implements CountService {
	private PaymentDao paymentDao;
	private CountDao countDao;
	private Count count ;
	public void setPaymentDao(PaymentDao paymentDao) {
		this.paymentDao = paymentDao;
	}
	public void setCountDao(CountDao countDao) {
		this.countDao = countDao;
	}
	public void setCount(Count count) {
		this.count = count;
	}
	@Override
	public List<Order> countOrder() {
		//查询所有的订单
		List<Order> orderList = paymentDao.findAllOrders();
		return orderList;
	}
	
	//不同地区的不同商品的销售量
	public List<Count> count(){
		List<Count> list = countDao.count();
		return list;
	}
	/**
	 * 查询所有的地区
	 */
	public List<String> countAddress() {
		List<String> areaList = countDao.countArea();
		System.out.println("areaList=="+areaList);
		return areaList;
	}
	/**
	 * 查询所有的商品名
	 */
	public List<String> countGoodsName() {
		List<String> goodsList = countDao.countGoodsName();
		System.out.println("goodsList==="+goodsList);
		return goodsList;
	}
	public List<List<Integer>> countSaleNumber(){
		List<String> areaList = countAddress();
		List<String> goodsNameList = countGoodsName();
		List<Count> listCount = countDao.count();
		List<List<Integer>> list = new ArrayList<List<Integer>>();
		for(int i = 0 ; i < areaList.size(); i++ ){
			List<Integer> saleNumbers = new ArrayList<Integer>();
			for(int j = 0 ; j < goodsNameList.size() ; j++){
				int saleNumber = 0;
				for(int z = 0 ; z < listCount.size(); z++){
					Count count = listCount.get(z);
					if((count.getArea().equals(areaList.get(i))) && (count.getGoodsName().equals(goodsNameList.get(j))) ){
						saleNumber = count.getSaleNumber();
						break;
					}else{
						continue;
					}
				}
				saleNumbers.add(saleNumber);
			}
			list.add(saleNumbers);
			System.out.println("list==="+list);
		}
		return list;
	}
}
