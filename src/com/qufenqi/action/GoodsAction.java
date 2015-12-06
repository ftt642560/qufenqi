package com.qufenqi.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.qufenqi.entity.Goods;
import com.qufenqi.entity.GoodsType;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.SellerGoodsImages;
import com.qufenqi.service.SellerService;
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
	public List<SellerGoods> l_sellergoods;//商家商品中间表
	public String goodsTypeName; //商品类型名
	public List<GoodsType> l_ofgoodsType;//商品类型链表
	public String sellerId; //商家Id
	
	public SellerService sellerservice;
    public List<SellerGoodsImages> sgi;
	public Seller seller;
	public List<SellerGoodsImages> getSgi() {
		return sgi;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	public void setSgi(List<SellerGoodsImages> sgi) {
		this.sgi = sgi;
	}

	private List<File> imagesfile; 
	
	private List<String> imagesfileFileName;
	
	private List<String> imagesfileContentType;
	
	private List<String> dataUrl;
	
	

	public List<File> getImagesfile() {
		return imagesfile;
	}

	public SellerService getSellerservice() {
		return sellerservice;
	}


	public void setSellerservice(SellerService sellerservice) {
		this.sellerservice = sellerservice;
	}
	
	public void setImagesfile(List<File> imagesfile) {
		this.imagesfile = imagesfile;
	}


	public List<String> getImagesfileFileName() {
		return imagesfileFileName;
	}


	public void setImagesfileFileName(List<String> imagesfileFileName) {
		this.imagesfileFileName = imagesfileFileName;
	}


	public List<String> getImagesfileContentType() {
		return imagesfileContentType;
	}


	public void setImagesfileContentType(List<String> imagesfileContentType) {
		this.imagesfileContentType = imagesfileContentType;
	}


	public List<String> getDataUrl() {
		return dataUrl;
	}


	public void setDataUrl(List<String> dataUrl) {
		this.dataUrl = dataUrl;
	}





	public String getSellerId() {
		return sellerId;
	}


	public void setSellerId(String sellerId) {
		this.sellerId = sellerId;
	}


	public List<GoodsType> getL_ofgoodsType() {
		return l_ofgoodsType;
	}


	public void setL_ofgoodsType(List<GoodsType> l_ofgoodsType) {
		this.l_ofgoodsType = l_ofgoodsType;
	}


	public String getGoodsTypeName() {
		return goodsTypeName;
	}


	public void setGoodsTypeName(String goodsTypeName) {
		this.goodsTypeName = goodsTypeName;
	}


	public List<SellerGoods> getL_sellergoods() {
		return l_sellergoods;
	}


	public void setL_sellergoods(List<SellerGoods> l_sellergoods) {
		this.l_sellergoods = l_sellergoods;
	}

	//----------------------测试属性------------------
	public String testsellerid;//前台用来测试--商家查找属于它自己的商品信息
	public List<SellerGoods> l_ofsellergoods;//商家的商品列表
	
	
	public List<SellerGoods> getL_ofsellergoods() {
		return l_ofsellergoods;
	}


	public void setL_ofsellergoods(List<SellerGoods> l_ofsellergoods) {
		this.l_ofsellergoods = l_ofsellergoods;
	}


	public String getTestsellerid() {
		return testsellerid;
	}


	public void setTestsellerid(String testsellerid) {
		this.testsellerid = testsellerid;
	}
   
	//----------------------------------------------------
	
	
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
	 
	 //商家查找商品信息
	 public String sellerquerygoods()
	 {
		 System.out.println("seller search goods");
		 int id=Integer.parseInt(testsellerid);
		 System.out.println("商家查找商品信息，商家id="+id);
		 //l_ofsellergoods=goodsserviceimpl.SellerSearchGoods(id);
		 pageBean=null;
		 pageBean = goodsserviceimpl.SellerSearchGoods(id, 5, page);
		 l_ofsellergoods = pageBean.getList();
		 System.out.println("商家查找商品，查找成功。。");
		 System.out.println("l_ofsellergoods.size()=="+l_ofsellergoods.size());
		 if(l_ofsellergoods.size() ==0)
			 System.out.println("l_ofsellergoods is null");
		 else
		 {
			 System.out.println("l_ofsellergoods is not null===l_ofsellergoods.size()"+l_ofsellergoods.size());
		 }
		 
		 for(int i=0;i<l_ofsellergoods.size();i++)
			{
				System.out.println("sellerquerygoods.action======l_ofsellergoods[i]="+l_ofsellergoods.get(i).getGoods().getGoodsName());
				System.out.println("查找出来的商品类型======l_offsellergoods[i].goodstype=="+l_ofsellergoods.get(i).getGoods().getGoodstype().getGoodsTypeName());
			}
		 return "success";
		 
	 }
	 
	 //用户搜索商品信息
	 public String userSearchGoods()
	 {
		 System.out.println("==GoodsAction==userSearchGoods====");
//		 l_sellergoods = goodsserviceimpl.UserSearchGoods(goodsName);
//		 if(l_sellergoods.size()==0)
//		 {
//			 	System.out.println("l_sellergoods is null");
//		 }
//		 for(int i=0;i<l_sellergoods.size();i++)
//		 {
//			// System.out.println("====l_goods.goodsbrand===="+l_sellergoods.get(i).getGoods().getBrand()+"\n");
//			 System.out.println("====seller.sellerName====="+l_sellergoods.get(i).getSeller().getSellerName());
//		 }
		 
		 this.pageBean = goodsserviceimpl.UserSearchGoods(goodsName, 1, page);
		 System.out.println("goodsaction====usersearchgoods===分页查询==pageBean===="+pageBean);
		 l_sellergoods = pageBean.getList();
		 
		 System.out.println(l_sellergoods.get(0).getGoods().getColor());
		 
//		 for(int i=0;i<l_sellergoods.size();i++)
//		 {
//			// System.out.println("====l_goods.goodsbrand===="+l_sellergoods.get(i).getGoods().getBrand()+"\n");
//			 System.out.println("====seller.sellerName====="+l_sellergoods.get(i).getSeller().getSellerName());
//		 }
		 return "success";
	 }
	 
	 
	 //用户根据商品类型名查找商品
	 public  String UserSearchByType()
	 {
		// HttpServletRequest request = ServletActionContext.getRequest();
		// String roles = request.getParameter("goodsTypeName");
		 System.out.println("goodstypename="+goodsTypeName);
		//分页的pageBean,参数pageSize表示每页显示记录数,page为当前页
		this.pageBean = goodsserviceimpl.UserSearchByType(goodsTypeName, 3, page);
		l_sellergoods = pageBean.getList();
//		
//				
//		for(int i=0;i<l_goodstype.size();i++)
//		{
//			Set<Goods> s_goods = l_goodstype.get(i).getGoods();//一个商品类型的所有商品，
//			List<Goods> l_temp1 = new ArrayList<Goods>(s_goods); //将查找到的相应的商品集合转成List类型
//			System.out.println("l_goodsType.typename="+l_goodstype.get(i).getGoodsTypeName());
//			for(int j=0;j<l_temp1.size();j++)
//			{
//				List<SellerGoods> l_temp2 = new ArrayList<SellerGoods>(l_temp1.get(j).getSellergoods()); //一个商品对应的多个商家			
//				System.out.println("l_temp2=="+l_temp2.get(j).getSeller().getSellerName());
//				//l_sellergoods.add(l_temp2.get(j));//把一个商品的商家商品信息放入到链表中，在前台可以通过这个链表查找出所有的信息
//				SellerGoods sg = l_temp2.get(j);
//				System.out.println("temp2.get(j)==="+l_temp2.get(j).getGoods().getGoodsName());
//				l_sellergoods.add(sg);
//				System.out.println("商品的信息==="+l_temp2.get(j).getGoods().getGoodsName()+" ===所属商家=="+l_temp2.get(j).getSeller().getSellerName());
//			}
//		}
		return "success";
	 }
	
	
	 //商家上传商品图片
	 public String UploadImages() throws IOException
	 {
		 System.out.println(" ===== GoodsAction=====UploadImages=========");
			dataUrl=new ArrayList<String>();
			String imgpath="upload/";
			
			int i_sellerid=Integer.parseInt(sellerId);//获取商家ID
			Long long_goodsid =  Long.parseLong(goodsId);
			
			System.out.println("===图片上传uploadimages.action========imagefiles.size()=="+imagesfile.size());
			
			
			for(int i=0;i<imagesfile.size();i++){
				InputStream is=new FileInputStream(imagesfile.get(i));
				
				String path=ServletActionContext.getServletContext().getRealPath("/");		
				System.out.println(path);	
				System.out.println(imgpath+this.getImagesfileFileName().get(i));
				dataUrl.add(imgpath+this.getImagesfileFileName().get(i));
				File destFile=new File(path+imgpath,this.getImagesfileFileName().get(i));
				
				SellerGoodsImages image=new SellerGoodsImages();
				Seller seller = new Seller();
				seller=sellerservice.findBySellerId(i_sellerid); 
				
				Goods goods = new Goods();
				goods=goodsserviceimpl.QueryOneGoods(long_goodsid);
				
				image.setSeller(seller); //设置图片的所属商家
				image.setGoods(goods); //设置图片所属商品
				image.setImageUrl(imgpath+this.getImagesfileFileName().get(i));
			    goodsserviceimpl.addImages(image);
				
				OutputStream os=new FileOutputStream(destFile);		
				byte[] buffer=new byte[800];
				int length=0;
				while((length=is.read(buffer))>0){
					os.write(buffer,0,length);
				}
				is.close();
				os.close();
			}	 
		 
		 
		 return "success";
	 }
	 
	 
	public String showImage(){
		
		List<SellerGoodsImages> sgi = goodsserviceimpl.findImages(sellerId, goodsId);
		
		for(int i=0;i<sgi.size();i++)
		{
		System.out.println("goodsaction====showimage==sgi.size()="+sgi.size()+"==sgi.id=="+sgi.get(i).getId()+"==========sgi.url=="+sgi.get(i).getImageUrl());
		}
		return "success";
	}
	 
	 
	 
	 
	 
}
