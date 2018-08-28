package com.md.embookstore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.md.embookstore.dto.BookDto;
import com.md.embookstore.service.BookService;
import com.md.embookstore.service.BookServiceImpl;
import com.md.embookstore.util.WritDataToFile;

@WebServlet("/UploadFileController")
@MultipartConfig
public class UploadFileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookService bookService = new BookServiceImpl();
	private static final String UPLOAD_BOOK = "uploadFile.jsp";
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
		Part part1 = request.getPart("text_book");
		Part part2 = request.getPart("book_cover");
		String fileName = WritDataToFile.getFileName(part1);
		String book_cover = WritDataToFile.getFileName(part2);
		// String fileUrl = WritDataToFile.writeToFile(part1,
		// WritDataToFile.FILE_PATH + fileName);
		String description = request.getParameter("description");
		// String book_cover_url = WritDataToFile.writeToFile(part2,
		// WritDataToFile.FILE_PATH + book_cover);
		String category = request.getParameter("category");
		BookDto bookDto = new BookDto();
		bookDto.setFileName(fileName);

		bookDto.setDescription(description);

		bookDto.setCategory(category);

		String bookId = request.getParameter("bookid");
		String fileUrl = "";
		String book_cover_url = "";
		if (!fileName.isEmpty()) {
			fileUrl = WritDataToFile.writeToFile(part1, WritDataToFile.FILE_PATH + fileName);

		} else {
			fileUrl = bookService.getFileUrl(Integer.parseInt(bookId));

		}
		bookDto.setFilepath(fileUrl);
		if (!book_cover.isEmpty()) {
			book_cover_url = WritDataToFile.writeToFile(part2, WritDataToFile.FILE_PATH + book_cover);
		} else {
			book_cover_url = bookService.getBookCoverUrl(Integer.parseInt(bookId));
		}
		bookDto.setBookCover_Url(book_cover_url);

		if (bookId == null || bookId.isEmpty()) {
			bookService.saveBookInfo(bookDto);
		} else {
			bookDto.setBookId(Integer.parseInt(bookId));
			bookService.updateBookInfo(bookDto);
			request.setAttribute("UpdateMsg", "Book details updated successfully");
		}
		RequestDispatcher rd = request.getRequestDispatcher(UPLOAD_BOOK);
		request.setAttribute("UploadMsg", "File Uploaded Successfully");
		rd.forward(request, response);
	}
}
