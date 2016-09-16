package com.whut.erqiao.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
//import java.util.zip.ZipEntry;
//import java.util.zip.ZipFile;
//import org.apache.tools.zip.ZipEntry;
//import org.apache.tools.zip.ZipFile;

public class UnZipfile {
//	public static void main(String[] args)  {
//		try {
//			decompression("E:\\uploads/erqiaoUpload","E:\\uploads/lastResult/");
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//	 public static void unZipFiles(String srcPath, String descDir) {
//	        try {
//	        	File zipfile=new File(srcPath);
//	            ZipFile zf = new ZipFile(zipfile);
//	            for (Enumeration entries = zf.getEntries(); entries
//	                    .hasMoreElements();) {
//	                ZipEntry entry = ((ZipEntry) entries.nextElement());
//	                String zipEntryName = entry.getName();
//	                InputStream in = zf.getInputStream(entry);
////	                File file=new File(descDir+zipEntryName);
////	                if (!file.exists()) 
////					{ file.mkdirs();
////					}
//	                OutputStream out = new FileOutputStream(descDir + zipEntryName);
//	                byte[] buf1 = new byte[1024];
//	                int len;
//	                while ((len = in.read(buf1)) > 0) {
//	                    out.write(buf1, 0, len);
//	                }
//	                in.close();
//	                out.close();
//	                System.out.println("解压缩完成.");
//	            }
//	        } catch (IOException e) {
//	            e.printStackTrace();
//	        }
//	    }
	
	
	
	
	
	
	
//	 public static void decompression(String zipFile,String destination) throws IOException {
//	        ZipFile zip=new ZipFile(zipFile,"gbk");//解决中文乱码问题。
//	        Enumeration en=zip.getEntries();
//	        ZipEntry entry=null;
//	        byte[] buffer=new byte[8192];
//	        int length=-1;
//	        InputStream input=null;
//	        BufferedOutputStream bos=null;
//	        File file=null;
//	        
//	        while(en.hasMoreElements()) {
//	            entry=(ZipEntry)en.nextElement();
//	            if(entry.isDirectory()) {
//	                System.out.println("directory");
//	                continue;
//	            }
//	            
//	            input=zip.getInputStream(entry);
//	            String name=entry.getName();
//	            if(name.contains(":")){
//	            	name=name.replace(":", "_");
//	            }
//	            file=new File(destination,name);
//	            if(!file.getParentFile().exists()) {
//	                file.getParentFile().mkdirs();
//	            }
//	            bos=new BufferedOutputStream(new FileOutputStream(file));
//	            
//	            while(true) {
//	                length=input.read(buffer);
//	                if(length==-1) break;
//	                bos.write(buffer,0,length);
//	            }
//	            bos.close();
//	            input.close();
//	        }
//	        zip.close();
//	    }
}
