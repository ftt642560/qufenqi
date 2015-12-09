package com.qufenqi.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qufenqi.entity.User;

public class LoginFilter extends HttpServlet implements Filter{
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain filterChain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		HttpSession session = request.getSession();
		String url = request.getServletPath();
		String contextPath = request.getContextPath();
		
		if(url.equals("")){
			url+="/";
		}
		//首先判断是否是除前台页面的注册页面，登陆页面，如果是就判断User是否为空，如果为空，就不允许登录，跳到登录页面
		if((url.startsWith("/")&&!url.startsWith("/user-login")&&!url.startsWith("/register")&&!url.startsWith("/index"))){//若访问后台资源 过滤到login    
			User user = (User) session.getAttribute("user");
			if(user == null){
				response.sendRedirect(contextPath+"/index.jsp");
				return;
			}
		}
//		//后台登录的时候，如果不是注册页面登录页面，就判断Seller是否为空（前提是商家已经是用户）
//		if((url.startsWith("/")&&!url.startsWith("/stock/register") && !url.startsWith("/login"))){//若访问后台资源 过滤到login    
//			Seller seller = (Seller) session.getAttribute("seller");
//			if(seller == null){
//				response.sendRedirect(contextPath+"/login.jsp");
//				return;
//			}
//		}
		filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
