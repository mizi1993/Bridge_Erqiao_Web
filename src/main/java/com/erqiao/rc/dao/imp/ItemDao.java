package com.erqiao.rc.dao.imp;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IItemDao;
import com.erqiao.rc.domain.Item;

@Repository("itemDao")
public class ItemDao extends BaseDao<Item> implements IItemDao{

}
