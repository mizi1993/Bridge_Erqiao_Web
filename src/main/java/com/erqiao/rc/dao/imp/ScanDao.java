package com.erqiao.rc.dao.imp;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IScanDao;
import com.erqiao.rc.domain.Scan;

@Repository("scanDao")
public class ScanDao extends BaseDao<Scan> implements IScanDao {

}
