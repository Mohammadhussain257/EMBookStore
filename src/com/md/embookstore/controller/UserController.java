package com.md.embookstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("username")) {
				request.setAttribute("username", cookie.getValue());
			}
		}
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		String rememberme = request.getParameter("remember-me");
		if (username.equals("admin") && password.equals("admin")) {
			if (rememberme!=null||username!=null) {
				Cookie cookie = new Cookie("username", username);
				cookie.setMaxAge(24 * 60 * 60);
				response.addCookie(cookie);
			}
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			 request.getSession().setAttribute("username", username);
			RequestDispatcher rd = request.getRequestDispatcher("uploadFile.jsp");
			rd.forward(request, response);
		}else{
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("loginFailMsg", "Wrong username or password!!!");
			rd.include(request, response);
		}
	}

}
