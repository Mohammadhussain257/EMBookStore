package com.md.embookstore.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.md.embookstore.service.BookService;
import com.md.embookstore.service.BookServiceImpl;

@WebServlet("/CoverDisplayController")
public class CoverDisplayController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int DEFAULT_BUFFER_SIZE = 2048;
	BookService bookService = new BookServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bookId = Integer.parseInt(request.getParameter("bookid"));
		String filePath = bookService.getBookCoverUrl(bookId);
		File file = new File(filePath);
		String contentType = getServletContext().getMimeType(file.getName());
		if (contentType == null) {
			contentType = "application/octet-stream";
		}
		response.reset();
		response.setBufferSize(DEFAULT_BUFFER_SIZE);
		response.setContentType(contentType);
		response.setHeader("Content-Length", String.valueOf(file.length()));
		response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
		byte[] bytes = new byte[DEFAULT_BUFFER_SIZE];
		BufferedInputStream in = null;
		BufferedOutputStream out = null;

		try {
			in = new BufferedInputStream(new FileInputStream(file));
			out = new BufferedOutputStream(response.getOutputStream());
			int data;
			while ((data = in.read(bytes)) > 0) {
				out.write(bytes, 0, data);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			in.close();
			out.close();
		}

	}

}
