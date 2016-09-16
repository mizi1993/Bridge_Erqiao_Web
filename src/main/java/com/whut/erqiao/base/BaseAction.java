package com.whut.erqiao.base;

import java.io.File;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.whut.erqiao.service.FormService;
import com.whut.erqiao.service.InfoGanghengliangService;
import com.whut.erqiao.service.InfoGangxiangliangService;
import com.whut.erqiao.service.InfoHupoService;
import com.whut.erqiao.service.InfoLiefengService;
import com.whut.erqiao.service.InfoMaogukuaiService;
import com.whut.erqiao.service.InfoShangmaotouService;
import com.whut.erqiao.service.InfoShensuofengService;
import com.whut.erqiao.service.InfoTazhuService;
import com.whut.erqiao.service.InfoTuxiangliangService;
import com.whut.erqiao.service.InfoXiamaotouDownService;
import com.whut.erqiao.service.InfoXiamaotouUpService;
import com.whut.erqiao.service.InfoXielasuoService;
import com.whut.erqiao.service.InfoYuyingliService;
import com.whut.erqiao.service.InfoZhizuoService;
import com.whut.erqiao.service.TaskService;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	
	private static final long serialVersionUID = 1L;
	//==============ModelDriven的支持===============
	
	protected T model;
	protected int pageNum=1;
	protected int pageSize=15;
	protected String dateTime;// 页面中日期和时间是一起的。要对接收来的时间日期进行转换。
	protected Long taskId;
	protected String newName;
	protected List<File> image;
	protected List<String> imageFileName;
	protected List<String> imageContentType;
	protected String uploadDir;
	public BaseAction(){
		try {
			ParameterizedType pt=(ParameterizedType) this.getClass().getGenericSuperclass();
			@SuppressWarnings("unchecked")
			Class<T> clazz=(Class<T>) pt.getActualTypeArguments()[0];
			model=clazz.newInstance();//给model进行实例化。
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public T getModel() {
		// TODO Auto-generated method stub
		return model;
	}
	@Resource
	protected TaskService taskService;
	@Resource
	protected FormService formService;
	@Resource
	protected InfoShensuofengService infoShensuofengService;
	@Resource
	protected InfoZhizuoService infoZhizuoService;
	@Resource
	protected InfoGanghengliangService infoGanghengliangService;
	@Resource
	protected InfoGangxiangliangService infoGangxiangliangService;
	@Resource
	protected InfoHupoService infoHupoService;
	@Resource
	protected InfoTazhuService infoTazhuService;
	@Resource
	protected InfoLiefengService infoLiefengService;
	@Resource
	protected InfoMaogukuaiService infoMaogukuaiService;
	@Resource
	protected InfoShangmaotouService infoShangmaotouService;
	@Resource
	protected InfoTuxiangliangService infoTuxiangliangService;
	@Resource
	protected InfoXiamaotouDownService infoXiamaotouDownService;
	@Resource
	protected InfoXiamaotouUpService infoXiamaotouUpService;
	@Resource
	protected InfoXielasuoService infoXielasuoService;
	@Resource
	protected InfoYuyingliService infoYuyingliService;
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
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

	public String getUploadDir() {
		return uploadDir;
	}

	public void setUploadDir(String uploadDir) {
		this.uploadDir = uploadDir;
	}
	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public Long getTaskId() {
		return taskId;
	}

	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}
}
