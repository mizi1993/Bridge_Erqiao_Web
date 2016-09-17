package com.erqiao.rc.action;

import java.io.File;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.server.IRecordServer;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("AttendanceEditAction")
@Scope("prototype")
public class AttendanceEditAction extends ActionSupport implements ModelDriven<Attendance>{

	private static final long serialVersionUID = 1L;

	private Attendance atd;

	@Override
	public Attendance getModel() {
		if(atd == null){
			atd = new Attendance();
		}
		return atd;
	}
	
	private Integer ddlUpDown;
	private Integer ddlWeather;

	@Resource
	private IRecordServer recordServer;
	
	private File image; //上传的文件
    private String imageFileName; //文件名称
    private String imageContentType; //文件类型
	
	@Override
	public String execute() throws Exception {
		
		atd = recordServer.getAttendance(atd.getId());
		HashMap<Integer,String> updownMap =recordServer.getUpDown();
		ActionContext.getContext().put("updown", updownMap);
		ActionContext.getContext().put("UpDselected",recordServer.getKey(atd.getUpdown()));
		
		HashMap<Integer,String> weatherMap =recordServer.getWeather();
		ActionContext.getContext().put("weather", weatherMap);
		ActionContext.getContext().put("selected",recordServer.getKey(atd.getWeather()));
	
		return SUCCESS;
	}
	
	public String save() throws Exception {
		String realpath = ServletActionContext.getServletContext().getRealPath("/Import/"
							+recordServer.getAttendance(atd.getId()).getZipname());
		//D:\apache-tomcat-6.0.18\webapps\struts2_upload\images
//		realpath: E:\WorkSpace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\
//		ErQiao_Server\Import\ErqiaoDailyInspection(2012-10-07 15_40_16)
		System.out.println("realpath: "+realpath);
		if (image != null) {
			File savefile = new File(new File(realpath), imageFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			FileUtils.copyFile(image, savefile);
		}
		//更新一条Attendance数据
		//如果照片没有更换
		if(imageFileName==null){
			imageFileName=recordServer.load_Attendance(atd.getId()).getImg();
		}
		String UpDown = recordServer.getValue(ddlUpDown-2);
		String Weather = recordServer.getValue(ddlWeather);
		
		Object[] specials = {UpDown,atd.getStaff(),Weather,atd.getTemp(),
				atd.getHum(),imageFileName,atd.getDetail(),atd.getId()};
		recordServer.update_Attendance(specials);
		
		return "save";
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public Integer getDdlUpDown() {
		return ddlUpDown;
	}

	public void setDdlUpDown(Integer ddlUpDown) {
		this.ddlUpDown = ddlUpDown;
	}

	public Integer getDdlWeather() {
		return ddlWeather;
	}

	public void setDdlWeather(Integer ddlWeather) {
		this.ddlWeather = ddlWeather;
	}

	public Attendance getAtd() {
		return atd;
	}

	public void setAtd(Attendance atd) {
		this.atd = atd;
	}

	public IRecordServer getRecordServer() {
		return recordServer;
	}

	public void setRecordServer(IRecordServer recordServer) {
		this.recordServer = recordServer;
	}
	
	
}
