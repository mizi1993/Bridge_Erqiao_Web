package com.erqiao.rc.action;

import java.io.File;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Special;
import com.erqiao.rc.server.ISpecialService;
import com.erqiao.rc.util.utils;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("SpecialEditAction")
@Scope("prototype")
public class SpecialEditAction  extends ActionSupport implements ModelDriven<Special>{

	private static final long serialVersionUID = 1L;

	private Special s;
	
	@Override
	public Special getModel() {
		if(s==null)s = new Special();
		return s;
	}
	
	private String flag1;
	private String flag2;
	private String flag3;
	private String flag4;
	private String flag5;
	private String flag6;
	private String flag7;
	private String flag8;
	private String flag9;
	private String flag10;
	
	private File[] image; //上传的文件
    private String[] imageFileName; //文件名称
    private String[] imageContentType; //文件类型
    
    
    @Resource
	private ISpecialService specialService;
    
	public String execute() throws Exception{
		
		s = specialService.getSpecial(s.getId());
		
		return SUCCESS;
	}

	public String save() throws Exception {

		String realpath = ServletActionContext.getServletContext()
						.getRealPath("/Import/"+specialService.load(s.getId()).getZipname());
		System.out.println("realpath: "+realpath);
		if(image!=null){
			for(int i=0;i<image.length;i++){
				File imgFile = image[i];
				String imgName = imageFileName[i];
				if (imgFile != null) {
					File savefile = new File(new File(realpath), imgName);
					if (!savefile.getParentFile().exists())
						savefile.getParentFile().mkdirs();
					FileUtils.copyFile(imgFile, savefile);
				}
			}
		}

		//更新一条Attendance数据
		String[] imgflag = new String[]{flag1,flag2,flag3,flag4,flag5,flag6,flag7,flag8,flag9,flag10};
		/*for(int i=0;i<imgflag.length;i++){
			System.out.print(imgflag[i]+"-");
		}System.out.println("");
		if(imageFileName!=null){
			for(int i=0;i<imageFileName.length;i++){
				System.out.print(imageFileName[i]+"-");
			}
		}
		System.out.println("");*/
		Object[] second = specialService.getImages(specialService.load(s.getId()), imageFileName,imgflag);
		Object[] first = {s.getPosition(),s.getEvents(),s.getDetail()};
		Object[] third = {s.getId()};
		Object[] specials =  utils.getArray(first,second,third);
		specialService.update(specials);
		return "save";
	}

	public String getFlag1() {
		return flag1;
	}

	public void setFlag1(String flag1) {
		this.flag1 = flag1;
	}

	public String getFlag2() {
		return flag2;
	}

	public void setFlag2(String flag2) {
		this.flag2 = flag2;
	}

	public String getFlag3() {
		return flag3;
	}

	public void setFlag3(String flag3) {
		this.flag3 = flag3;
	}

	public String getFlag4() {
		return flag4;
	}

	public void setFlag4(String flag4) {
		this.flag4 = flag4;
	}

	public String getFlag5() {
		return flag5;
	}

	public void setFlag5(String flag5) {
		this.flag5 = flag5;
	}

	public String getFlag6() {
		return flag6;
	}

	public void setFlag6(String flag6) {
		this.flag6 = flag6;
	}

	public String getFlag7() {
		return flag7;
	}

	public void setFlag7(String flag7) {
		this.flag7 = flag7;
	}

	public String getFlag8() {
		return flag8;
	}

	public void setFlag8(String flag8) {
		this.flag8 = flag8;
	}

	public String getFlag9() {
		return flag9;
	}

	public void setFlag9(String flag9) {
		this.flag9 = flag9;
	}

	public String getFlag10() {
		return flag10;
	}

	public void setFlag10(String flag10) {
		this.flag10 = flag10;
	}

	public File[] getImage() {
		return image;
	}

	public void setImage(File[] image) {
		this.image = image;
	}

	public String[] getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String[] imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String[] getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String[] imageContentType) {
		this.imageContentType = imageContentType;
	}

	public ISpecialService getSpecialService() {
		return specialService;
	}

	public void setSpecialService(ISpecialService specialService) {
		this.specialService = specialService;
	}

	public Special getS() {
		return s;
	}

	public void setS(Special s) {
		this.s = s;
	}


	
}

