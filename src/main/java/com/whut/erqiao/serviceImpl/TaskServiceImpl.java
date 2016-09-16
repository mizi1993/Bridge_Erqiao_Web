package com.whut.erqiao.serviceImpl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;

import com.whut.erqiao.base.BaseDaoImpl;
import com.whut.erqiao.entity.Task;
import com.whut.erqiao.service.TaskService;

@Service
public class TaskServiceImpl extends BaseDaoImpl<Task> implements TaskService {

	@Override
	public List getInfo(String infoName,Task task) {
		String hql="from "+infoName+" i "+"where i.task=?";
		Query query=getSession().createQuery(hql);
		query.setParameter(0, task);
		return query.list();
	}
	@Override
   public String getInfoTime(String infoName,Task task){
	   String dateTime="";
	   String hql="select date,time from "+infoName+" i "+"where i.task=?";;
	   Query query=getSession().createQuery(hql);
	   query.setParameter(0, task);
	   List<Object[]> list=query.list();
	   for(Object[] obj:list){
		   dateTime=(String)obj[0]+" "+(String)obj[1];
		   break;
	   }
	   System.out.println("dateTime="+dateTime);
	   return dateTime;
   }
	

}
