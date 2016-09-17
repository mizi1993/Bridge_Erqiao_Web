package com.erqiao.rc.dao.imp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IGpsDao;
import com.erqiao.rc.domain.Gps;

@Repository("gpsDao")
public class GpsDao extends BaseDao<Gps> implements IGpsDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getGPS(String hql,String zipname, String macid) {
		this.getSession().clear();
		Query u = this.getSession().createQuery(hql).setParameter(0, zipname)
				.setParameter(1, macid);
		List<Gps> gpslist = u.list();
		List<String> gpsPoint = new ArrayList<String>();
		String lon = "114.332087|";
		String lat = "30.60856|";
		
//		String lon= gpsList.get(0).getLon()+"|";
//		String lat= gpsList.get(0).getLat()+"|";	
		
		for(int i=0;i<gpslist.size();i++){
			lon= lon+gpslist.get(i).getLon()+"|";
			lat= lat+gpslist.get(i).getLat()+"|";				
		}
		
		gpsPoint.add(lon);
		gpsPoint.add(lat);
		
		return gpsPoint;
	}

}
