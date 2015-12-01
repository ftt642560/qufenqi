package com.qufenqi.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Goods;
import com.qufenqi.entity.PageBean;
import com.qufenqi.service.impl.GoodsServiceImpl;

/**
 * 
 * 商品Action
 * @author zlin
 *
 */
public class GoodsAction {
	public GoodsServiceImpl goodsserviceimpl;//商品服务类
	public Goods goods;//商品类
	public List<Goods> l_goods; //搜索到的商品的链表
	public String sbuynum;//用户购买的商品量
	public String goodsName;//前台与后台关联的商品名
	public String goodsId;//前后台关联的ID，从前台传过来的数据为String类型
	
	
	
	//房婷婷-2015-12-1
	//第几页
	private int page;    
	//包含分布信息的bean
	private PageBean pageBean; 

	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	public PageBean getPageBean() {
		return pageBean;
	}


	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}


	public String getGoodsId() {
		return goodsId;
	}


	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}


	public String getGoodsName() {
		return goodsName;
	}


	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}




	public String getSbuynum() {
		return sbuynum;
	}


	public void setSbuynum(String sbuynum) {
		this.sbuynum = sbuynum;
	}


	public List<Goods> getL_goods() {
		return l_goods;
	}


	public void setL_goods(List<Goods> l_goods) {
		this.l_goods = l_goods;
	}


	public Goods getGoods() {
		return goods;
	}


	public void setGoods(Goods goods) {
		this.goods = goods;
	}


	public GoodsServiceImpl getGoodsserviceimpl() {
		return goodsserviceimpl;
	}


	public void setGoodsserviceimpl(GoodsServiceImpl goodsserviceimpl) {
		this.goodsserviceimpl = goodsserviceimpl;
	}


	/**
	 * 
	 * 模糊查询商品
	 * @return
	 */
	public String searchGoods()
	{
		
		l_goods=new ArrayList<Goods>();
		l_goods=goodsserviceimpl.SearchGoods(goodsName);
		return "success";
	}
	
	/**
	 * 
	 * 查找商品的详细信息
	 */
	public String queryOneGoods()
	{
		System.out.println("GoodsAction==查询商品详细信息，从前台传过来的ID="+goodsId);
		Long goodsid = Long.parseLong(goodsId);//将前台String类型的ID转成Long类型
		goods=goodsserviceimpl.QueryOneGoods(goodsid);//通过商品ID查找相应的商品信息
		System.out.println("queryOneGoods -------goodsId="+goods.getGoodsId());
		//HttpServletRequest request=null;
		//request=ServletActionContext.getRequest();	
		//request.setAttribute("goods", goods);
		//------------------把数据放到了session范围中....----------------------------------------------------
		//ActionContext.getContext().getSession().put("goods",goods);	
		//ActionContext.getContext().getValueStack().push(goods);
		
		return "success";
	}
	
	/**
	 * 
	 * 商品购买：减少商品的库存量
	 */
	public String buyGoods()
	{
		System.out.println("===GoodsAction======buyGoods");
		Long goodsid = Long.parseLong(goodsId);//将前台String类型的ID转成Long类型;
		
		int buynum = Integer.parseInt(sbuynum);
		System.out.println("sbuynum="+sbuynum);
		System.out.println("buyGoods=========goodsid="+goodsid+"  buynum="+buynum);
		
		goodsserviceimpl.ReduceGoodsNum(goodsid, buynum);
		return "success";
	}
	
	//房婷婷2015-12-1
	 public String findAll() throws Exception {
	     //分页的pageBean,参数pageSize表示每页显示记录数,page为当前页
		this.pageBean = goodsserviceimpl.queryForPage( 2, page);
		System.out.println(pageBean);
		return "success";
	 }
	
	
}
