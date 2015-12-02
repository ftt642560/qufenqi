package com.qufenqi.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.qufenqi.dao.PageBaseDao;
import com.qufenqi.dao.impl.GoodsDaoImpl;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.User;
import com.qufenqi.service.GoodsService;

/**
 * 
 * 商品服务类
 * @author zlin
 *
 */
public class GoodsServiceImpl implements GoodsService {
	public Goods goods;
	public GoodsDaoImpl goodsDaoImpl;
	private PageBaseDao pageBaseDao;
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public GoodsDaoImpl getGoodsDaoImpl() {
		return goodsDaoImpl;
	}

	public void setGoodsDaoImpl(GoodsDaoImpl goodsDaoImpl) {
		this.goodsDaoImpl = goodsDaoImpl;
	}

	public PageBaseDao getPageBaseDao() {
		return pageBaseDao;
	}

	public void setPageBaseDao(PageBaseDao pageBaseDao) {
		this.pageBaseDao = pageBaseDao;
	}

	/**
	 * 搜索商品
	 * @param 商品名 goodsName
	 * @return List<Goods>
	 */
	@Override
	public List<Goods> SearchGoods(String goodsName) {
		List<Goods> l_goods = new ArrayList<Goods>();
		try{		
		l_goods=goodsDaoImpl.QueryGoods(goodsName);
		System.out.println("===GoodsServiceImpl======l_goods="+l_goods);
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return l_goods;
	}

	/**
	 * 浏览商品：查找商品详情
	 * @param 商品ID  goodsId
	 * @return Goods goods
	 */
	@Override
	public Goods QueryOneGoods(Long goodsId) {
		try{
			goods=goodsDaoImpl.QueryOneGoods(goodsId);
			System.out.println("GoodsServiceImpl=====QueryOneGoods====goodsName="+goods.getGoodsName());
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return goods;
	}

	/**
	 * 购买商品：相应地减少商品量
	 * @param 商品ID goodsID, 购买数量 buyNum
	 * @return 无
	 */
	@Override
	public void ReduceGoodsNum(Long goodsId,int buyNum) {
		try{
			goodsDaoImpl.ReduceGoodsNum(goodsId, buyNum);
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}

	}
	
	
	/**
	 * 商家查询自己的所有商品信息
	 * @param 商家ID
	 * @return 商品列表
	 * 
	 */
	@Override
	public List<Goods> SellerSearchGoods(int sellerId)
	{
		List<Goods> l_goods=new ArrayList<Goods>();
		l_goods=goodsDaoImpl.SellerQueryAllGoods(sellerId);
		for(int i=0;i<l_goods.size();i++)
		{
			System.out.println("====sellersearchgoods-----l_goods[i]="+l_goods.get(i).getGoodsName());
			
		}
		return l_goods;
	}

	
	
	/**
     * 分页查询
     * @param currentPage 当前第几页
     * @param pageSize 每页大小
     * @return 封闭了分页信息(包括记录集list)的Bean
     */
	/////房婷婷 2015-12-1
	public PageBean queryForPage( int pageSize, int page) {
		String hql = "";
			hql = "from Goods";
		//查询语句
		//查询数据库中一共有多少条记录
		int allRow = pageBaseDao.getAllRowCount(hql);
		//查询总页数
		int totalPage = PageBean.countTotalPage(pageSize, allRow);
		//当前页的开始记录
		final int offset = PageBean.countOffset(pageSize, page);
		//每页的记录数
		final int length = pageSize;
		//获得当前页
		final int currentPage = PageBean.countCurrentPage(page);
		//一页的记录
		 List<User> list = pageBaseDao.queryForPage(hql, offset, length);
		 //把分页信息保存到Bean中
	     PageBean pageBean = new PageBean();
	     pageBean.setPageSize(pageSize);    
	     pageBean.setCurrentPage(currentPage);
	     pageBean.setAllRow(allRow);
	     pageBean.setTotalPage(totalPage);
	     pageBean.setList(list);
	     pageBean.init();
		 return pageBean;
	}
	
	
	 /**
     * 用户根据关键字搜索商品
     * @param 商品名 GoodsName
     */
    public List<SellerGoods> UserSearchGoods(String GoodsName)
    {
    	System.out.println("goodsservice======= usersearchgoods");
    	List<SellerGoods> l_sellergoods = new ArrayList<SellerGoods>();
    	l_sellergoods = goodsDaoImpl.UserSearchGoods(GoodsName);
    	return l_sellergoods;
    	
    }
	
	
}
