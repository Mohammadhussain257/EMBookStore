package com.md.embookstore.service;

import com.md.embookstore.dao.DownloadFileDao;
import com.md.embookstore.dao.DownloadFileDaoImpl;
import com.md.embookstore.dto.BookDto;

public class DownloadFileServiceImpl implements DownloadFileService{
DownloadFileDao downloadFileDao=new DownloadFileDaoImpl();
	@Override
	public BookDto getFileById(int id) {
		return downloadFileDao.getFileById(id);
	}

}
