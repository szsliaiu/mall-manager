package com.xmd.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.xmd.web.entity.Admin;

public class LoginFilter implements Filter{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
	}
	/**
	 * 对用户的登录状态进行验证的过滤方法
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, 
			FilterChain chain)	throws IOException, ServletException {		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String uri = req.getRequestURI();
		if(uri.equalsIgnoreCase("/ssmTest-1/admin/toLogin") ||
				uri.equalsIgnoreCase("/ssmTest-1/admin/login") ||
				uri.contains(".css") || uri.contains(".js") ||
				uri.contains(".jps") || uri.contains(".png") ||
				uri.contains(".jpeg") || uri.contains(".iocn") ||
				uri.contains(".html") ) {
			chain.doFilter(req, resp);
		}else {
			HttpSession session = req.getSession();
			Admin admin = (Admin) session.getAttribute("admin");
			if(admin != null && admin.getName() != null) {
				chain.doFilter(req, resp);
			}else {
				session.setAttribute("error", "请先登录！");
				resp.sendRedirect(req.getServletContext().getContextPath()+
						"/admin/toLogin");
			}
		}
	}
			

	@Override
	public void destroy() {		
	}

}
