package com.qufenqi.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.qufenqi.entity.Manager;
import com.qufenqi.entity.Seller;
import com.qufenqi.entity.User;

/**
 * 后台登录检查拦截器类
 * @author ftt
 *
 */
public class BgLoginInterceptor {
	/**
	 * 拦截Action处理的拦截方法
	 */
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("拦截器类");
		//获取请求相关的ActionContext实例
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		//去除名为user的session属性
		Seller seller = (Seller)session.get("seller");
		Manager manager = (Manager) session.get("manager");
		if(seller==null && manager == null){
			HttpServletRequest req = ServletActionContext.getRequest();
			req.setAttribute("mess", "您尚未登录，请输入账号、密码");
			return Action.LOGIN;
		}
		String result = invocation.invoke();
		return result;
	}

}
