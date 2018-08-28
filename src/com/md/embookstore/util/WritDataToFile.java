package com.md.embookstore.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.Part;

public class WritDataToFile {
	public final static String FILE_PATH = "E:/SaveFile/";

	public static String writeToFile(Part part, String Url) {
		InputStream in = null;
		OutputStream out = null;
		try {
			in = part.getInputStream();
			out = new FileOutputStream(Url);
			byte[] bytes = new byte[15360];
			int data;
			while ((data = in.read(bytes)) != -1) {
				out.write(bytes, 0, data);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} /*finally {
			try {
				in.close();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}*/
		
		return Url;
	}
	public static String getFileName(Part part) {
		for (String content : part.getHeader("content-disposition").split(";")) {
			if (content.trim().startsWith("filename")) {
				return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return "";
	}

}
