package com.whut.erqiao.action;

import java.io.File;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.whut.erqiao.base.BaseAction;
import com.whut.erqiao.entity.InfoZhizuo;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.util.ImageUploadUtil;
@Controller
@Scope("prototype")
public class InfoZhizuoAction extends BaseAction<InfoZhizuo>{
    private Long taskId;
    private String dateTime;
    private String newName;//传上来实际是一个text的字符串。进行分割。
	private List<File> image;
	private List<String> imageFileName;
	private List<String> imageContentType;
	private String uploadDir;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public  String show(){
		InfoZhizuo infoZhizuo=infoZhizuoService.getById(model.getId());
		Task task=infoZhizuo.getTask();
		ActionContext.getContext().put("task", task);
		ActionContext.getContext().getValueStack().push(infoZhizuo);
		return "show";
	}
	public String delete(){
		infoZhizuoService.delete(model.getId());
//		Task task=taskService.getById(taskId);
//		if(task.getInfoZhizuo().size()==0){//如果是最后一个info被删除。
//			task.setInfoName(null);
//		}
		ActionContext.getContext().put("taskId",taskId);
		return "toTaskShow";
	}
	public String addUI(){
		Task task=taskService.getById(taskId);
    	ActionContext.getContext().put("task", task);
    	return "show";
	}
	public String add(){
		String date=getDateTime().substring(0,getDateTime().indexOf(" "));//得到日期.
    	String time=getDateTime().substring(getDateTime().indexOf(" ")+1);
		Task task=taskService.getById(taskId);
		model.setDate(date);
		model.setTime(time);
    	model.setTask(task);
    	infoZhizuoService.save(model);
    	if(image!=null){
    		ImageUploadUtil.upload(date, newName, image, uploadDir);
    	}
    	ActionContext.getContext().put("taskId",taskId);
    	return "toTaskShow";
	}
	public String edit(){
		String date=getDateTime().substring(0,getDateTime().indexOf(" "));//得到日期.
    	String time=getDateTime().substring(getDateTime().indexOf(" ")+1);
    	model.setDate(date);
    	model.setTime(time);
    	model.setTask(taskService.getById(taskId));//要设置关联。
    	infoZhizuoService.update(model);
    	if(image!=null){
    		ImageUploadUtil.upload(date, newName, image, uploadDir);
    	}
    	ActionContext.getContext().put("taskId", taskId);   	
    	return "toTaskShow";//返回info列表。
	}

	public Long getTaskId() {
		return taskId;
	}
	public void setTaskId(Long taskId) {
		this.taskId = taskId;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
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
	
}
