package com.erqiao.rc.server;

import java.util.List;

import com.erqiao.rc.domain.Attendance;

public interface IPatrolService {
	
//	public Attendance load(int id);
	
//	public void update(Object[] args);
//	public void update(Attendance attendance);
	
	/**
	 * 删除记录
	 * @param hql
	 */
	public void delete(int id);
	
	/**
	 * <按月查询>：下拉列表值
	 * @return
	 */
	public List<Attendance> getDateLists();
	
	/**
	 * 分页查找(记录)
	 * @param pageNow 当前页
	 * @return 当前页所有记录
	 */
	public List<Attendance> getAttendancesByPage(Integer pageNow);
	/**
	 * 分页查找(记录):<按月查找>
	 * @param [Integer]pageNow 当前页
	 * @param [String]byMonth 月份
	 * @return 当前页所有记录<按月查找>
	 */
	public List<Attendance> getAttendancesByPage(Integer pageNow,String byMonth);
	/**
	 * 分页查找(记录)<按日查找>
	 * @param [Integer]pageNow 当前页
	 * @param [String]edtFromDate 起始日期
	 * @param [String]edtToDate 截止日期
	 * @return 当前页所有记录<按日查找>
	 */
	public List<Attendance> getAttendancesByPage(Integer pageNow,String edtFromDate,String edtToDate);
	/**
	 * 分页查找(记录)<按日查找 >:只有起始日期
	 * @param pageNow 当前页
	 * @param edtFromDate 起始日期
	 * @return 当前页所有记录<按日查找>
	 */
	public List<Attendance> getAttendancesByPage_FromOnly(Integer pageNow,String edtFromDate);
	/**
	 * 分页查找(记录)<按日查找>:只有截止日期 
	 * @param pageNow 当前页
	 * @param edtToDate 截止日期
	 * @return 当前页所有记录<按日查找>
	 */
	public List<Attendance> getAttendancesByPage_EndOnly(Integer pageNow,String edtToDate);
	
	/**
	 * 分页查找(总页数)
	 * @return 所有记录分页查找总页数
	 */
	public int getPageCount();
	/**
	 *分页查找(总页数):<按月查找>
	 * @param byMonth 查询月份
	 * @return 返回 <按月查找>分页 总页数
	 */
	public int getPageCount(String byMonth);
	/**
	 * 分页查找(总页数):<按日查找>
	 * @param edtFromDate 起始日期
	 * @param edtToDate 截止日期
	 * @return <按日查找>分页 总页数
	 */
	public int getPageCount(String edtFromDate,String edtToDate);
	/**
	 * 分页查找(总页数):<按日查找>:只有起始日期
	 * @param edtFromDate 起始日期
	 * @return 分页总页数
	 */
	public int getPageCount_FromOnly(String edtFromDate);
	/**
	 * 分页查找(总页数):<按日查找>：只有截止日期
	 * @param edtToDate 截止日期
	 * @return 分页总页数
	 */
	public int getPageCount_EndOnly(String edtToDate);
	
	/**
	 * 选中月份id，获取月份（由按月查找的id获取->[String](yyyy-MM)）
	 * @param id
	 * @return
	 */
	public String getDateSelected(int id);
	/**
	 * 如果没有更换图片，保存原数据库中数据
	 * @param sp 
	 * @param imageFile
	 * @param imgflag
	 * @return
	 */
	public String[] getImages(Attendance sp,String[] imageFile, String[] imgflag);
}
