package com.whut.erqiao.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.whut.erqiao.base.BaseAction;
import com.whut.erqiao.entity.DownFile;
import com.whut.erqiao.entity.Form;
import com.whut.erqiao.entity.PageBean;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.service.DownFileService;
import com.whut.erqiao.util.DateUtil;
import com.whut.erqiao.util.FileUtil;
import com.whut.erqiao.util.FreemakerHandler;

@Controller
@Scope("prototype")
public class TaskAction extends BaseAction<Task>{
  private String startDate="";
  private String endDate="";
  private Long formId=null;
  @Resource
  private DownFileService downFileService;
  
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    public String list(){
    	//准备form列表。查询时选择表格.
    	List<Form> formList=formService.findAll();
    	ActionContext.getContext().put("formList",formList);
    	
    	//准备taskList。并给其设置分页。
    	String hql="from Task t where t.id>0";
    	List<Object> parameters=new ArrayList<Object>();
    	System.out.println("formId="+formId);
    	if(formId!=null){//查询条件。
    		Form form=formService.getById(formId);
    		hql+=" and t.name=?";
    		parameters.add(form.getName());
    	}
    	if(!startDate.equals("")&&!endDate.equals("")){
    		hql+=" and t.date between ? and ?";
    		parameters.add(startDate);
    		parameters.add(endDate);
    	}
    	System.out.println("hql="+hql);
    	PageBean pageBean=taskService.getPageBean(pageNum, pageSize, hql, parameters);
//    	List<Task> taskList=taskService.findAll();
    	ActionContext.getContext().getValueStack().push(pageBean);
    	return "list";
    }
    
    public String delete(){
    	taskService.delete(model.getId());
    	return "toList";
    }
    
    public String addUI(){
    	//准备添加task所需的所有表名.
    	List<Form> formList=formService.findAll();
    	ActionContext.getContext().put("formList", formList);
    	return "addUI";
    }
    public String add(){
    	Form form=formService.getById(formId);
    	model.setName(form.getName());
    	model.setInfoName(form.getInfoName());
    	taskService.save(model);
    	return "toList";
    }
    
    public String show(){//点击task列表的详细，显示对应info的具体信息。
    	Task task=taskService.getById(model.getId());
    	List infoList=null;
    	if(task.getInfoName()!=null){
    		  infoList= taskService.getInfo(task.getInfoName(),task);
    	}
        ActionContext.getContext().put("infoList", infoList);
        ActionContext.getContext().put("task", task);
//        System.out.println("info.size="+infoList.size());
    	return task.getInfoName()+"_list";
    }
    public String print(){//负责导出word文档并下载。
//		FreemakerHandler.createDoc();
    	Task task=taskService.getById(model.getId());
    	String datetime=taskService.getInfoTime(task.getInfoName(), task);
    	Pattern p=Pattern.compile("[^0-9]");
    	String outFileName="武汉"+task.getName()+p.matcher(datetime).replaceAll("").trim()+".doc";//匹配出所有的数字用空格代替。
    	String realPath=ServletActionContext.getServletContext().getRealPath("/download/"+outFileName);
    	List infoList= taskService.getInfo(task.getInfoName(),task);
    	Map<String,Object> dataMap=new HashMap<String,Object>();
    	dataMap.put("list", infoList);
    	dataMap.put("task",task);
    	dataMap.put("cycle",DateUtil.getDaysBetween(task.getDate(), task.getNextDate()));
    	System.out.println("datetime:"+datetime);
    	FreemakerHandler handler=new FreemakerHandler();  	
    	handler.createDoc(dataMap,task.getInfoName(),outFileName);//导出doc完毕。
    	//数据库里是否已有那条记录。
    	String date=datetime.substring(0,datetime.indexOf(' '));
    	DownFile df=downFileService.getFileByName(outFileName);
    	if(df!=null){//存在同名记录
    		df.setSize(FileUtil.getSize(realPath));//唯一可能改变的是大小,会自动更新。
    	}else{
    		df=new DownFile(outFileName,date,FileUtil.getSize(realPath),0);
    		downFileService.save(df);
    	}	
    	try {
		ActionContext.getContext().put("fileName", new String(outFileName.getBytes(),"ISO8859-1"));//struts文件中的中文字要用ISO8859-1存储。
    	} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
    	return "printSuccess";
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public Long getFormId() {
		return formId;
	}

	public void setFormId(Long formId) {
		this.formId = formId;
	}
   
  
}
