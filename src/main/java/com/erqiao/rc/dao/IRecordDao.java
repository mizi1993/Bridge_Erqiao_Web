package com.erqiao.rc.dao;

import java.util.HashMap;
import java.util.List;

import com.erqiao.rc.domain.Record;

public interface IRecordDao extends IBaseDao<Record>{

	List<Record> getRecords(String hql,Object[] args);
	List<Record> getRecords(String hql,String zipname,String macid);
	/**
	 * 如果没有更换图片，保存原数据库中数据
	 * @param sp
	 * @param imageFile
	 * @param imgflag
	 * @return
	 */
	public String[] getImages(Record sp,String[] imageFile, String[] imgflag);
	/**
	 * 为AttendanceEdit 中的 UpdownSelect添加数据
	 * @return
	 */
	public HashMap<Integer, String> getUpDown();
	
	/**
	 * 为AttendanceEdit  中的Weather列表添加数据
	 * @return
	 */
	public HashMap<Integer,String> getWeather();
	/**
	 * AttendanceEdit 页面中：返回被选中的UpDownKey/WeatherKey
	 * @param s
	 * @return
	 */
	public int getKey(String s);
	/**
	 * AttendanceEdit 页面中：返回被选中的UpDownValue/WeatherValue
	 * @param i
	 * @return
	 */
	public String getValue(int i);
}
