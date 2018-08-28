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

@WebServlet("/BookEditDeleteController")
public class BookEditDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookService bookService = new BookServiceImpl();
	private static final String BOOK_LIST = "bookList.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("actions");
		String forward = "";
		if (action.equalsIgnoreCase("book_list")) {
			forward = BOOK_LIST;
			request.setAttribute("books", bookService.getAllBookInfo(action));
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
