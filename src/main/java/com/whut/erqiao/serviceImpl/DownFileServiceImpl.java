package com.whut.erqiao.serviceImpl;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.whut.erqiao.base.BaseDaoImpl;
import com.whut.erqiao.entity.DownFile;
import com.whut.erqiao.service.DownFileService;
@Service
public class DownFileServiceImpl extends BaseDaoImpl<DownFile> implements DownFileService{
   @Override
	public  DownFile getFileByName(String name){//是否已存在同名表。
    	String hql="from DownFile d where d.name=?";
    	Query query=getSession().createQuery(hql);
    	query.setParameter(0, name);
    	DownFile downFile=(DownFile) query.uniqueResult();
    	return downFile;
    }
}
