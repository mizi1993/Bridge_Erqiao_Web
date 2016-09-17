package com.erqiao.rc.dao.imp;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IDefectDao;
import com.erqiao.rc.domain.Defect;


@Repository("defectDao")
public class DefectDao extends BaseDao<Defect> implements IDefectDao{

}
