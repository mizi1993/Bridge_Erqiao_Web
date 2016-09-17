package com.erqiao.rc.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Classify;
import com.erqiao.rc.domain.Defect;
import com.erqiao.rc.domain.Item;
import com.erqiao.rc.domain.Position;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.server.IRecordServer;
import com.erqiao.rc.util.utils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller("RecordEditAction")
@Scope("prototype")
public class RecordEditAction  extends ActionSupport implements ModelDriven<Record>{

	private static final long serialVersionUID = 1L;
	
	private Record r;

	@Override
	public Record getModel() {
		if(r == null){
			r = new Record();
		}
		return r;
	}
	
	@Resource
	private IRecordServer recordServer;
	
	private Integer ddlPosition;
	private Integer ddlClass;
	private Integer ddlItem;
	private Integer ddlDefect;

	private String flag1;
	private String flag2;
	private String flag3;
	private String flag4;
	private String flag5;
	private String flag6;
	
	//接收js传过来的值
	private Integer classId;
	private Integer itemId;
	
	private File[] image; //上传的文件
    private String[] imageFileName; //文件名称
    private String[] imageContentType; //文件类型
    private HttpServletResponse response = ServletActionContext.getResponse();

	public String execute() throws Exception {
		
		r = recordServer.getRecord(r.getId());
//		System.out.println(r.getImg1());
		Integer getClassID = recordServer.getClassifyId(r.getClassify());
		Integer getItemID = recordServer.getItemId(r.getItem(), getClassID);
		Integer getDefectID = recordServer.getDefectId(r.getDefect(),getItemID);
		Integer getPositionID = recordServer.getPositionId(r.getPosition1(),getItemID);
		System.out.println("position:"+getPositionID+"");
		List<Classify> cmList = recordServer.getClassList();
		ActionContext.getContext().put("class", cmList);
		ActionContext.getContext().put("Cselected",getClassID);
		
		List<Item> imList = recordServer.getItemList(getClassID);
		ActionContext.getContext().put("item", imList);
		ActionContext.getContext().put("Iselected",getItemID);
		
		List<Defect> dfList = recordServer.getDefectList(getItemID);
		
		ActionContext.getContext().put("defect", dfList);
		ActionContext.getContext().put("Dselected",getDefectID);
		
		
		List<Position> psList = recordServer.getPositionList(getItemID);
		ActionContext.getContext().put("position", psList);
		ActionContext.getContext().put("Pselected",getPositionID);
		
		System.out.println("------------------------------------------------------------------------------------");
		System.out.println("---------------------------------Execute-Over-------------------------------------------");
		
		return SUCCESS;
	}
	
/*	public String getClassName() {
		
		List<Classify> cmList = recordServer.getClassList();
		System.out.println("-------------------------jsonArray");
		JSONArray jsonArray = JSONArray.fromObject(cmList); 
		System.out.println(jsonArray.toString());
		try { 
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().print(jsonArray); 
		} catch (IOException e) { 
			e.printStackTrace(); 
		} 
		return null; 
	} */
	
	public String getItemName() {
		List<Item> imList = recordServer.getItemList(classId);
		JSONArray jsonArray = JSONArray.fromObject(imList);
		try { 
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().print(jsonArray); 
		} catch (IOException e) { 
			e.printStackTrace(); 
		} 
		return null; 
	} 
	
	public String getPositionDefect() {
		List<Defect> dmList = recordServer.getDefectList(itemId);
		List<Position> psList = recordServer.getPositionList(itemId);
		JSONArray jsonArray1 = JSONArray.fromObject(dmList); 
		JSONArray jsonArray2 = JSONArray.fromObject(psList); 
		String jsonArray = jsonArray1 +"?" +jsonArray2;
		System.out.println(jsonArray);
		try { 
			response.setContentType("text/html;charset=UTF-8"); 
			response.getWriter().print(jsonArray); 
		} catch (IOException e) { 
			e.printStackTrace(); 
		} 
		return null; 
	} 

	public String save() throws Exception {
		
		String realpath = ServletActionContext.getServletContext().getRealPath("/Import/"
						+recordServer.load_Record(r.getId()).getZipname());
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
		//如果照片没有更换

		String[] imgArray = new String[]{flag1,flag2,flag3,flag4,flag5,flag6};
		for(int i=0;i<imgArray.length;i++){
			System.out.print(imgArray[i]+"-");
		}System.out.println("");
		if(imageFileName!=null){
			for(int i=0;i<imageFileName.length;i++){
				System.out.print(imageFileName[i]+"-");
			}}System.out.println("");
			
			System.out.println("-----------------------------------------------------------------------------------------------");
			System.out.println("positionId="+ddlPosition+"--classid="+ddlClass+"--itemId="+ddlItem+"--defectId="+ddlDefect);
			
			
			String Pos1 = recordServer.getPositionName(ddlPosition);
			String Clas = recordServer.getClassifyName(ddlClass);
			String Item = recordServer.getItemName(ddlItem);
			String Defe = recordServer.getDefectName(ddlDefect);
			
			Object[] first = {Clas,Item,Pos1,r.getPosition2(),r.getPosition3(),Defe,r.getData()};
			Object[] second = recordServer.getImages(recordServer.load_Record(r.getId()), imageFileName,imgArray);
			Object[] third = {r.getId()};
			Object[] objects =  utils.getArray(first,second,third);
			recordServer.update_Record(objects);

			return "save";
	}
    
	public Integer getDdlPosition() {
		return ddlPosition;
	}

	public void setDdlPosition(Integer ddlPosition) {
		this.ddlPosition = ddlPosition;
	}

	public Integer getClassId() {
		return classId;
	}

	public void setClassId(Integer classId) {
		this.classId = classId;
	}

	public Integer getItemId() {
		return itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}
	public Record getR() {
		return r;
	}

	public void setR(Record r) {
		this.r = r;
	}

	public IRecordServer getRecordServer() {
		return recordServer;
	}

	public void setRecordServer(IRecordServer recordServer) {
		this.recordServer = recordServer;
	}

	public Integer getDdlClass() {
		return ddlClass;
	}

	public void setDdlClass(Integer ddlClass) {
		this.ddlClass = ddlClass;
	}

	public Integer getDdlItem() {
		return ddlItem;
	}

	public void setDdlItem(Integer ddlItem) {
		this.ddlItem = ddlItem;
	}

	public Integer getDdlDefect() {
		return ddlDefect;
	}

	public void setDdlDefect(Integer ddlDefect) {
		this.ddlDefect = ddlDefect;
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

	public HttpServletResponse getResponse() {
		return response;
	}

	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}

}

