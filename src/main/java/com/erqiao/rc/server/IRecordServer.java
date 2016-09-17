package com.erqiao.rc.server;

import java.util.HashMap;
import java.util.List;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Classify;
import com.erqiao.rc.domain.Defect;
import com.erqiao.rc.domain.Item;
import com.erqiao.rc.domain.Position;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.RecordPlus;

public interface IRecordServer {
	/**
	 * 获取下拉菜单被选中的值
	 * @param defectId
	 * @return
	 */
	public String getDefectName(Integer defectId);
	public String getClassifyName(Integer classId);
	public String getItemName(Integer itemId);
	public String getPositionName(Integer positionId); 
	/**
	 * 如果没有更换图片，保存原数据库中数据
	 * @param sp 
	 * @param imageFile
	 * @param imgflag
	 * @return
	 */
	public String[] getImages(Record sp,String[] imageFile, String[] imgflag);
	/**
	 * RecordEdit 页面：下拉菜单select_classList
	 * @return
	 */
	public List<Classify> getClassList();
	/**
	 * RecordEdit 页面：下拉菜单select_itemList
	 * @param ClassId
	 * @return
	 */
	public List<Item> getItemList(Integer ClassId);
	/**
	 * RecordEdit 页面：下拉菜单select_defectList
	 * @param ItemId
	 * @return
	 */
	public List<Defect> getDefectList(Integer ItemId);
	/**
	 * RecordEdit 页面：下拉菜单select_positionList
	 * @param ItemId
	 * @return
	 */
	public List<Position> getPositionList(Integer ItemId);
	
	/**
	 * 获取被选中的ClassifyId
	 * @param classify
	 * @return
	 */
	public Integer getClassifyId(String className); 
	/**
	 * 获取被选中的ItemId
	 * @param itemName
	 * @param classId
	 * @return
	 */
	public Integer getItemId(String itemName, Integer classId); 
	/**
	 * 获取被选中的PositionId
	 * @param positionName
	 * @param itemId
	 * @return
	 */
	public Integer getPositionId(String positionName, Integer itemId); 
	/**
	 * 获取被选中的DefectId
	 * @param defectName
	 * @param itemId
	 * @return
	 */
	public Integer getDefectId(String defectName,Integer itemId); 
	
	public Attendance load_Attendance(int id);
	public Record load_Record(int id);
	public void update_Attendance(Object[] args);
	public void update_Record(Object[] args);
	/**
	 * Attendance ：获取一个Attendance对象 ，并修改图片路径
	 * @param id
	 * @return
	 */
	public Attendance getAttendance(int id);
	/**
	 * Record: 获取一个Record记录 ，并修改图片路径
	 * @param id
	 * @return
	 */
	public Record getRecord(int id);
	/**
	 * [List]一次上下桥考勤记录
	 * @param zipname
	 * @param macid
	 * @return 2条记录(上，下桥各一条)
	 */
	public List<Attendance> getAttendances(String zipname,String macid);
	/**
	 * [list]获取Record集合
	 * @param zipname
	 * @param macid
	 * @return
	 */
	public List<Record> getRecords(String zipname,String macid);
	/**
	 * RecordPlus 获取一个对象
	 * @param zipname
	 * @param macid
	 * @return
	 */
	public RecordPlus getRecordPlus(String zipname,String macid);
	/**
	 * RecordPlus 添加一个RecordPlus对象
	 * @param r
	 */
	public void setRecordPlus(RecordPlus r);
	/**
	 * RecordPlus 更新一个RecordPlus对象
	 * @param objects
	 */
	public void updateRecordPlus(Object[] objects);
	/**
	 * [list]获取gps记录集
	 * @param zipname
	 * @param macid
	 * @return
	 */
	public List<String> getGps(String zipname,String macid);
	
	/**
	 * 为AttendanceEdit  中的Weather列表添加数据
	 * @return
	 */
	public HashMap<Integer,String> getWeather();
	/**
	 * 为AttendanceEdit 中的 UpdownSelect添加数据
	 * @return
	 */
	public HashMap<Integer, String> getUpDown();
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
