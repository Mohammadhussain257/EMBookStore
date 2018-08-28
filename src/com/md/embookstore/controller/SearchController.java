package com.md.embookstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.md.embookstore.service.BookService;
import com.md.embookstore.service.BookServiceImpl;


@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookService bookService = new BookServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookName=request.getParameter("search");
		if(!bookName.isEmpty()){
			RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
			request.setAttribute("books", bookService.searchBookInfo(bookName));
			rd.forward(request, response);
		}
	}

}
