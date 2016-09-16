package com.whut.erqiao.action;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FileDownloadAction extends ActionSupport{
	private String fileName;//
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    public String load(){
    	System.out.println("/download/"+getFileName());
//    	 System.out.println("inputStream:"+getInputStream());
         
//    	mimeType=ServletActionContext.getServletContext().getMimeType(getFileName());
//    	ActionContext.getContext().put("fileName",getFilename());
    	return "success";
    }
	
	public String getFileName() {
		try {
			return new String(fileName.getBytes(),"utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
	}
//    public String getFileName() {
//    	return this.fileName;
//    }
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getDownloadFile(){//提供下载的文件名。
		try {  
			return new String(getFileName().getBytes(),"ISO8859-1");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return null;
		}
	}
	public InputStream getInputStream() {
//		String realPath=ServletActionContext.getServletContext().getRealPath();
		return ServletActionContext.getServletContext().getResourceAsStream("/download/"+getFileName());
	}
    
}
