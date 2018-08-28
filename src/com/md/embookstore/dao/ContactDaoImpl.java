package com.md.embookstore.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.md.embookstore.dto.ContactDto;
import com.md.embookstore.util.DbUtil;

public class ContactDaoImpl implements ContactDao{
PreparedStatement ps=null;
	@Override
	public void saveContactInfo(ContactDto contactDto) {
		String sql="insert into contactus(fullName,email,mobileNo,message)values(?,?,?,?)";
		try {
			ps=DbUtil.getConnection().prepareStatement(sql);
			ps.setString(1, contactDto.getFullName());
			ps.setString(2, contactDto.getEmail());
			ps.setString(3, contactDto.getMobileNo());
			ps.setString(4, contactDto.getMessage());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
