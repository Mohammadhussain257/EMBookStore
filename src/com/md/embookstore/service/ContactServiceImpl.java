package com.md.embookstore.service;

import com.md.embookstore.dao.ContactDao;
import com.md.embookstore.dao.ContactDaoImpl;
import com.md.embookstore.dto.ContactDto;

public class ContactServiceImpl implements ContactService {
	ContactDao contactDao = new ContactDaoImpl();

	@Override
	public void saveContactInfo(ContactDto contactDto) {
		contactDao.saveContactInfo(contactDto);
	}

}
