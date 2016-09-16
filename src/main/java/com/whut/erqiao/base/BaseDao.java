package com.whut.erqiao.base;

import java.util.List;

import com.whut.erqiao.entity.PageBean;

public interface BaseDao<T> {
	
	void save(T entity);
	void delete(long id);
	void update(T entity);
	/**
	 *  按id查询
	 * @param id
	 * @return
	 */
	T getById(Long id);
	
	/**
	 * 按id查询
	 * @param ids
	 * @return
	 */
	List<T> getByIds(Long[] ids);
	/**
	 * 查询所有
	 * @return
	 */
	List<T> findAll();
	
	PageBean getPageBean(int pageNum,int pageSize,String hql,List<Object> parameters);
}
