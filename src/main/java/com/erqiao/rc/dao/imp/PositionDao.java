package com.erqiao.rc.dao.imp;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IPositionDao;
import com.erqiao.rc.domain.Position;

@Repository("positionDao")
public class PositionDao extends BaseDao<Position> implements IPositionDao{

}
