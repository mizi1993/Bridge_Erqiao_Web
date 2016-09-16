package com.whut.erqiao.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.whut.erqiao.base.BaseAction;
import com.whut.erqiao.entity.InfoLiefeng;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.util.ImageUploadUtil;
@Controller
@Scope("prototype")
public class InfoLiefengAction extends BaseAction<InfoLiefeng>{

	private static final long serialVersionUID = 1L;
	
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
    	infoLiefengService.save(model);
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
	    	infoLiefengService.update(model);
	    	if(image!=null){
	    		ImageUploadUtil.upload(date, newName, image, uploadDir);
	    	}
	    	ActionContext.getContext().put("taskId", taskId);   	
	    	return "toTaskShow";//返回info列表。
	}
	public  String show(){
		InfoLiefeng infoLiefeng=infoLiefengService.getById(model.getId());
		Task task=infoLiefeng.getTask();
		ActionContext.getContext().put("task", task);
		ActionContext.getContext().getValueStack().push(infoLiefeng);
		return "show";
	}
	public String delete(){
		infoLiefengService.delete(model.getId());
		ActionContext.getContext().put("taskId", taskId);
		return "toTaskShow";
	}

}
