package com.whut.erqiao.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.DecimalFormat;

public class FileUtil {
	@SuppressWarnings("resource")
	public static String getSize(String path){
		double s=0;
		FileInputStream fis=null;
		try {
			fis=new FileInputStream(new File(path));
			s=fis.available();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			System.out.println("文件不存在");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("获取大小异常");
		}
		 DecimalFormat df = new DecimalFormat("#.00");
		 String size=df.format(s/1024)+"KB";
		return size; 
	}
	public static boolean isExist(String path){
		File file=new File(path);
		if(file.exists())  return true;
		else return false;
	}
	
}
