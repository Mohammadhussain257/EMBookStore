package com.md.embookstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.md.embookstore.dto.ContactDto;
import com.md.embookstore.service.ContactService;
import com.md.embookstore.service.ContactServiceImpl;

@WebServlet("/PageController")
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ContactService contactService = new ContactServiceImpl();
	private final static String CONTACT = "contact.jsp";
	private final static String ABOUT_US = "aboutUs.jsp";
	private final static String HOME = "home.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("actions");
		if (action.equalsIgnoreCase("contact")) {
			RequestDispatcher rd = request.getRequestDispatcher(CONTACT);
			rd.forward(request, response);
		} else if (action.equalsIgnoreCase("aboutUs")) {
			RequestDispatcher rd = request.getRequestDispatcher(ABOUT_US);
			rd.forward(request, response);
		} else if (action.equals("login")) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		} else if (action.equals("home")) {
			RequestDispatcher rd = request.getRequestDispatcher(HOME);
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ContactDto contactDto = new ContactDto();
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String mobileNo = request.getParameter("no");
		String message = request.getParameter("message");

		contactDto.setFullName(fullName);
		contactDto.setEmail(email);
		contactDto.setMobileNo(mobileNo);
		contactDto.setMessage(message);
		contactService.saveContactInfo(contactDto);
		RequestDispatcher rd = request.getRequestDispatcher(CONTACT);
		request.setAttribute("message", "Message Send Successfully!");
		rd.forward(request, response);
	}

}
