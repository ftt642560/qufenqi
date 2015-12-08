package com.qufenqi.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.qufenqi.dao.PageBaseDao;
import com.qufenqi.dao.impl.GoodsDaoImpl;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.GoodsType;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.SellerGoodsImages;
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
	public SellerGoods QueryOneGoods(Long sellergoodsid) {
		SellerGoods sellergoods = goodsDaoImpl.QueryOneGoods(sellergoodsid);
//		try{
//			goods=goodsDaoImpl.QueryOneGoods(sellergoodsid);
//			SellerGoods sellergoods = goodsDaoImpl.QueryOneGoods(sellergoodsid);
//			System.out.println("GoodsServiceImpl=====QueryOneGoods====goodsName="+goods.getGoodsName());
//		}
//		catch(Exception e)
//		{
//			
//			e.printStackTrace();
//		}
		return sellergoods;
	}
	
	
	
	/**
	 * 通过商品ID查找一个商品信息
	 */
	public Goods QueryOneGoodsById(Long GoodsId)
	{
		goods=goodsDaoImpl.QueryOneGoodsById(GoodsId);
		return goods;
	}
	

	/**
	 * 购买商品：相应地减少商品量
	 * @param Long sellergoodsid, 购买数量 buyNum
	 * @return 无
	 */
	@Override
	public void ReduceGoodsNum(Long sellergoodsid,int buyNum) {
		try{
			goodsDaoImpl.ReduceGoodsNum(sellergoodsid, buyNum);
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
	public PageBean SellerSearchGoods(int sellerID,int pageSize, int page)
	{
		String hql = "";
		hql ="from SellerGoods as sellergoods where sellergoods.seller.sellerId="+sellerID;//查找商家商品表
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
	List<SellerGoods> list  = pageBaseDao.queryForPage(hql, offset, length);
	 
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
	
//	//未分页
//	public List<SellerGoods> SellerSearchGoods(int sellerId)
//	{
////		List<Goods> l_goods=new ArrayList<Goods>();
////		l_goods=goodsDaoImpl.SellerQueryAllGoods(sellerId);
//		List<SellerGoods> l_sellergoods = new ArrayList<SellerGoods>();
//		l_sellergoods = goodsDaoImpl.SellerQueryAllGoods(sellerId);
//		for(int i=0;i<l_sellergoods.size();i++)
//		{
//			System.out.println("====sellersearchgoods-----l_goods[i]="+l_sellergoods.get(i).getGoods().getGoodsName());
//			
//		}
//		return l_sellergoods;
//	}

	
	
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
		 List<Goods> list = pageBaseDao.queryForPage(hql, offset, length);
		 System.out.println("list.size()"+list.size());
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
    public PageBean UserSearchGoods(String GoodsName,int pageSize, int page)
    {
    	System.out.println("goodsservice===分页==== usersearchgoods");
    	
		String hql = "";
		hql = "from SellerGoods as sellergoods where sellergoods.goods.goodsName like '%"+GoodsName+"%'";
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
	 List<SellerGoods> list = pageBaseDao.queryForPage(hql, offset, length);
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
    
	//未分页的查询
//    public List<SellerGoods> UserSearchGoods(String GoodsName)
//    {
//    	//未分页的模糊 查询
//    	System.out.println("goodsservice===未分页==== usersearchgoods");
//    	List<SellerGoods> l_sellergoods = new ArrayList<SellerGoods>();
//    	l_sellergoods = goodsDaoImpl.UserSearchGoods(GoodsName);
//    	return l_sellergoods;
//    	
//    }
	
    /**
     * 用户根据商品类型查找商品
     * @param 商品类型名称
     */
    public PageBean UserSearchByType(String GoodsTypeName,int pageSize,int page)
    {
       	System.out.println("goodsservice===分页==== 用户根据商品类型查找商品====");
    	
//    		String hql = "";
//    		hql = "from GoodsType as goodstype where goodstype.goodsTypeName like '%"+GoodsTypeName+"%'";
    	
    	//当前页的开始记录
    	final int offset = PageBean.countOffset(pageSize, page);
    	//每页的记录数
    	final int length = pageSize;
    	//获得当前页
    	final int currentPage = PageBean.countCurrentPage(page);
    	//一页的记录
//    	 List<GoodsType> list =new ArrayList<GoodsType>();
//    	 list=null;
//    	 list= pageBaseDao.queryForPage(hql, offset, length);
//    	 
//    	 System.out.println("list.size()="+list.size());
//    	 
//    	 Set<Goods> s_goods = list.get(0).getGoods();
//    	 List<Goods> l_goods = new ArrayList<Goods>(s_goods);
//    	 
//    	 System.out.println("GoodsServiceimpl====l_goods.size()===="+l_goods.size());
//    	 
//    	 List<SellerGoods> l_sellergoods= new ArrayList<SellerGoods>(); //查询到的所有商家商品信息
//    	 
//    	 for(int i=0;i<l_goods.size();i++)
//    	 {
//    		 List<SellerGoods> l_temp1 = new ArrayList<SellerGoods>(l_goods.get(i).getSellergoods());
//    		 for(int j=0;j<l_temp1.size();j++)
//    		 {
//    			 l_sellergoods.add(l_temp1.get(j));
//    		 }
//    	 }
//    	 
//    	 for(int z=0;z<l_sellergoods.size();z++)
//    	 {
//    		 System.out.println("按照商品累心查找商品===商家名=="+l_sellergoods.get(z).getSeller().getSellerName()+"====商品 名====="+l_sellergoods.get(z).getGoods().getGoodsName());
//    	 }
    	 
    	List<SellerGoods> l_sellergoods = this.getGoodsDaoImpl().UserSearchByType(GoodsTypeName);
    	
    	List<SellerGoods> list = new ArrayList<SellerGoods>();
    	list.clear();
    	//把查询到的链表分段
    	
    	int a=pageSize*(page-1); //每一页的起始索引
    	int b=pageSize*page; //每一页的最后一个索引
    	
    	if(a<0)
    	{
    		a=0;b=pageSize;
    	}
    	
    	if(b>l_sellergoods.size())
    	{
    		b=l_sellergoods.size();
    	}
    	System.out.println("page="+page+"===a==="+a+"===b=="+b);
    	for(int i=a;i<b;i++)
    	{
    		SellerGoods sg = l_sellergoods.get(i);
    		System.out.println("sg==="+sg);
    		
    		list.add(sg);
    	}
    	

    	    	
     	//查询数据库中一共有多少条记录
     	//int allRow = pageBaseDao.getAllRowCount(hql);
    	 int allRow = l_sellergoods.size();
     	//查询总页数
 		int totalPage = PageBean.countTotalPage(pageSize, allRow);
    	 
    	 //把分页信息保存到Bean中
         PageBean pageBean = new PageBean();
         pageBean.setPageSize(pageSize);    
         pageBean.setCurrentPage(currentPage);
         pageBean.setAllRow(allRow);
         pageBean.setTotalPage(totalPage);
         pageBean.setList(list);
         pageBean.init();
         
         System.out.println("pageBean==="+pageBean);
         
    	 return pageBean;
    	
    }
    
    
    /**
     * 商家为某个商品添加图片
     */
    public void addImages(SellerGoodsImages image)
    {
    	goodsDaoImpl.addImages(image);
    }
    

    
    /**
     * 读取某个商家某个商品的图片
     * 
     */
    public List<SellerGoodsImages> findImages(String SellerId,String GoodsId)
    {
    	return goodsDaoImpl.findImages(SellerId, GoodsId);
    }
    
    /**
     * 商家添加商品
     */
    public void addGoods(Goods goods,Seller seller,int quantity,String goodsTypeName)
    {
    	GoodsType gt = goodsDaoImpl.findgoodstypebytypename(goodsTypeName);
    	goods.setGoodstype(gt);
    	goodsDaoImpl.addGoods(goods, seller, quantity);
    }
    
    /**
     * 
     * 商品上架、下架
     */
    public int changeGoodsStatus(Long goodsId)
    {
    	int flag=0;
    	flag = goodsDaoImpl.changeState(goodsId);
    	return flag;
    }
    
    /**
     * 查询所有的商品类型
     */
    public List<GoodsType> QueryAllGoodsType()
    {
    	return goodsDaoImpl.QueryAllGoodsType();
    }
	
}
