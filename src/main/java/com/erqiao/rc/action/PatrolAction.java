package com.erqiao.rc.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.server.IPatrolService;
import com.erqiao.rc.util.Pages;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("PatrolAction")
@Scope("prototype")
public class PatrolAction extends ActionSupport{

	private static final long serialVersionUID = 1L;	

	@Resource
	private IPatrolService patrolService;

	private String zipname;
	private String macid;
	
	private Integer ddlMonth;
	private String edtFromDate;
	private String edtToDate;	

	private Integer pageNow;
	private Integer pageCount;
	private List<Attendance> attendanceslist;
	private String actionString;

	public String execute() throws Exception{

		//月份查询下拉菜单
		ActionContext.getContext().put("ddlMonthList", patrolService.getDateLists());
		//传参：月份查询下拉菜单ddlMonthList
		if(ddlMonth==null){ddlMonth=-1;}
		if(pageNow==null){setPageNow(1);}
		if(edtFromDate==null)edtFromDate="";
		if(edtToDate==null)edtToDate="";
		//page关联Special.jsp的table中的“序号”，第二页起，序号为i+15
		ActionContext.getContext().put("p",(pageNow-1)*15+1);

		//Attendance表格数据
		if(attendanceslist==null){
			attendanceslist = patrolService.getAttendancesByPage(pageNow);
		}

		ActionContext.getContext().put("attendanceslist", attendanceslist);

		//获取分页总页数:如果pageCount!=0,即从bymonth、 byday函数已获得
		if(pageCount==null){
			pageCount=patrolService.getPageCount();		
		}

		//page关联Patrol.jsp的table中的“序号”，第二页起，序号为i+15
		ActionContext.getContext().put("p",(pageNow-1)*15+1);

		//获得可操作页码超链接条Bar
		if(actionString==null){
			actionString="Patrol";
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
			String monthString = patrolService.getDateSelected(ddlMonth);
			//设置按月查询的pageCount和SpecialList
			setPageCount(patrolService.getPageCount(monthString));
			setAttendanceslist(patrolService.getAttendancesByPage(pageNow, monthString));

			setActionString("Patrol_byMonth");

		}
		return "save";
	}

	public String byDay() throws Exception{

		if(pageNow==null){
			setPageNow(1);
		}
		System.out.println("--------->>>>>>>----------------->"+edtFromDate+"----"+edtToDate);
		if (!edtFromDate.equals("") && !edtToDate.equals("")) {
			pageCount=patrolService.getPageCount(edtFromDate, edtToDate);			
			setAttendanceslist(patrolService.getAttendancesByPage(pageNow, edtFromDate, edtToDate));
		}else if (!edtFromDate.equals("") && edtToDate.equals("")) {
			pageCount=patrolService.getPageCount_FromOnly(edtFromDate);	
			setAttendanceslist(patrolService.getAttendancesByPage_FromOnly(pageNow, edtFromDate));
		}else if(edtFromDate.equals("") && !edtToDate.equals("")){
			pageCount=patrolService.getPageCount_EndOnly(edtToDate);	
			setAttendanceslist(patrolService.getAttendancesByPage_EndOnly(pageNow, edtToDate));
		}

		setActionString("Attendance_byDay");
		return "save";
	}

	public String del(){
		
		
//		attendanceService.delete(id);

		return "save";
	}
	

	public String getZipname() {
		return zipname;
	}

	public void setZipname(String zipname) {
		this.zipname = zipname;
	}

	public String getMacid() {
		return macid;
	}

	public void setMacid(String macid) {
		this.macid = macid;
	}

	public IPatrolService getPatrolService() {
		return patrolService;
	}

	public void setPatrolService(IPatrolService patrolService) {
		this.patrolService = patrolService;
	}

	public List<Attendance> getAttendanceslist() {
		return attendanceslist;
	}

	public void setAttendanceslist(List<Attendance> attendanceslist) {
		this.attendanceslist = attendanceslist;
	}

	public Integer getDdlMonth() {
		return ddlMonth;
	}

	public void setDdlMonth(Integer ddlMonth) {
		this.ddlMonth = ddlMonth;
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

	public Integer getPageNow() {
		return pageNow;
	}

	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public String getActionString() {
		return actionString;
	}

	public void setActionString(String actionString) {
		this.actionString = actionString;
	}


}