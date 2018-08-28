package com.md.embookstore.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.md.embookstore.dto.BookDto;
import com.md.embookstore.util.DbUtil;

public class BookDaoImpl implements BookDao {
	PreparedStatement ps = null;

	@Override
	public void saveBookInfo(BookDto bookDto) {
		String sql = "insert into book(fileName,filePath,description,book_cover_url,category)values(?,?,?,?,?)";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setString(1, bookDto.getFileName());
			ps.setString(2, bookDto.getFilepath());
			ps.setString(3, bookDto.getDescription());
			ps.setString(4, bookDto.getBookCover_Url());
			ps.setString(5, bookDto.getCategory());
			ps.executeUpdate();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void updateBookInfo(BookDto bookDto) {
		String sql = "update book set fileName=?,filePath=?,description=?,book_cover_url=?,category=? where bookId=?";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setString(1, bookDto.getFileName());
			ps.setString(2, bookDto.getFilepath());
			ps.setString(3, bookDto.getDescription());
			ps.setString(4, bookDto.getBookCover_Url());
			ps.setString(5, bookDto.getCategory());
			ps.setInt(6, bookDto.getBookId());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteBookInfo(int id) {
		String sql = "delete from book where bookId=?";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<BookDto> getAllBookInfo(String category) {
		List<BookDto> bookList = new ArrayList<>();
		String sql = "";
		if (category.equalsIgnoreCase("text_book")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='text_book'";
		} else if (category.equalsIgnoreCase("fiction")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='fiction_book'";
		} else if (category.equalsIgnoreCase("non_fiction")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='non_fiction_book'";
		} else if (category.equalsIgnoreCase("sci_fi")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='sci_fi_book'";
		} else if (category.equalsIgnoreCase("technology")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='technology_book'";
		} else if (category.equalsIgnoreCase("arts_and_music")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='art_music_book'";
		} else if (category.equalsIgnoreCase("biography")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='biography_book'";
		} else if (category.equalsIgnoreCase("history")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='history_book'";
		} else if (category.equalsIgnoreCase("best_selling_book")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='best_selling_book'";
		} else if (category.equalsIgnoreCase("book_of_the_year")) {
			sql = "select bookId,fileName,filePath,description,category from book where category='book_of_the_year'";
		} else if (category.equalsIgnoreCase("book_list")) {
			sql = "select * from book";
		} else {
			sql = "select * from book";
		}
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setBookId(rs.getInt("bookId"));
				bookDto.setFileName(rs.getString("fileName"));
				bookDto.setFilepath(rs.getString("filePath"));
				bookDto.setDescription(rs.getString("description"));
				bookDto.setCategory(rs.getString("category"));
				bookList.add(bookDto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}

	@Override
	public String getBookCoverUrl(int id) {
		String sql = "select book_cover_url from book where bookId=?";
		String bookCoverUrl = "";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				bookCoverUrl = rs.getString("book_cover_url");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return bookCoverUrl;
	}

	@Override
	public BookDto getBookInfoById(int id) {
		String sql = "select * from book where bookId=?";
		BookDto bookDto = new BookDto();
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				bookDto.setBookId(rs.getInt("bookId"));
				bookDto.setFileName(rs.getString("fileName"));
				bookDto.setFilepath(rs.getString("filePath"));
				bookDto.setDescription(rs.getString("description"));
				bookDto.setBookCover_Url(rs.getString("book_cover_url"));
				bookDto.setCategory(rs.getString("category"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return bookDto;
	}

	@Override
	public String getFileUrl(int id) {
		String sql = "select filePath from book where bookId=?";
		String fileUrl = "";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				fileUrl = rs.getString("filePath");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return fileUrl;
	}

	@Override
	public List<BookDto> searchBookInfo(String bookName) {
		List<BookDto> bookList = new ArrayList<>();
		String sql = "select * from book where fileName like'%"+bookName+"%'";
		try {
			ps = DbUtil.getConnection().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BookDto bookDto = new BookDto();
				bookDto.setBookId(rs.getInt("bookId"));
				bookDto.setFileName(rs.getString("fileName"));
				bookDto.setFilepath(rs.getString("filePath"));
				bookDto.setDescription(rs.getString("description"));
				bookDto.setCategory(rs.getString("category"));
				bookList.add(bookDto);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return bookList;
	}
}
