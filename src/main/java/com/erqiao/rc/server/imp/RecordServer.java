package com.erqiao.rc.server.imp;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.erqiao.rc.dao.IAttendanceDao;
import com.erqiao.rc.dao.IClassifyDao;
import com.erqiao.rc.dao.IDefectDao;
import com.erqiao.rc.dao.IGpsDao;
import com.erqiao.rc.dao.IItemDao;
import com.erqiao.rc.dao.IPositionDao;
import com.erqiao.rc.dao.IRecordDao;
import com.erqiao.rc.dao.IRecordPlusDao;
import com.erqiao.rc.dao.imp.GpsDao;
import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Classify;
import com.erqiao.rc.domain.Defect;
import com.erqiao.rc.domain.Item;
import com.erqiao.rc.domain.Position;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.RecordPlus;
import com.erqiao.rc.server.IRecordServer;

@Service("recordService")
public class RecordServer implements IRecordServer{

	@Resource
	private IClassifyDao classifyDao;
	@Resource
	private IDefectDao defectDao;
	@Resource
	private IItemDao itemDao;
	@Resource
	private IPositionDao positionDao;
	
	@Resource
	private IAttendanceDao attendanceDao;
	
	@Resource
	private IRecordDao recordDao;
	
	@Resource
	private IGpsDao gpsDao;
	
	@Resource
	private IRecordPlusDao recordPlusDao;
	
	public IPositionDao getPositionDao() {
		return positionDao;
	}

	public IClassifyDao getClassifyDao() {
		return classifyDao;
	}

	public void setClassifyDao(IClassifyDao classifyDao) {
		this.classifyDao = classifyDao;
	}

	public IDefectDao getDefectDao() {
		return defectDao;
	}

	public void setDefectDao(IDefectDao defectDao) {
		this.defectDao = defectDao;
	}

	public IItemDao getItemDao() {
		return itemDao;
	}

	public void setItemDao(IItemDao itemDao) {
		this.itemDao = itemDao;
	}

	public void setPositionDao(IPositionDao positionDao) {
		this.positionDao = positionDao;
	}

	public IRecordDao getRecordDao() {
		return recordDao;
	}

	public void setRecordDao(IRecordDao recordDao) {
		this.recordDao = recordDao;
	}

	public IAttendanceDao getAttendanceDao() {
		return attendanceDao;
	}

	public void setAttendanceDao(IAttendanceDao attendanceDao) {
		this.attendanceDao = attendanceDao;
	}

	public IRecordPlusDao getRecordPlusDao() {
		return recordPlusDao;
	}

	public void setRecordPlusDao(IRecordPlusDao recordPlusDao) {
		this.recordPlusDao = recordPlusDao;
	}

	@Override
	public Attendance load_Attendance(int id) {
		// TODO Auto-generated method stub
		return attendanceDao.load(id);
	}

	@Override
	public Record load_Record(int id) {
		// TODO Auto-generated method stub
		return recordDao.load(id);
	}
	@Override
	public Attendance getAttendance(int id) {

		Attendance attendance =  attendanceDao.load(id);
		attendance.setImg("Import/"+attendance.getZipname()+"/"+attendance.getImg());

		return attendance;
	}

