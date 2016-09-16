package com.whut.erqiao.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class ImageUploadAction extends ActionSupport{//测试成功可以上传。
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	      private String newName;
		  private File image;
			// 上传文件类型
			private String imageContentType;
			// 封装上传文件名
			private String imageFileName;
			private String uploadDir;
			public String execute(){
				FileOutputStream fos = null;
				FileInputStream fis = null;
				String savePath=ServletActionContext.getServletContext().getRealPath(uploadDir);
				HttpServletResponse response=ServletActionContext.getResponse();
				try {
					System.out.println(savePath);
					System.out.println(newName);
					fos = new FileOutputStream(savePath + "/" +newName);
					fis = new FileInputStream(getImage());
					byte[] buffer = new byte[1024];
					int len = 0;
					while ((len = fis.read(buffer)) != -1) {
						fos.write(buffer, 0, len);
					}
					response.getWriter().write(newName);
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}finally{
					close(fos,fis);
				}
				return null;
			}
			public File getImage() {
				return image;
			}
			public void setImage(File image) {
				this.image = image;
			}
			public String getImageContentType() {
				return imageContentType;
			}
			public void setImageContentType(String imageContentType) {
				this.imageContentType = imageContentType;
			}
			public String getImageFileName() {
				return imageFileName;
			}
			public void setImageFileName(String imageFileName) {
				this.imageFileName = imageFileName;
			}
			public String getNewName() {
				return newName;
			}
			public void setNewName(String newName) {
				this.newName = newName;
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
}
