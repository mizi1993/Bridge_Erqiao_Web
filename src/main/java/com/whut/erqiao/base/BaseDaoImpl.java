package com.whut.erqiao.base;

import java.lang.reflect.ParameterizedType;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.whut.erqiao.entity.PageBean;
@Transactional//该注解可以被继承，但是对父类中的方法无效。
public class BaseDaoImpl<T> implements BaseDao<T> {

	@Resource
	private SessionFactory sessionFactory;
	//如何获得泛型的类型class.使用反射对象
	private Class<T> clazz=null;
	@SuppressWarnings("unchecked")
	public BaseDaoImpl(){//调用子类会先执行父类的构造器。
		ParameterizedType pt=(ParameterizedType)this.getClass().getGenericSuperclass();//获取当前new对象的泛型的父类。
		this.clazz=(Class<T>)pt.getActualTypeArguments()[0];//获得一个参数的真实类型。
	//	System.out.println("clazz:"+clazz.getSimpleName());
	}
	//可以给子类提供getSession方法.
	protected Session getSession(){
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void save(T entity) {
		// TODO Auto-generated method stub
		getSession().save(entity);
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		Object obj=getById(id);
		if(obj!=null){
			getSession().delete(obj);
		}
	}

	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub
		getSession().update(entity);
	}

	//如何获得Class
	@SuppressWarnings("unchecked")
	@Override
	public T getById(Long id) {
		// TODO Auto-generated method stub
		if(id==null){
			return null;
		}else{
			return (T)getSession().get(clazz,id);
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> getByIds(Long[] ids) {
		// TODO Auto-generated method stub
		if(ids==null||ids.length==0){
			return Collections.EMPTY_LIST;//要返回一个空的List，不然后面会报错.
		}else{
			return getSession().createQuery("from "+clazz.getSimpleName()+" where id in (:ids)")//
					.setParameterList("ids", ids)//
					.list();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		// TODO Auto-generated method stub
		return getSession().createQuery(
				"from"+" "+this.clazz.getSimpleName())
				.list();
	}
	@Override
	public PageBean getPageBean(int pageNum, int pageSize, String hql,
			List<Object> parameters) {
		// TODO Auto-generated method stub
		Query listQuery=getSession().createQuery(hql);
		if(parameters!=null){
			for(int i=0;i<parameters.size();i++){
				listQuery.setParameter(i,parameters.get(i));
			}
		}
		listQuery.setFirstResult((pageNum-1)*pageSize);
		listQuery.setMaxResults(pageSize);
		List list=listQuery.list();
		Query countQuery=getSession().createQuery(   
				"select count(*) "+hql);
		if(parameters!=null){
			for(int i=0;i<parameters.size();i++){
				countQuery.setParameter(i,parameters.get(i));
			}
		}
		Long count=(Long) countQuery.uniqueResult();
//		System.out.println("count="+count);
		return new PageBean(pageNum,pageSize,count.intValue(),list);
	}
}
