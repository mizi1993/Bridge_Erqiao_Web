package com.erqiao.rc.action;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Gps;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.Scan;
import com.erqiao.rc.server.IUploadServer;
import com.erqiao.rc.util.AnalyseJson;
import com.erqiao.rc.util.Path;
import com.erqiao.rc.util.Zip;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@Controller("UploadAction")
@Scope("prototype")
public class UploadAction extends ActionSupport {

	//json文件上一级文件夹名字
	private String dirName = null;
	@Resource
	private IUploadServer uploadServer;
	
	private File file;// 拦截器会为你在缓冲区创建临时文件，这是临时文件对象  
	private String fileContentType;// 头域中的值  
	private String fileFileName;// 报文体中的name  

	private HttpServletResponse response = ServletActionContext.getResponse();
	@Override
	public String execute() {
		setFileFileName(getFileFileName().replaceAll(":", "_"));
		System.out.println("filename:  "+getFileFileName());
		String result =null;  
		String path_zip = Path.getPathZip();
		String path_extract = Path.getPathExtract();
		try {  
			//			path = ServletActionContext.getServletContext().getRealPath("/Import");// 绝对路径  
			File currFile = new File(new File(path_zip), getFileFileName());  
			if (!currFile.getParentFile().exists())
				currFile.getParentFile().mkdirs();
			//			System.out.println("接收到的文件存放路径======>" + currFile.getAbsolutePath());  
			FileUtils.copyFile(this.file, currFile);// struts2提供的工具类，意思是把缓存区文件放到哪里  
			// 获取socket输出流，将上传成功字样发给客户端。
			OutputStream out = response.getOutputStream();
			out.write("finish download".getBytes());
			out.close();
			result = "{下载成功，上传的文件:\"" + currFile.getAbsolutePath() + "\",\"文件大小\":" + currFile.length() + "字节}";  
		} catch (IOException e) {  
			e.printStackTrace();  
			result = "{\"success\":false}";  
		}
		System.out.println(result);  

		try {
			System.out.println(getFileFileName()+"...开始解压...");
			Zip.unZipFiles(file, path_extract+"/");

			String filename = getFileFileName().replaceAll(".zip", "");
			String filePath = path_extract+"/"+filename;
			getFiles(filePath);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return Action.NONE;  
	}

	//循环读取文件
	public void getFiles(String filePath){
		File root = new File(filePath);
		File[] files = root.listFiles();
		for(File f:files){     
			if(f.isDirectory()){
				//递归调用
				System.out.println("getName="+f.getName());
				dirName = f.getName();
				getFiles(f.getAbsolutePath());
			}else{
				if(f.getName().matches(".*attendance.*")){
					List<Attendance> attendanceList = AnalyseJson.AttendanceJson(dirName,f.getAbsolutePath());
					for(Attendance attendance:attendanceList){
						uploadServer.add(attendance);
					}
					
				}else if(f.getName().matches(".*gps.*")){
					List<Gps> gpsList = AnalyseJson.GpsJson(dirName,f.getAbsolutePath());
					for(Gps gps:gpsList){
						uploadServer.add(gps);
					}
					
				}else if(f.getName().matches(".*record.*")){
					
					List<Record> recordsList = AnalyseJson.RecordJson(dirName,f.getAbsolutePath());
					for(Record record:recordsList){
						uploadServer.add(record);
					}
					
				}else if(f.getName().matches(".*scan.*")){
					List<Scan> scansList = AnalyseJson.ScanJson(dirName,f.getAbsolutePath());
					for(Scan scan:scansList){
						uploadServer.add(scan);
					}
					
				}
			}     
		}
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public IUploadServer getUploadServer() {
		return uploadServer;
	}

	public void setUploadServer(IUploadServer uploadServer) {
		this.uploadServer = uploadServer;
	}

}
