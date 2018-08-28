package com.md.embookstore.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.md.embookstore.dto.BookDto;
import com.md.embookstore.service.DownloadFileService;
import com.md.embookstore.service.DownloadFileServiceImpl;

@WebServlet("/DownloadController")
public class DownloadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
DownloadFileService downloadFileService=new DownloadFileServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bookId=request.getParameter("bookid");
		BookDto bookDto=downloadFileService.getFileById(Integer.parseInt(bookId));
		
		// reads input file from an absolute path
				String filePath = bookDto.getFilepath();
				File downloadFile = new File(filePath);
				FileInputStream inStream = new FileInputStream(downloadFile);

				// obtains ServletContext
				ServletContext context = getServletContext();

				// gets MIME type of the file
				String mimeType = context.getMimeType(filePath);
				if (mimeType == null) {
					// set to binary type if MIME mapping not found
					mimeType = "application/octet-stream";
				}

				// modifies response
				response.setContentType(mimeType);
				response.setContentLength((int) downloadFile.length());

				// forces download
				String headerKey = "Content-Disposition";
				String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
				response.setHeader(headerKey, headerValue);

				// obtains response's output stream
				OutputStream outStream = response.getOutputStream();

				byte[] buffer = new byte[4096];
				int bytesRead = -1;

				while ((bytesRead = inStream.read(buffer)) != -1) {
					outStream.write(buffer, 0, bytesRead);
				}

				inStream.close();
				outStream.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
