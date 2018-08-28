package com.md.embookstore.service;

import java.util.List;

import com.md.embookstore.dto.BookDto;

public interface BookService {
	public void saveBookInfo(BookDto bookDto);

	public BookDto getBookInfoById(int id);

	public void updateBookInfo(BookDto bookDto);

	public void deleteBookInfo(int id);

	public List<BookDto> getAllBookInfo(String category);

	public List<BookDto> searchBookInfo(String bookName);

	public String getBookCoverUrl(int id);

	public String getFileUrl(int id);

}
