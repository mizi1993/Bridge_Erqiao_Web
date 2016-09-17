package com.erqiao.rc.dao.imp;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IClassifyDao;
import com.erqiao.rc.domain.Classify;

@Repository("classifyDao")
public class ClassifyDao extends BaseDao<Classify> implements IClassifyDao{

}
