package com.md.embookstore.filter;

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

//@WebFilter("/AuthenticationFilter")
public class AuthenticationFilter implements Filter {

	public void init(FilterConfig fConfig) throws ServletException {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		HttpSession session = req.getSession(false);
		String username=(String) session.getAttribute("username");
		if (username!=null){
			//pass the request along the filter chain
			chain.doFilter(request, response);
		} else {
			System.out.println("Unauthorized access request");
			res.sendRedirect("login.jsp");
		}
	}

	public void destroy() {
	}

}
