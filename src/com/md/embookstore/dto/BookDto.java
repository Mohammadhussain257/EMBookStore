package com.md.embookstore.dto;

public class BookDto {
	private int bookId;
	private String fileName;
	private String filepath;
	private String description;
	private String bookCover_Url;
	private String category;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBookCover_Url() {
		return bookCover_Url;
	}
	public void setBookCover_Url(String bookCover_Url) {
		this.bookCover_Url = bookCover_Url;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	


}
