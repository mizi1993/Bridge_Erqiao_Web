package com.erqiao.rc.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Special;
import com.erqiao.rc.server.ISpecialService;
import com.erqiao.rc.util.Pages;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("SpecialAction")
@Scope("prototype")
public class SpecialAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	private int id;
	
	private Integer ddlMonth;
	private String edtFromDate;
	private String edtToDate;	
	
	private Integer pageNow;
	private Integer pageCount;
	private List<Special> specialList;
	private String actionString;
	
	@Resource
	private ISpecialService specialService;
	
	public String execute() throws Exception{
		//月份查询下拉菜单
		ActionContext.getContext().put("ddlMonthList", specialService.getDateLists());
		//传参：月份查询下拉菜单ddlMonthList
		if(ddlMonth==null){ddlMonth=-1;}
		if(pageNow==null){setPageNow(1);}
		if(edtFromDate==null)edtFromDate="";
		if(edtToDate==null)edtToDate="";
		//page关联Special.jsp的table中的“序号”，第二页起，序号为i+15
		ActionContext.getContext().put("p",(pageNow-1)*15+1);

		//SpecialEvent表格数据
		if(specialList==null){
			specialList = specialService.getSpecialsByPage(pageNow);
		}

		ActionContext.getContext().put("specialList", specialList);
			
		//获取分页总页数:如果pageCount!=0,即从bymonth、 byday函数已获得
		if(pageCount==null){
			pageCount=specialService.getPageCount();		
		}
		
		//page关联Patrol.jsp的table中的“序号”，第二页起，序号为i+15
		ActionContext.getContext().put("p",(pageNow-1)*15+1);
		
		//获得可操作页码超链接条Bar
		if(actionString==null){
			actionString="Special";
		}
		StringBuffer sbBuffer = Pages.getBar(actionString,pageNow,pageCount,ddlMonth,edtFromDate,edtToDate);		
		ServletActionContext.getRequest().setAttribute("bar", sbBuffer.toString());

		
		return SUCCESS;
	}
		
	public String byMonth() throws Exception{
		//如果选择不是"全部"，执行下列语句，如果是"全部"则返回excecute函数
		if(!ddlMonth.equals(-1)){

			if(pageNow==null){
				setPageNow(1);
			}
			
			//得到选中的月份
			String monthString = specialService.getDateSelected(ddlMonth);
			//设置按月查询的pageCount和SpecialList
			setPageCount(specialService.getPageCount(monthString));
			setSpecialList(specialService.getSpecialsByPage(pageNow, monthString));

			setActionString("Special_byMonth");
			
		}
		return "save";
	}
	
	public String byDay() throws Exception{
			
		if(pageNow==null){
			setPageNow(1);
		}
		System.out.println("--------->>>>>>>----------------->"+edtFromDate+"----"+edtToDate);
		if (!edtFromDate.equals("") && !edtToDate.equals("")) {
			pageCount=specialService.getPageCount(edtFromDate, edtToDate);			
			setSpecialList(specialService.getSpecialsByPage(pageNow, edtFromDate, edtToDate));
		}else if (!edtFromDate.equals("") && edtToDate.equals("")) {
			pageCount=specialService.getPageCount_FromOnly(edtFromDate);	
			setSpecialList(specialService.getSpecialsByPage_FromOnly(pageNow, edtFromDate));
		}else if(edtFromDate.equals("") && !edtToDate.equals("")){
			pageCount=specialService.getPageCount_EndOnly(edtToDate);	
			setSpecialList(specialService.getSpecialsByPage_EndOnly(pageNow, edtToDate));
		}
		
		setActionString("Special_byDay");
		return "save";
	}
	
	public String del(){

		specialService.delete(id);

		return "save";
	}
	
	public String getEdtFromDate() {
		return edtFromDate;
	}

	public void setEdtFromDate(String edtFromDate) {
		this.edtFromDate = edtFromDate;
	}

	public String getEdtToDate() {
		return edtToDate;
	}

	public void setEdtToDate(String edtToDate) {
		this.edtToDate = edtToDate;
	}

	public String getActionString() {
		return actionString;
	}

	public void setActionString(String actionString) {
		this.actionString = actionString;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public List<Special> getSpecialList() {
		return specialList;
	}

	public void setSpecialList(List<Special> specialList) {
		this.specialList = specialList;
	}

	public Integer getPageNow() {
		return pageNow;
	}

	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}

	public Integer getDdlMonth() {
		return ddlMonth;
	}
	
	public void setDdlMonth(Integer ddlMonth) {
		this.ddlMonth = ddlMonth;
	}


	public ISpecialService getSpecialService() {
		return specialService;
	}


	public void setSpecialService(ISpecialService specialService) {
		this.specialService = specialService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
