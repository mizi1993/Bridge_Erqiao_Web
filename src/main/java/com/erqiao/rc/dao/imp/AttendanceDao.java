package com.erqiao.rc.dao.imp;

import java.text.ParseException;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IAttendanceDao;
import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.util.utils;

@Repository("attendanceDao")
public class AttendanceDao extends BaseDao<Attendance> implements IAttendanceDao{

	//获取下拉菜单的按月查询值
	@SuppressWarnings("unchecked")
	public List<Attendance> getDateLists(String hql) {

		List<Attendance> dateList = getSession().createQuery(hql).list();
		for(int i=0,len= dateList.size();i<len;i++){
			try {
				if(i>0 && utils.dtf_D_S(dateList.get(i).getDatetime()).substring(0, 7)
						.equals(utils.dtf_D_S(dateList.get(i-1).getDatetime()).substring(0, 7))){
					dateList.remove(i);
					--len;
					--i;
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}	
		} 
		for(int i=0,len= dateList.size();i<len;i++){
			dateList.get(i).setDateString(utils.yyyyMM_D_Scn(dateList.get(i).getDatetime()));
		}

		//			for(Attendance s:dateList) {System.out.println(s.getId()+":"+s.getDatetime());}

		return dateList;
	}

	//		选中月份id，获取月份（由按月查找的id获取->[String](yyyy-MM)）
	@Override
	public String getDateSelected(int id) {
		return load(id).getDatetime().toString().substring(0, 7);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Attendance> getAttendances(String hql,Object[] args) {
		this.getSession().clear();
		Query u = getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		List<Attendance> list = u.list();
		return list;
	}

	@Override
	public List<Attendance> getAttendances(String hql, String zipname,
			String macid) {
		return this.getAttendances(hql, new Object[]{zipname,macid});
	}


}
