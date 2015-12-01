package com.qufenqi.action;

import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.qufenqi.entity.Seller;
import com.qufenqi.service.SellerService;

public class SellerAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
	private String result;
	private Seller seller;
	private SellerService sellerService;
	private InputStream inputStream;

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
		int status = sellerService.login(seller);
		switch (status) {
		case 0:
			request.setAttribute("mess", "登录失败");
			flag = "error";
			break;
		case 4:
			request.setAttribute("mess", "该用户名没有注册");
			flag = "error";
			break;
		case 3:
			request.setAttribute("mess", "用户密码不正确");
			flag = "error";
			break;
		case 2:
			request.setAttribute("mess", "该管理员登录成功");
			flag = "success";
			session.setAttribute("role", 2);
			break;
		case 1:
			request.setAttribute("mess", "该商家登录成功");
			seller.setRole(1);
			session.setAttribute("seller", seller);
			flag = "success";
			break;
		default:
			break;
		}
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
	
	public String modify(){
		System.out.println("seller="+seller);
		String sellerPsw = seller.getSellerPassword();
		boolean bool = sellerService.modify(sellerPsw);
		if(bool){
			
			return "success";
		}
		result = "修改失败";
		return "error";
	}
}
