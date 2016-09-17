package com.erqiao.rc.dao;

import java.util.List;

import com.erqiao.rc.domain.Attendance;
public interface IAttendanceDao extends IBaseDao<Attendance>{

	/**
	 * 选中月份id，获取月份（由按月查找的id获取->[String](yyyy-MM)）
	 * @param id
	 * @return 返回选中的月份
	 */
	String getDateSelected(int id);
	
	List<Attendance> getAttendances(String hql,Object[] args);
	List<Attendance> getAttendances(String hql,String zipname,String macid);
}
