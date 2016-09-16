package com.whut.erqiao.service;

import java.util.List;

import com.whut.erqiao.base.BaseDao;
import com.whut.erqiao.entity.Task;

public interface TaskService extends BaseDao<Task>{

	List getInfo(String infoName,Task task);
    String getInfoTime(String infoName,Task task);
}
