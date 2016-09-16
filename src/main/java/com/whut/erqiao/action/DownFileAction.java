package com.whut.erqiao.action;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.whut.erqiao.entity.DownFile;
import com.whut.erqiao.entity.PageBean;
import com.whut.erqiao.service.DownFileService;
@Controller
@Scope("prototype")
public class DownFileAction extends ActionSupport{
  @Resource
   private DownFileService downFileService;
   private String startDate="";
   private String endDate="";
   private String keyword="";
   private int pageNum=1;
   private int pageSize=10;
   private long id;//通过id查询。
   private int type=0;
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String list(){//分页查询所有检查报表。
		String hql="from DownFile d where d.type=?";
		List<Object> parameters=new ArrayList<Object>();
		parameters.add(type);//一定要传type.
		if(!startDate.equals("")&&!endDate.equals("")){
			hql+=" and d.date between ? and ?";
			parameters.add(startDate);
			parameters.add(endDate);
		}
		if(!keyword.equals("")){
			hql+=" and d.name like ?";
			parameters.add("%"+keyword+"%");
		}
		System.out.println("downFile.hql="+hql);
		PageBean pageBean=downFileService.getPageBean(pageNum, pageSize, hql, parameters);
		System.out.println(pageBean.toString());
		ActionContext.getContext().getValueStack().push(pageBean);
		return "list";
	}
	
	public String delete(){//删除报表数据库和文件。
		DownFile df=downFileService.getById(id);
		String realPath=ServletActionContext.getServletContext().getRealPath("/download/"+df.getName());
		File file=new File(realPath);
		file.delete();
		ActionContext.getContext().put("type",df.getType());
		downFileService.delete(id);
		return "toList";
	}
	public String download(){//下载报表。
		DownFile df=downFileService.getById(id);
		String fileName=df.getName();
		try {
			ActionContext.getContext().put("fileName", new String(fileName.getBytes(),"ISO8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "toFileDownloadAction";
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	public DownFileService getDownFileService() {
		return downFileService;
	}

}
