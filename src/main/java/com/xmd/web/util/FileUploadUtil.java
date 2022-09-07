package com.xmd.web.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadUtil {

	public static String upload(MultipartFile picture, HttpServletRequest request) {
		
		try {
			InputStream is = picture.getInputStream();
			File f = new File(request.getServletContext().getRealPath("/files/"), picture.getOriginalFilename());
			OutputStream os = new FileOutputStream(f);
			
			byte[] b = new byte[1024 * 1024 *10];
			int len = 0;
			while (  (len = is.read(b, 0, b.length)) != -1 ) {
				os.write(b, 0, len);
			}
			
			os.close();
			is.close();
			
			return "/files/" + picture.getOriginalFilename();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
