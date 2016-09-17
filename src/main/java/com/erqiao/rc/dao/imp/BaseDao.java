package com.erqiao.rc.dao.imp;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.erqiao.rc.dao.IBaseDao;
import com.erqiao.rc.domain.Gps;



public class BaseDao<T> implements IBaseDao<T>{

	// 每页需要显示的记录数
	private final int pageSize = 15;
	// DAO组件进行持久化操作底层依赖的SessionFactory组件
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;

	// 依赖注入SessionFactory所需的setter方法
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	}
	public Session getSession()
	{
		return this.sessionFactory.getCurrentSession();
	}
	
	/**
	 * 创建一个Class的对象来获取泛型的class
	 */
	private Class<T> clz;
	
	@SuppressWarnings("unchecked")
	public Class<T> getClz() {
		if(clz==null) {
			//获取泛型的Class对象
			clz = ((Class<T>)
					(((ParameterizedType)(this.getClass().getGenericSuperclass())).getActualTypeArguments()[0]));
		}
		return clz;
	}
	
	
	@Override
	public void update(T entity) {
		this.getSession().saveOrUpdate(entity);
	}
	
	@Override
	public void update(String hql, Object[] args) {
		this.getSession().clear();
		Query u = getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		u.executeUpdate();
	}
	
	@Override
	public void delete(String hql, Object arg) {
		this.update(hql, new Object[]{arg});
	}
	
	@Override
	public void delete(String hql, Object arg1, Object arg2) {
		this.update(hql, new Object[]{arg1,arg2});
	}
	
	
	@Override
	public void add(T entity) {
		// TODO Auto-generated method stub
		this.getSession().save(entity);
	}
	
	//获取下拉菜单的按月查询值
	@SuppressWarnings("unchecked")
	public List<T> getDateLists(String hql) {
		
		List<T> dateList = getSession().createQuery(hql).list();

		return dateList;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<T> getByPage(String hql, Integer pageNow, Object[] args) {
		Query u = getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		List<T> list = u.setFirstResult(pageSize*(pageNow-1))
						.setMaxResults(pageSize)
						.list();
		return list;
	}
	
	@Override
	public List<T> getByPage(String hql, Integer pageNow) {
		return this.getByPage(hql, pageNow, null);
	}
	@Override
	public List<T> getByPage(String hql, Integer pageNow, Object arg) {
		return this.getByPage(hql, pageNow, new Object[]{arg});
	}
	@Override
	public List<T> getByPage(String hql, Integer pageNow, Object arg1,
			Object arg2) {
		return this.getByPage(hql, pageNow, new Object[]{arg1,arg2});
	}
	@Override
	public int getPageCount(String hql, Object[] args) {
		
		int pageCount;
		Query u = this.getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		int RecordCount = ((Number)u.uniqueResult()).intValue();
		
		//计算pageCount
		if(RecordCount%pageSize==0){
			pageCount=RecordCount/pageSize;
		}else{
			pageCount=RecordCount/pageSize+1;
		}
		System.out.println("----------->------>-->->RecordCount="+RecordCount+"...pageCount="+pageCount);
		return pageCount;
	}
	
	@Override
	public int getPageCount(String hql) {
		return this.getPageCount(hql,null);
	}

	@Override
	public int getPageCount(String hql, Object arg) {
		return this.getPageCount(hql,new Object[]{arg});
	}
	
	@Override
	public int getPageCount(String hql, Object arg1,Object arg2) {
		return this.getPageCount(hql,new Object[]{arg1,arg2});
	}
	
	@Override
	public T load(int id) {
		
//		this.getSession().clear();
//		return (T) this.getSession().load(getClz(), id);
//		String hql = "from "+getClz().getSimpleName() + " where id = ?";
//		return (T) getSession().createQuery(hql).setParameter(0, id).uniqueResult();
		String hql= "from "+getClz().getSimpleName() + " where id = ?";
		if(load(hql,new Object[]{id}).isEmpty()){
			return null;
		}else{
			return load(hql, new Object[]{id}).get(0);
		}
	}
	
	public T load(String zipname, String macid){
		String hql="from "+getClz().getSimpleName()+" where zipname= ? and macid=?";
		if(load(hql, new Object[]{zipname,macid}).isEmpty()){
			return null;
		}else{
			return load(hql, new Object[]{zipname,macid}).get(0);
		}
	}
	
	public T load_S(String hql,String name, Integer id){
		if(load(hql, new Object[]{name,id}).isEmpty()){
			return null;
		}else{
			return load(hql, new Object[]{name,id}).get(0);
		}
	}
	
	public T load_S(String hql,String name){
		if(load(hql, new Object[]{name}).isEmpty()){
			return null;
		}else{
			return load(hql, new Object[]{name}).get(0);
		}
	}
	
	public T load_S(String hql,Integer id){
		if(load(hql, new Object[]{id}).isEmpty()){
			return null;
		}else{
			return load(hql, new Object[]{id}).get(0);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<T> load(String hql,Object[] args){

		this.getSession().clear();
//		Query u = getSession().createQuery(hql);
		Query u = getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		return u.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> getEntitys(String hql) {
		this.getSession().clear();
		return getSession().createQuery(hql).list();
	}
	
	public List<T> getEntitys(String hql, Integer id) {
		return this.load(hql, new Object[]{id});
	}
	
	


	
	
	
	
	

	
}