	@Override
	public Record getRecord(int id) {
		
		Record record =  recordDao.load(id);
		record.setImg1("Import/"+record.getZipname()+"/"+record.getImg1());
		record.setImg2("Import/"+record.getZipname()+"/"+record.getImg2());
		record.setImg3("Import/"+record.getZipname()+"/"+record.getImg3());
		record.setImg4("Import/"+record.getZipname()+"/"+record.getImg4());
		record.setImg5("Import/"+record.getZipname()+"/"+record.getImg5());
		record.setImg6("Import/"+record.getZipname()+"/"+record.getImg6());
		return record;
	}
	@Override
	public List<Attendance> getAttendances(String zipname, String macid) {
		
		String hql="from Attendance a where a.zipname=? and a.macid=?";
		List<Attendance> list = attendanceDao.getAttendances(hql, zipname, macid);
		for(int i=0;i<list.size();i++){
			if(list.get(i).getImg()==null){
				list.get(i).setImg("image/grey.png");
			}else{
				list.get(i).setImg("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg());
			}
		}
		return list;
		
	}
	
	@Override
	public List<Record> getRecords(String zipname, String macid) {
		String hql="from Record r where r.zipname=? and r.macid=?";
		List<Record> list = recordDao.getRecords(hql, zipname, macid);
		for(int i=0;i<list.size();i++){
			if(list.get(i).getImg1()==null){
				list.get(i).setImg1("image/grey.png");
			}else{
				list.get(i).setImg1("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg1());
				list.get(i).setImg2("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg2());
				list.get(i).setImg3("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg3());
				list.get(i).setImg4("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg4());
				list.get(i).setImg5("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg5());
				list.get(i).setImg6("Import/"+list.get(i).getZipname()+"/"+list.get(i).getImg6());
			}
		}
		return list;
	}

	@Override
	public List<String> getGps(String zipname, String macid) {
		String hql="from Gps g where g.zipname=? and g.macid=?";
		List<String> gps = gpsDao.getGPS(hql, zipname, macid);
		return gps;
	}

	@Override
	public RecordPlus getRecordPlus(String zipname, String macid) {
		// TODO Auto-generated method stub
		return recordPlusDao.load(zipname, macid);
	}

	@Override
	public void setRecordPlus(RecordPlus r) {
		// TODO Auto-generated method stub
		recordPlusDao.add(r);
	}

	@Override
	public void updateRecordPlus(Object[] obj) {
		String hql="update RecordPlus r set r.repair=? ,r.ensure=?, r.other=? where r.id=?";
		recordPlusDao.update(hql,obj);
	}

	@Override
	public HashMap<Integer, String> getWeather() {
		// TODO Auto-generated method stub
		return recordDao.getWeather();
	}

	@Override
	public HashMap<Integer, String> getUpDown() {
		// TODO Auto-generated method stub
		return recordDao.getUpDown();
	}

	@Override
	public int getKey(String s) {
		// TODO Auto-generated method stub
		return recordDao.getKey(s);
	}

	@Override
	public void update_Attendance(Object[] args) {
		String hql = "update Attendance s set s.updown=?, s.staff=?, s.weather=?,"
				+ " s.temp=?, s.hum=?, s.img=?, s.detail=? where s.id = ?";
		attendanceDao.update(hql, args);
	}

	@Override
	public void update_Record(Object[] args) {
		String hql = "update Record s set s.classify=? ,s.item=?, s.position1=?,"
				+ " s.position2=?, s.position3=?, s.defect=?, s.data=?, s.img1=?, s.img2=?, "
				+ "s.img3=?, s.img4=?, s.img5=?, s.img6=? where s.id = ?";
		for(Object o:args){
			System.out.println("------------------------------->"+o);
		}
		recordDao.update(hql, args);
	}

	@Override
	public String getValue(int i) {
		// TODO Auto-generated method stub
		return recordDao.getValue(i);
	}

	@Override
	public Integer getClassifyId(String className) {
		String hql="from Classify where className=?";
		Classify classify = classifyDao.load_S(hql, className);
		if(classify!=null){
			return classify.getClassId();
		}else {
			return null;
		}
	}

	@Override
	public Integer getItemId(String itemName, Integer classId) {
		String hql="from Item where itemName=? and classId=?";
		Item item = itemDao.load_S(hql, itemName, classId);
		if(item!=null){
			return item.getItemId();
		}else {
			return null;
		}
		
	}

	@Override
	public Integer getPositionId(String positionName, Integer itemId) {
		String hql="from Position where positionName=? and itemId=?";
		return positionDao.load_S(hql, positionName, itemId).getPositionId();
	}

	@Override
	public Integer getDefectId(String defectName, Integer itemId) {
		String hql="from Defect where defectName=? and itemId=?";
		return defectDao.load_S(hql, defectName, itemId).getDefectId();
	}

	public String getClassifyName(Integer classId) {
		String hql="from Classify where classId=?";
		return classifyDao.load_S(hql, classId).getClassName();
	}

	public String getItemName(Integer itemId) {
		String hql="from Item where itemId=?";
		return itemDao.load_S(hql,itemId).getItemName();
	}

	public String getPositionName(Integer positionId) {
		String hql="from Position where positionId=?";
		return positionDao.load_S(hql, positionId).getPositionName();
	}

	public String getDefectName(Integer defectId) {
		String hql="from Defect where defectId=?";
		return defectDao.load_S(hql,defectId).getDefectName();
	}
	@Override
	public List<Classify> getClassList() {
		String hql="from Classify";
		return classifyDao.getEntitys(hql);
	}

	@Override
	public List<Item> getItemList(Integer ClassId) {
		String hql="from Item where classId=?";
		return itemDao.getEntitys(hql, ClassId);
	}

	@Override
	public List<Defect> getDefectList(Integer ItemId) {
		String hql="from Defect where itemId=?";
		return defectDao.getEntitys(hql, ItemId);
	}

	@Override
	public List<Position> getPositionList(Integer ItemId) {
		String hql="from Position where itemId=?";
		return positionDao.getEntitys(hql, ItemId);
	}

	@Override
	public String[] getImages(Record sp, String[] imageFile, String[] imgflag) {
		// TODO Auto-generated method stub
		return recordDao.getImages(sp, imageFile, imgflag);
	}

}
