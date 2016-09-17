package com.erqiao.rc.dao;

import java.util.List;

public interface IBaseDao<T> {
	
	List<T> getEntitys(String hql);
	List<T> getEntitys(String hql, Integer id);
	/**
	 * 获取下拉菜单的实体
	 * @param hql
	 * @param name
	 * @param id
	 * @return
	 */
	T load_S(String hql,String name, Integer id);
	T load_S(String hql,String name);
	T load_S(String hql,Integer id);
	
	/**
	 * 获取实体
	 * @param id
	 * @return
	 */
	T load(int id);
	T load(String zipname, String macid);
	void add(T entity);
	
	/**
	 * 更新数据
	 * @param hql
	 * @param args
	 */
	void update(String hql,Object[] args);
	void update(T entity);
	
	List<T> load(String hql,Object[] args);
	/**
	 * 删除记录(根据参数删除)
	 * @param hql
	 * @param arg1
	 * @param arg2
	 */
	void delete(String hql,Object arg);
	void delete(String hql,Object arg1,Object arg2);
	/**
	 * 按月查找下拉菜单值
	 * @param hql
	 * @return 
	 */
	List<T> getDateLists(String hql);
	
	/**
	 * 分页查询(按日查找，或按月查找)
	 * @param hql 需要查询的hql语句
	 * @param pageNow 当前页数
	 * @return 当前页数的所有记录
	 */
	List<T> getByPage(String hql,Integer pageNow);
	/**
	 * 分页查询 (按日查找)
	 * @param hql
	 * @param pageNow 
	 * @param arg 起始日期或截止日期
	 * @return 当前页数的所有记录
	 */
	List<T> getByPage(String hql,Integer pageNow,Object arg);
	/**
	 * 分页查询
	 * @param hql 需要查询的hql语句
	 * @param pageNow 当前页数
	 * @param arg1 起始日期
	 * @param arg2 截止日期
	 * @return 当前页数的所有记录
	 */
	List<T> getByPage(String hql,Integer pageNow,Object arg1,Object arg2);
	List<T> getByPage(String hql,Integer pageNow,Object[] args);
	
	/**
	 * 返回分页总数
	 * @param hql
	 * @return 返回分页总数
	 */
	int getPageCount(String hql);
	/**
	 * 返回分页总数(按日查找)
	 * @param hql
	 * @param arg 起始日期或截止日期
	 * @return 返回分页总数
	 */
	int getPageCount(String hql, Object arg);
	/**
	 * 返回分页总数(按日查找，或按月查找)
	 * @param hql
	 * @param arg1起始日期
	 * @param arg2 截止日期
	 * @return 返回分页总数
	 */
	int getPageCount(String hql, Object arg1,Object arg2);
	int getPageCount(String hql,Object[] args);
	
}
