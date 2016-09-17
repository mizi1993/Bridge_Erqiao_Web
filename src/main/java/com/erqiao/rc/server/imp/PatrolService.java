package com.erqiao.rc.server.imp;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.erqiao.rc.dao.IAttendanceDao;
import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.server.IPatrolService;
import com.erqiao.rc.util.utils;

@Service("patrolService")
public class PatrolService implements IPatrolService{

	@Resource
	private IAttendanceDao attendanceDao;
	
//	@Override
//	public Attendance load(int id) {
//		// TODO Auto-generated method stub
//		return attendanceDao.load(id);
//	}

//	@Override
//	public void update(Object[] args) {
//
//	}

//	@Override
//	public void update(Attendance attendance) {
//		attendanceDao.update(attendance);
//		
//	}

	@Override
	public void delete(int id) {
		String hql = "delete Attendance s where s.id = ?";
		attendanceDao.delete(hql, id);
		
	}

	@Override
	public List<Attendance> getDateLists() {
		String hql="select new Attendance(s.id,s.datetime) from Attendance as s where s.updown = '上桥考勤' order by s.datetime desc";
		return attendanceDao.getDateLists(hql);
	}

	@Override
	public List<Attendance> getAttendancesByPage(Integer pageNow) {
		String hql = "from Attendance s where s.updown = '上桥考勤' order by s.datetime desc";
		List<Attendance> list = attendanceDao.getByPage(hql,pageNow);
		return list;
	}

	@Override
	public List<Attendance> getAttendancesByPage(Integer pageNow, String byMonth) {
		
		String hql = "from Attendance s where s.updown = '上桥考勤' and s.datetime between ? and ?";
		Date date1 = utils.YYMM_S_D(byMonth);
		Date date2 = utils.add_month(byMonth);
		List<Attendance> list = attendanceDao.getByPage(hql,pageNow,date1,date2);
		return list;
	}

	@Override
	public List<Attendance> getAttendancesByPage(Integer pageNow,
			String edtFromDate, String edtToDate) {
		String hql = "from Attendance s where s.updown = '上桥考勤' and s.datetime between ? and ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		Date date2 = utils.yyyyMMdd(edtToDate);
		List<Attendance> list = attendanceDao.getByPage(hql,pageNow,date1,date2);
		return list;
	}

	@Override
	public List<Attendance> getAttendancesByPage_FromOnly(Integer pageNow,
			String edtFromDate) {
		String hql = "from Attendance s where s.updown = '上桥考勤' and s.datetime > ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		return attendanceDao.getByPage(hql,pageNow,date1);
	}

	@Override
	public List<Attendance> getAttendancesByPage_EndOnly(Integer pageNow,
			String edtToDate) {
		String hql = "from Attendance s where s.updown = '上桥考勤' and s.datetime < ?";
		Date date1 = utils.yyyyMMdd(edtToDate);
		return attendanceDao.getByPage(hql,pageNow,date1);
	
	}

	@Override
	public int getPageCount() {
		String hql = "select count(*) from Attendance  where updown = '上桥考勤'";
		return attendanceDao.getPageCount(hql);
	}

	@Override
	public int getPageCount(String byMonth) {
		String hql = "select count(*) from Attendance s where s.updown = '上桥考勤' and s.datetime between ? and ?";
		Date date1 = utils.YYMM_S_D(byMonth);
		Date date2 = utils.add_month(byMonth);
		return attendanceDao.getPageCount(hql, date1,date2);
	}

	@Override
	public int getPageCount(String edtFromDate, String edtToDate) {
		String hql="select count(*) from Attendance s where s.updown = '上桥考勤' and s.datetime between ? and ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		Date date2 = utils.yyyyMMdd(edtToDate);
		return attendanceDao.getPageCount(hql, date1,date2);
	}

	@Override
	public int getPageCount_FromOnly(String edtFromDate) {
		String hql="select count(*) from Attendance s  where s.updown = '上桥考勤' and s.datetime > ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		return attendanceDao.getPageCount(hql, date1);
	}

	@Override
	public int getPageCount_EndOnly(String edtToDate) {
		String hql="select count(*) from Attendance s where s.updown = '上桥考勤' and s.datetime < ?";
		Date date1 = utils.yyyyMMdd(edtToDate);
		return attendanceDao.getPageCount(hql, date1);
	}

	@Override
	public String getDateSelected(int id) {
		// TODO Auto-generated method stub
		return attendanceDao.getDateSelected(id);
	}

	@Override
	public String[] getImages(Attendance sp, String[] imageFile,
			String[] imgflag) {
		// TODO Auto-generated method stub
		return null;
	}

	public IAttendanceDao getAttendanceDao() {
		return attendanceDao;
	}

	public void setAttendanceDao(IAttendanceDao attendanceDao) {
		this.attendanceDao = attendanceDao;
	}

	
}
