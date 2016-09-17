package com.erqiao.rc.dao;

import com.erqiao.rc.domain.Special;

public interface ISpecialDao extends IBaseDao<Special> {

	/**
	 * 选中月份id，获取月份（由按月查找的id获取->[String](yyyy-MM)）
	 * @param id
	 * @return 返回选中的月份
	 */
	String getDateSelected(int id);
	/**
	 * 如果没有更换图片，保存原数据库中数据
	 * @param sp 
	 * @param imageFile
	 * @param imgflag
	 * @return
	 */
	public String[] getImages(Special sp,String[] imageFile, String[] imgflag);
}
