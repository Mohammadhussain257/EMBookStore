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

@WebServlet("/BookListController")
public class BookListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String ARTS_AND_MUSIC = "artMusic.jsp";
	private static final String BIOGRAPHY = "biography.jsp";
	private static final String FICTION = "fiction.jsp";
	private static final String NON_FICTION = "nonFiction.jsp";
	private static final String TECHNOLOGY = "technology.jsp";
	private static final String HISTORY = "history.jsp";
	private static final String SCI_FI = "sciFi.jsp";
	private static final String TEXT_BOOK = "textBook.jsp";
	private static final String HOME = "home.jsp";
	private static final String BOOK_LIST = "bookList.jsp";
	private static final String UPLOAD = "uploadFile.jsp";
	private static final String logout = "login.jsp";
	BookService bookService = new BookServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("actions");
		String forward = "";
		if (action.equalsIgnoreCase("text_book")) {
			forward = TEXT_BOOK;
			request.setAttribute("books", bookService.getAllBookInfo(action));
		} else if (action.equalsIgnoreCase("fiction")) {
			forward = FICTION;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("non_fiction")) {
			forward = NON_FICTION;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("sci_fi")) {
			forward = SCI_FI;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("technology")) {
			forward = TECHNOLOGY;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("arts_and_music")) {
			forward = ARTS_AND_MUSIC;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("biography")) {
			forward = BIOGRAPHY;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("history")) {
			forward = HISTORY;
			request.setAttribute("books", bookService.getAllBookInfo(action));

		} else if (action.equalsIgnoreCase("best_selling_book")) {
			forward = HOME;
			request.setAttribute("books", bookService.getAllBookInfo(action));
			request.setAttribute("bestBookMsg", "Best Selling Book");
		} else if (action.equalsIgnoreCase("book_of_the_year")) {
			forward = HOME;
			request.setAttribute("books", bookService.getAllBookInfo(action));
			request.setAttribute("bookMsg", "Book Of The Year");
		} else if (action.equalsIgnoreCase("home")) {
			forward = HOME;
		} else if (action.equalsIgnoreCase("upload")) {
			forward = UPLOAD;

		} else if (action.equalsIgnoreCase("logout")) {
			forward = logout;
		}else if (action.equalsIgnoreCase("edit")) {
			int bookId=Integer.parseInt(request.getParameter("bookId"));
			request.setAttribute("book", bookService.getBookInfoById(bookId));
			forward = UPLOAD;
		}else if (action.equalsIgnoreCase("delete")) {
			int bookId=Integer.parseInt(request.getParameter("bookId"));
			bookService.deleteBookInfo(bookId);
			forward = BOOK_LIST;
			request.setAttribute("books", bookService.getAllBookInfo(action));
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);

	}
}
