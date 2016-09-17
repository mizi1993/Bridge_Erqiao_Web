package com.erqiao.rc.dao;

import java.util.List;

import com.erqiao.rc.domain.Gps;

public interface IGpsDao extends IBaseDao<Gps>{
	/**
	 * 获取gps数据
	 * @param zipname
	 * @param MACid
	 * @return
	 */
	List<String> getGPS(String hql,String zipname,String macid);
}
