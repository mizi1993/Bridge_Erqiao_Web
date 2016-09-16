package com.whut.erqiao.service;

import com.whut.erqiao.base.BaseDao;
import com.whut.erqiao.entity.DownFile;

public interface DownFileService extends BaseDao<DownFile>{
	public  DownFile getFileByName(String name);
}
