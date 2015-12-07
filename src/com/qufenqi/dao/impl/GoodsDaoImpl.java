package com.qufenqi.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.qufenqi.dao.GoodsDao;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.GoodsType;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.SellerGoodsImages;
/**
 * 商品实现类
 * @author zlin
 *
 */
public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	public Goods goods;//商品类
	
	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	/**
	 * 查找商品:模糊查找商品
	 * @param 商品名 goodsName
	 * 
	 */
	@Override
	public List<Goods> QueryGoods(String goodsName) {
		List<Goods> l_goods=new ArrayList<Goods>();
		try{
			
			String sql="from Goods as goods where goods.goodsName like '%"+goodsName+"%'"; //模糊查询，在任何字段存在有关键字的，都查询出来
			System.out.println("===========GoodsDaoImpl===模糊查询QueryGoods====sql==="+sql+"================");
			
			if(this.getHibernateTemplate()==null)
				System.out.println("getHibernateTemplate is null");
			else{
				
				System.out.println("getHibernateTemplate is not null");
			}
			l_goods = this.getHibernateTemplate().find(sql);
			
			if(l_goods.size() == 0)
			{
				System.out.println("======GoodsDaoImpl===l_goods为空");
				
			}
			else{
				for(int i=0;i<l_goods.size();i++)
				{
					System.out.println("===GoodsDaoImpl====goodsname="+l_goods.get(i).getGoodsName());
				}
				
			}
			
		}catch(HibernateException e)
		{
			e.printStackTrace();
		}
		return l_goods;
	}

	/**
	 * 查找商品详情
	 * @param  商品ID GoodsId
	 * 
	 */
	@Override
	public Goods QueryOneGoods(Long GoodsId) {
		goods = this.getHibernateTemplate().get(Goods.class, GoodsId);//按照商品ID，查找商品信息
		System.out.println("GoodsDaoImpl=======QueryOneGoods====goodsName="+goods.getGoodsName());
		return goods;
	}

	/**
	 *减少商品库存量
	 * @param 商品ID GoodsId,购买数量 buyNum
	 */
	@Override
	public void ReduceGoodsNum(Long GoodsId,int buyNum) {
		goods = QueryOneGoods(GoodsId);//按照商品ID查找一个商品
		int goodsStoreNum = goods.getStoreNum();//获取商品库存量
		goodsStoreNum=goodsStoreNum-buyNum;//商品库存量相应地减少件数
		goods.setStoreNum(goodsStoreNum);//更新商品库存量
		this.getHibernateTemplate().update(goods);//连接数据库修改
		
		System.out.println("GoodsDaoImpl========ReduceGoodsNum====storenum="+goods.getStoreNum());

	}
	
	/**
	 * 商家查找属于他自己的商品信息
	 * @param 商家ID
	 * @return List<Goods>
	 * 
	 */
	@Override
	//public List<Goods> SellerQueryAllGoods(int sellerid)
	public List<SellerGoods> SellerQueryAllGoods(int sellerid)
	{
//		List<Goods> l_goods = new ArrayList<Goods>();
		String sql="from SellerGoods as sellergoods where sellergoods.seller.sellerId="+sellerid;//查找商家商品表
		List<SellerGoods> l_sellergoods = new ArrayList<SellerGoods>();
		l_sellergoods = this.getHibernateTemplate().find(sql);
		for(int i=0;i<l_sellergoods.size();i++)
		{
				System.out.println("商家查找属于它的商品信息---l_sellergoods[i].goodsid==="+l_sellergoods.get(i).getGoods().getGoodsName());
//				Goods goods=l_sellergoods.get(i).getGoods();
//				l_goods.add(goods);
		}
//		
//		System.out.println("商家查找属于它的商品信息--信息放入到l_goods链表里，循环输出l_goods");
//		for(int i=0;i<l_goods.size();i++)
//		{
//			System.out.println("l_goods[i]="+l_goods.get(i).getGoodsName());
//			
//		}
//		return l_goods;
		return l_sellergoods;
		
	}
	
	
	/**
	 * 用户按关键字查找商品
	 * @param 商品名
	 * @return List<SellerGoods>
	 * 
	 */
	public List<SellerGoods> UserSearchGoods(String GoodsName)
	{
		List<SellerGoods> l_sellergoods = new ArrayList<SellerGoods>();
		//String sql="from Goods as goods where goods.goodsName like '%"+GoodsName+"%'"; //模糊查询，在任何字段存在有关键字的，都查询出来
		String sql = "from SellerGoods as sellergoods where sellergoods.goods.goodsName like '%"+GoodsName+"%'";
		l_sellergoods = this.getHibernateTemplate().find(sql);
		if(l_sellergoods.size() ==0)
		{
			System.out.println("goodsdao=====l_sellergoods is null");
		}
		System.out.println("用户按照关键字查找所有商品信息==GoodsDaoImpl====UserSearchGoods====\n");
		for(int i=0;i<l_sellergoods.size();i++)
		{
			System.out.print("GoodsDaoIimp====l_sellergoods.goodsName=="+l_sellergoods.get(i).getGoods().getGoodsName()+"\n");
		}
		
		return l_sellergoods;
		
	}
	
	/**
	 * 用户根据商品类型查找商品
	 * @param 商品类型名
	 * @return List<SellerGoods>
	 * 
	 */
	public List<SellerGoods> UserSearchByType(String GoodsTypeName)
	{
		String hql = "";
		hql = "from GoodsType as goodstype where goodstype.goodsTypeName like '%"+GoodsTypeName+"%'";
		
		System.out.println("用户根据商品类型查找商品==="+hql);
		
		List<GoodsType> l_goodstype = this.getHibernateTemplate().find(hql);
		Set<Goods> s_goods = l_goodstype.get(0).getGoods();
		List<Goods> l_goods = new ArrayList<Goods>(s_goods);
		
	   	 List<SellerGoods> l_sellergoods= new ArrayList<SellerGoods>(); //查询到的所有商家商品信息
		 
	   	 for(int i=0;i<l_goods.size();i++)
	   	 {
	   		 List<SellerGoods> l_temp1 = new ArrayList<SellerGoods>(l_goods.get(i).getSellergoods());
	   		 for(int j=0;j<l_temp1.size();j++)
	   		 {
	   			 l_sellergoods.add(l_temp1.get(j));
	   		 }
	   	 }
	   	 
	   	 for(int z=0;z<l_sellergoods.size();z++)
	   	 {
	   		 System.out.println("按照商品类型查找商品===商家名=="+l_sellergoods.get(z).getSeller().getSellerName()+"====商品 名====="+l_sellergoods.get(z).getGoods().getGoodsName());
	   	 }
		
		return l_sellergoods;
		
	}
	
	
	/**
	 * 商家上传商品图片
	 * @param Image image
	 * 
	 */
	public void addImages(SellerGoodsImages image)
	{
		this.getHibernateTemplate().save(image);
	}
	
	
	/**
	 * 获取每个商家某件商品的图片
	 */
	public List<SellerGoodsImages> findImages(String SellerId,String GoodsId)
	{
		String hql="from SellerGoodsImages as sgi where sgi.seller.sellerId="+SellerId+" and sgi.goods.goodsId="+GoodsId;
		List<SellerGoodsImages> l_sgi = this.getHibernateTemplate().find(hql);
		return l_sgi;
	}
	
	/**
	 * 添加商品
	 * @param 商品
	 * @return 返回值为1，添加成功，返回值为0，添加失败
	 */
	public void addGoods(Goods goods,Seller seller,int quantity)
	{
		
		this.getHibernateTemplate().save(goods);
		SellerGoods sellergoods = new SellerGoods();
		sellergoods.setSeller(seller);
		sellergoods.setGoods(goods);
		sellergoods.setQuantity(quantity);
		this.getHibernateTemplate().save(sellergoods);
		
		System.out.println("添加商品，商家名=="+sellergoods.getSeller().getSellerName()+"====商品名=="+sellergoods.getGoods().getGoodsName());
	}
	
	/**
	 * 
	 * 商品上架、下架
	 * @param goodsId
	 * @return 返回值为1，表示成功；返回值为0，表示失败；
	 */
	public int changeState(Long goodsId)
	{
		int flag=0;
		Goods goods=this.QueryOneGoods(goodsId);
		int status=0;
		status = goods.getStatus();
		System.out.println("原来的商品状态===goods.getStatus()==="+goods.getStatus());
		if(status == 0)
		{
			status = 1;
			System.out.println("修改了status,从0-1===status="+status);
			flag =1;
		}
		else
		{
			status =0;
			System.out.println("修改了status,从1-0===status="+status);
			flag =1;
		}
		
		goods.setStatus(status);
		System.out.println("修改goods.setStatus(status)=="+goods.getStatus());
		this.getHibernateTemplate().update(goods);
		System.out.println("修改商品状态=====status==="+status+"====flag==="+flag);
		
		return flag;
	}
	
	/**
	 * 通过商品类型名，查找到商品类型对象
	 */
	public GoodsType findgoodstypebytypename(String GoodsTypeName)
	{
		String hql="from GoodsType as gt where gt.goodsTypeName='"+GoodsTypeName+"'";
		List<GoodsType> l_goodstype = new ArrayList<GoodsType>();
		l_goodstype=this.getHibernateTemplate().find(hql);
		GoodsType gt = l_goodstype.get(0);
		return gt;
	}
	
	/**
	 * 查找所有商品类型
	 */
	public List<GoodsType> QueryAllGoodsType()
	{
		List<GoodsType> l_goodstype = new ArrayList<GoodsType>();
		String hql="from GoodsType";
		l_goodstype = this.getHibernateTemplate().find(hql);
		return l_goodstype;
	}

}
