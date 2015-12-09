package com.qufenqi.action;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Goods;
import com.qufenqi.entity.Manager;
import com.qufenqi.entity.PageBean;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.SellerGoods;
import com.qufenqi.entity.SellerGoodsImages;
import com.qufenqi.entity.User;
import com.qufenqi.service.GoodsService;
import com.qufenqi.service.ManagerService;
import com.qufenqi.service.SellerService;

public class SellerAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private String result;
	private Seller seller;
	private Manager manager;
	private User user;
	private SellerService sellerService;
	private ManagerService managerService;
	private InputStream inputStream;
	private int sellerId;
	private String sellerName;
	private String oldPassword;//接收旧密码
	private long goodsId;
	private GoodsService goodsserviceimpl;
	
	//------------------------zlin-------------------------
	private Goods goods;
	private String goodsTypeName;
	private String quantity;
	
	
	
	private List<File> imagesfile; 
	
	private List<String> imagesfileFileName;
	
	private List<String> imagesfileContentType;
	
	private List<String> dataUrl;
	
	public List<File> getImagesfile() {
		return imagesfile;
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
	public String getGoodsTypeName() {
		return goodsTypeName;
	}
	public void setGoodsTypeName(String goodsTypeName) {
		this.goodsTypeName = goodsTypeName;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	//-----------------------------------------------------
	


	private String loginName;

	private String password;
	private int role;
	
	//第几页
	private int page;
	//包含查询结果的信息的bean
	private PageBean pageBean;
	public int getPage() {
		return page;
	}
	//如果穿过来的url无参数则说明是第一页
	public void setPage(int page) {
		this.page = page;
	}
	public PageBean getPageBean() {
		return pageBean;
	}
	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public void setSellerService(SellerService sellerService) {
		this.sellerService = sellerService;
	}
	public void setSeller(Seller seller) {
		this.seller = seller;
	}
	public Seller getSeller() {
		return seller;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public Manager getManager() {
		return manager;
	}
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	public ManagerService getManagerService() {
		return managerService;
	}
	public void setManagerService(ManagerService managerService) {
		this.managerService = managerService;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public long getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}
	public void setGoodsserviceimpl(GoodsService goodsserviceimpl) {
		this.goodsserviceimpl = goodsserviceimpl;
	}
	/**
	 * 注册
	 * @return
	 */
	public String register(){
		String flag = "";
		int status = sellerService.register(seller);
		System.out.println("status==="+status);
		switch (status) {
		case 0:
			request.setAttribute("mess", "该注册商家不是用户，不能注册");
			flag = "error";
			break;
		case 1:
			request.setAttribute("mess", "该商家用户名已经被注册");
			flag = "error";
			break;
		case 2:
			request.setAttribute("mess", "该邮箱已经被注册");
			flag = "error";
			break;
		case 3:
			request.setAttribute("mess", "该商家的注册失败");
			flag = "error";
			break;
		case 4:
			request.setAttribute("mess", "注册成功");
			flag = "success";
			break;
		default:
			break;
		}
		return flag;
	}
	/**
	 * 登录
	 * @return
	 */
	public String login(){
		String flag = "";
//		if(role == 1){
			System.out.println("执行商家的登录");
			seller.setSellerName(loginName);
			seller.setSellerPassword(password);
			int status = sellerService.login(seller);
			switch (status) {
			case -1:
				request.setAttribute("mess", "登录失败");
				flag = "error";
				break;
			case 2:
				request.setAttribute("mess", "该用户名没有注册");
				flag = "error";
				break;
			case 1:
				request.setAttribute("mess", "用户密码不正确");
				flag = "error";
				break;
			case 0:
				request.setAttribute("mess", "该商家登录成 功");
				session.setAttribute("seller", seller);
				request.setAttribute("role", 1);
				//因为商家就是管理员，所以将用户登录成功时可以讲登录名和密码赋值给USER,
				user.setUserName(loginName);
				user.setPassword(password);
				session.setAttribute("user", user);
				
				flag = "success";
				System.out.println("success seller");
				break;
			default:
				break;
			}
//			return flag;
//		}
		
//		if(role == 0){
//			System.out.println("执行管理员的登录");
//			manager.setManagName(loginName);
//			manager.setPassword(password);
//			int status = managerService.login(manager);
//			System.out.println(status+"==status");
//			switch (status) {
//			case -1:
//				request.setAttribute("mess", "登录失败");
//				flag = "error";
//				break;
//			case 2:
//				request.setAttribute("mess", "该用户名没有注册");
//				flag = "error";
//				break;
//			case 1:
//				request.setAttribute("mess", "用户密码不正确");
//				flag = "error";
//				break;
//			case 0:
//				request.setAttribute("mess", "该管理员登录成功");
//				session.setAttribute("manager", manager);
//				request.setAttribute("role", 1);
//				flag = "success";
//				System.out.println("manager success");
//				break;
//			default:
//				break;
//			}
//			return flag;
//		}
		
		return flag;
	}	
	/**
	 * 退出系统的action
	 * @return
	 */
	public String quit(){
		String flag = "";
		HttpSession session = request.getSession();
		Seller seller = (Seller) session.getAttribute("seller");
		if(seller != null){
			session.removeAttribute("seller");
			flag = "success";
		}else{
			flag = "error";
		}
		System.out.println(flag);
		return flag;
	}
	/**
	 * 用户修改密码
	 * @return
	 */
	public String modify(){
		System.out.println("oldPassword==="+oldPassword);
		System.out.println("seller.getSellerPassword()=="+seller.getSellerPassword());
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Seller seller = (Seller) session.getAttribute("seller"); 
		String sellerName = seller.getSellerName();
		
		boolean b = sellerService.modifyPassword(oldPassword, seller.getSellerPassword(),sellerName);
		System.out.println("b==="+b);
		try {
			inputStream =  new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
		}	
		return "success";
	}
	
	public String findAll(){
		this.pageBean = sellerService.queryForPage( 2, page);
		System.out.println(pageBean);
		return "success";
	}
	public String findSomeSeller(){
		if(sellerName.trim().equals("")){
			this.pageBean = sellerService.queryForPageCondition("", 2, page);
		}else{
			this.pageBean = sellerService.queryForPageCondition(sellerName, 2, page);
		}
		return "success";
	}
	
	public String delete(){
		System.out.println("执行删除");
		sellerService.delete(sellerId);
		try {
			inputStream =  new ByteArrayInputStream("1".getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			try {
				inputStream = new ByteArrayInputStream("0".getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
		}
		return "success";
	}
	
	public String findSelf(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Seller seller = (Seller) session.getAttribute("seller"); 
		String sellerName = seller.getSellerName();
		System.out.println("sellerName11==="+sellerName);
		seller = sellerService.find(sellerName);
		System.out.println("seller=="+seller);
		request.setAttribute("seller", seller);
		return "success";
	}
	
	public String modifyMess(){
		System.out.println("modifyMess进来了");
		String address = seller.getAddress();
		long telephone = seller.getTelephone();
		String sellerName  = seller.getSellerName();
		Seller seller = sellerService.find(sellerName);
		System.out.println("seller=="+seller);
		String addre = seller.getAddress();
		long tele = seller.getTelephone();
		System.out.println("address=="+address);
		System.out.println("telephone=="+telephone);
		if(address.equals(addre) && telephone == tele){
			System.out.println(1);
			request.setAttribute("mess", "请填写修改信息");
			return "reWrite";
		}
		if(!address.equals(addre) && telephone == tele){
			System.out.println(2);
			sellerService.modify(address, 0);
			seller.setAddress(address);
			request.setAttribute("seller", seller);
			return "success";
		}
		if(address.equals(addre) && telephone != tele){
			System.out.println(3);
			sellerService.modify("", telephone);
			seller.setTelephone(telephone);
			request.setAttribute("seller", seller);
			return "success";
		}
		if(!address.equals(addre) && telephone != tele){
			System.out.println(4);
			sellerService.modify(address, telephone);
			seller.setAddress(address);
			seller.setTelephone(telephone);
			request.setAttribute("seller", seller);
			return "success";
		}
		return null;
	}
	
	public String changeGoodsStatus(){
		goodsserviceimpl.changeGoodsStatus(goodsId);
		return "success";
	}
	
	
	
	//----------------zlin------------------------
	public String addGoods() throws IOException
	{
		System.out.println("=selleraction===进来了添加商品");
		 String sellerName = seller.getSellerName();
		 System.out.println("seller.getSellerName()=="+sellerName );
		 Seller seller = sellerService.find(sellerName);
		 System.out.println("添加商品====goodstypename==="+goodsTypeName+"====商品名=="+goods.getGoodsName());
		 int q = Integer.parseInt(quantity);
		 goods.setWeight(0);
		 goods.setStatus(0);
		 SellerGoods sg = goodsserviceimpl.addGoods(goods, seller, q,goodsTypeName);//返回值包含了主键
		 
		 System.out.println("添加商品成功，，商家商品ID=="+sg.getId());
		 //添加图片
		 int sellerid = sg.getSeller().getSellerId();
		 long goodsid = sg.getGoods().getGoodsId();
		 System.out.println(" ===== SellersAction=====添加图片=========");
			dataUrl=new ArrayList<String>();
			String imgpath="upload/";
			
			//int i_sellerid=Integer.parseInt(sellerId);//获取商家ID
			//Long long_goodsid =  Long.parseLong(goodsId);
			
			System.out.println("===图片上传uploadimages.action========imagefiles.size()=="+imagesfile.size());
			
			
			for(int i=0;i<imagesfile.size();i++){
				System.out.println(imagesfile.get(i));
				InputStream is=new FileInputStream(imagesfile.get(i));
				
				String path=ServletActionContext.getServletContext().getRealPath("/");		
				System.out.println(path);	
				System.out.println(imgpath+this.getImagesfileFileName().get(i));
				dataUrl.add(imgpath+this.getImagesfileFileName().get(i));
				File destFile=new File(path+imgpath,this.getImagesfileFileName().get(i));
				
				SellerGoodsImages image=new SellerGoodsImages();
				//Seller seller = new Seller();
				//seller=sellerService.findBySellerId(sellerId); 
				
				//Goods goods = new Goods();
				//goods=goodsserviceimpl.QueryOneGoodsById(goodsId);
				Goods goods = sg.getGoods();
				
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
		 System.out.println("====myurl=="+dataUrl);
		 
		return "success";
	}
	
	public String uploadImage() throws IOException
	{
		 
		 
		return "success";
	}
	//--------------------------------------------
}
