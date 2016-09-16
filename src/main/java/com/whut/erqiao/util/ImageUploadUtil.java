package com.whut.erqiao.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

public class ImageUploadUtil {
	public static void upload(String date,String newName,List<File>image,String uploadDir) {
		FileOutputStream fos = null;
		FileInputStream fis = null;
		String savePath=ServletActionContext.getServletContext().getRealPath(uploadDir);
		String[] newNames=newName.split(",");
		for(int i=0;i<image.size();i++){
		try {
			File file=new File(savePath +"/长江二桥定期检查("+date+")/"+newNames[i]);
			if(!file.getParentFile().exists()) {
	                file.getParentFile().mkdirs();
	         }
			fos = new FileOutputStream(file);
			fis = new FileInputStream(image.get(i));
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
			System.out.println(savePath +"/长江二桥定期检查("+date+")/"+newNames[i]);
		} catch   (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			close(fos,fis);
		}
		}
	}
	public static  void close(FileOutputStream fos, FileInputStream fis) {
		if (fis != null) {
			try {
				fis.close();
				fis = null;
			} catch (IOException e) {
				System.out.println("FileInputStream关闭失败");
				e.printStackTrace();
			}
		}
		if (fos != null) {
			try {
				fos.close();
				fis = null;
			} catch (IOException e) {
				System.out.println("FileOutputStream关闭失败");
				e.printStackTrace();
			}
		}
	}
}
