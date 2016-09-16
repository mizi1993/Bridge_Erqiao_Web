package com.whut.erqiao.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.whut.erqiao.base.BaseAction;
import com.whut.erqiao.entity.InfoShensuofeng;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.util.ImageUploadUtil;

@Controller
@Scope("prototype")
public class InfoShensuofengAction extends BaseAction<InfoShensuofeng> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String show() {// 展示info的详细信息。
		InfoShensuofeng infoShensuofeng = infoShensuofengService.getById(model
				.getId());
		Task task = infoShensuofeng.getTask();
		ActionContext.getContext().put("task", task);
		ActionContext.getContext().getValueStack().push(infoShensuofeng);
		return "show";
	}

	public String edit() {// 还要对时间日期进行转换.还要上传图片，替换掉之前的图片。
		String date = getDateTime().substring(0, getDateTime().indexOf(" "));// 得到日期.
		String time = getDateTime().substring(getDateTime().indexOf(" ") + 1);
		model.setDate(date);
		model.setTime(time);
		model.setTask(taskService.getById(taskId));// 要设置关联。
		infoShensuofengService.update(model);
		if(image!=null){
			ImageUploadUtil.upload(date, newName, image,uploadDir);
		}
		ActionContext.getContext().put("taskId", taskId);
		return "toTaskShow";// 返回info列表。

	}

	public String delete() {
		infoShensuofengService.delete(model.getId());// 还要解除task与InfoShensuofeng的联系.
		ActionContext.getContext().put("taskId", taskId);
		return "toTaskShow";
	}

	public String add() {// 保存infoShensuofeng,并将其关联到task。还要上传图片，替换掉之前的图片。
		String date = getDateTime().substring(0, getDateTime().indexOf(" "));// 得到日期.
		String time = getDateTime().substring(getDateTime().indexOf(" ") + 1);
		model.setDate(date);
		model.setTime(time);
		Task task = taskService.getById(taskId);
		model.setTask(task);
		infoShensuofengService.save(model);
		if(image!=null){
			ImageUploadUtil.upload(date, newName, image,uploadDir);
		}
		ActionContext.getContext().put("taskId", taskId);
		return "toTaskShow";
	}


	public String addUI() {
		Task task = taskService.getById(taskId);
		ActionContext.getContext().put("task", task);
		return "show";
	}
}
