package com.erqiao.rc.server.imp;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.erqiao.rc.dao.ISpecialDao;
import com.erqiao.rc.domain.Special;
import com.erqiao.rc.server.ISpecialService;
import com.erqiao.rc.util.utils;

@Service("specialService")
public class SpecialService implements ISpecialService{

	@Resource
	private ISpecialDao specialDao;
	@Override
	public void add(Special s) {
		// TODO Auto-generated method stub
		specialDao.add(s);
	}
	
	public ISpecialDao getSpecialDao() {
		return specialDao;
	}
	public void setSpecialDao(ISpecialDao specialDao) {
		this.specialDao = specialDao;
	}
	
	@Override
	//获取下拉菜单的按月查询值
	public List<Special> getDateLists() {
		String hql="select new Special(s.id,s.datetime) from Special as s order by s.datetime desc";
		return specialDao.getDateLists(hql);
	}
	
	
	@Override
	public List<Special> getSpecialsByPage(Integer pageNow) {

		String hql = "from Special s order by s.datetime desc";
		List<Special> list = specialDao.getByPage(hql,pageNow);
		return list;
	}

	@Override
	public List<Special> getSpecialsByPage(Integer pageNow, String byMonth) {

		String hql = "from Special s where s.datetime between ? and ?";
		Date date1 = utils.YYMM_S_D(byMonth);
		Date date2 = utils.add_month(byMonth);
		List<Special> list = specialDao.getByPage(hql,pageNow,date1,date2);
		return list;
	}

	@Override
	public List<Special> getSpecialsByPage(Integer pageNow, String edtFromDate, String edtToDate) {
		String hql = "from Special s where s.datetime between ? and ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		Date date2 = utils.yyyyMMdd(edtToDate);
		List<Special> list = specialDao.getByPage(hql,pageNow,date1,date2);
		return list;
	}

	@Override
	public List<Special> getSpecialsByPage_FromOnly(Integer pageNow, String edtFromDate) {
		
		String hql = "from Special s where s.datetime > ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		return specialDao.getByPage(hql,pageNow,date1);
	}

	@Override
	public List<Special> getSpecialsByPage_EndOnly(Integer pageNow, String edtToDate) {
		String hql = "from Special s where s.datetime < ?";
		Date date1 = utils.yyyyMMdd(edtToDate);
		return specialDao.getByPage(hql,pageNow,date1);
	}
	
	@Override
	public String getDateSelected(int id) {
		return specialDao.getDateSelected(id);
	}
	@Override
	public int getPageCount() {
		String hql = "select count(*) from Special";
		return specialDao.getPageCount(hql);
	}

	@Override
	public int getPageCount(String byMonth) {
		String hql = "select count(*) from Special s where s.datetime between ? and ?";
		Date date1 = utils.YYMM_S_D(byMonth);
		Date date2 = utils.add_month(byMonth);
		return specialDao.getPageCount(hql, date1,date2);
	}

	@Override
	public int getPageCount(String edtFromDate, String edtToDate) {
		String hql="select count(*) from Special s where s.datetime between ? and ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		Date date2 = utils.yyyyMMdd(edtToDate);
		return specialDao.getPageCount(hql, date1,date2);
	}

	@Override
	public int getPageCount_FromOnly(String edtFromDate) {
		String hql="select count(*) from Special s where s.datetime > ?";
		Date date1 = utils.yyyyMMdd(edtFromDate);
		return specialDao.getPageCount(hql, date1);
	}

	@Override
	public int getPageCount_EndOnly(String edtToDate) {
		String hql="select count(*) from Special s where s.datetime < ?";
		Date date1 = utils.yyyyMMdd(edtToDate);
		return specialDao.getPageCount(hql, date1);
	}

	@Override
	public void delete(int id) {

		String hql = "delete Special s where s.id = ?";
		specialDao.delete(hql, id);
	}

	@Override
	public Special load(int id) {
		return specialDao.load(id);
	}


	@Override
	public Special getSpecial(int id) {
		Special s = specialDao.load(id);
		
		String[] imgs = s.getImgs();

		for(int i=0;i<imgs.length;i++){
			if(imgs[i]==null){
				imgs[i]="image/grey.png";
			}else{
				imgs[i]= "Import/"+s.getZipname()+"/"+imgs[i];
			}
		}

		s.setImgs(imgs);
		
		return s;
	}
	
	@Override
	public void update(Object[] args) {
		String hql = "update Special s set s.position=?, s.events=?, s.detail=?,"
				+ " s.img1=?, s.img2=?, s.img3=?, s.img4=?, s.img5=?, s.img6=?, "
				+ "s.img7=?, s.img8=?, s.img9=?, s.img10=? where s.id = ?";
		specialDao.update(hql, args);
	}
	
	@Override
	public void update(Special s) {
		
		specialDao.update(s);
		
	}

	@Override
	public String[] getImages(Special sp, String[] imageFile, String[] imgflag) {
		// TODO Auto-generated method stub
		return specialDao.getImages(sp, imageFile, imgflag);
	}




	

}
