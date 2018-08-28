package com.md.embookstore.service;

import java.util.List;

import com.md.embookstore.dao.BookDao;
import com.md.embookstore.dao.BookDaoImpl;
import com.md.embookstore.dto.BookDto;

public class BookServiceImpl implements BookService {
	BookDao bookDao = new BookDaoImpl();

	@Override
	public void saveBookInfo(BookDto bookDto) {
		bookDao.saveBookInfo(bookDto);
	}

	@Override
	public void updateBookInfo(BookDto bookDto) {
		bookDao.updateBookInfo(bookDto);
	}

	@Override
	public void deleteBookInfo(int id) {
		bookDao.deleteBookInfo(id);
	}

	@Override
	public List<BookDto> getAllBookInfo(String category) {
		return bookDao.getAllBookInfo(category);
	}

	@Override
	public String getBookCoverUrl(int id) {
		return bookDao.getBookCoverUrl(id);
	}

	@Override
	public BookDto getBookInfoById(int id) {
		return bookDao.getBookInfoById(id);
	}

	@Override
	public String getFileUrl(int id) {
		return bookDao.getFileUrl(id);
	}

	@Override
	public List<BookDto> searchBookInfo(String bookName) {
		return bookDao.searchBookInfo(bookName);
	}

}
