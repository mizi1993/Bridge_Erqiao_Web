package com.whut.erqiao.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class MultiUploadAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private List<File> image;
    private List<String> imageFileName;
    private List<String> imageContentType;
    private String uploadDir;
    
	public String execute(){
		FileOutputStream fos = null;
		FileInputStream fis = null;
		String savePath=ServletActionContext.getServletContext().getRealPath(uploadDir);
		System.out.println("fileLength:"+image.size());
		for(int i=0;i<image.size();i++){
		try {
			System.out.println(savePath + "/hello"+i+".png");
			fos = new FileOutputStream(savePath +"/hello"+i+".png");
			fis = new FileInputStream(image.get(i));
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			close(fos,fis);
		}
		}
		return null;
	}
	
	
	public String getUploadDir() {
		return uploadDir;
	}
	public void setUploadDir(String uploadDir) {
		this.uploadDir = uploadDir;
	}
	private void close(FileOutputStream fos, FileInputStream fis) {
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


	public List<File> getImage() {
		return image;
	}


	public void setImage(List<File> image) {
		this.image = image;
	}


	public List<String> getImageFileName() {
		return imageFileName;
	}


	public void setImageFileName(List<String> imageFileName) {
		this.imageFileName = imageFileName;
	}


	public List<String> getImageContentType() {
		return imageContentType;
	}


	public void setImageContentType(List<String> imageContentType) {
		this.imageContentType = imageContentType;
	}
	
}
