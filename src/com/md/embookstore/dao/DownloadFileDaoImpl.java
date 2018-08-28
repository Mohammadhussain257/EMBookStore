package com.md.embookstore.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.md.embookstore.dto.BookDto;
import com.md.embookstore.util.DbUtil;

public class DownloadFileDaoImpl implements DownloadFileDao{

	@Override
	public BookDto getFileById(int id) {
		BookDto bookDto=new BookDto();
		PreparedStatement ps = null;
		try {
			String sql = "select * from book where bookId=?";
			ps = DbUtil.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				bookDto.setBookId(rs.getInt("bookId"));
				bookDto.setFilepath(rs.getString("filePath"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return bookDto;
	}

}
