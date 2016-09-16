package com.whut.erqiao.action;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionSupport;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.service.TaskService;
import com.whut.erqiao.util.UnZipfile;
@Controller
@Scope("prototype")
public class UploadAction extends ActionSupport{
	// 上传文件域
		private File image;
		// 上传文件类型
		private String imageContentType;
		// 封装上传文件名
		private String imageFileName;
		// 接受依赖注入的属性
		private String savePath="E:\\image";
		@Resource
		protected TaskService taskService;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String execute() {
//		HttpServletRequest request = ServletActionContext.getRequest();
		FileOutputStream fos = null;
		FileInputStream fis = null;
		HttpServletResponse response=ServletActionContext.getResponse();
		try {
			System.out.println("获取Android端传过来的文件信息：");
			System.out.println("文件存放目录: " + getSavePath());
			System.out.println("文件名称: " + imageFileName);
			System.out.println("文件大小: " + image.length());
			System.out.println("文件类型: " + imageContentType);
            
			fos = new FileOutputStream(getSavePath() + "/" + getImageFileName());
			fis = new FileInputStream(getImage());
			byte[] buffer = new byte[1024];
			int len = 0;
			while ((len = fis.read(buffer)) != -1) {
				fos.write(buffer, 0, len);
			}
			response.getWriter().write("UPLOAD_SUCCESS");
			System.out.println("文件上传成功");
			//解压文件.
			System.out.println("imageFileName="+getImageFileName());
			
			
//	先注释，还要		UnZipfile.decompression(getSavePath() + "/" + getImageFileName(),getSavePath());
			
			
			
			//读取taskJson并入库。
			String fileName=getImageFileName().substring(0,getImageFileName().indexOf("."));//去掉zip
			String dateName=fileName.substring(fileName.indexOf("("));
			String taskPath=getSavePath()+"/"+fileName+"/tasks"+dateName+".txt";//task文件所在位置.
//			System.out.println("taskPath="+taskPath);
			FileInputStream is=new FileInputStream(taskPath);
			BufferedReader br=new BufferedReader(new InputStreamReader(is));
			String line=null;
			String taskJson="";
			while((line=br.readLine())!=null){
				taskJson+=line;
			}
			System.out.println("taskJson="+taskJson);
			List<Task> tasks=JSONObject.parseArray(taskJson, Task.class);
			for(Task task:tasks){
				taskService.save(task);//对各个info使用update,但是info里有id值。怎么处理这个问题？
			}
			
		} catch (Exception e) {
			System.out.println("文件上传失败");
			try {
				response.getWriter().write("UPLOAD_FAILED");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			close(fos, fis);
		}
		return "success";
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
	public String getSavePath() {
		return savePath;
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
