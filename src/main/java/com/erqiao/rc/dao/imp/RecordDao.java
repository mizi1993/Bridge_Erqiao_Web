package com.erqiao.rc.dao.imp;

import java.util.HashMap;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.IRecordDao;
import com.erqiao.rc.domain.Record;

@Repository("recordDao")
public class RecordDao extends BaseDao<Record> implements IRecordDao {

	//如果没有更换图片，保存原数据库中数据
	public String[] getImages(Record sp,String[] imageFile, String[] imgflag){
		final int n = 6; 
		String[] imageFileName = new String[n];
		if(imageFile==null){
			for(int i=0;i<sp.getImgs().length;i++){
				imageFileName[i]=sp.getImgs()[i];
			}

		}else{
			for(int i=0,j=0;i<imgflag.length;i++){
				if(!imgflag[i].equals("")){
					int k = Integer.parseInt(imgflag[i]);
					imageFileName[k-1]=imageFile[j++];
				}
			}
			for(int i=0;i<imageFileName.length;i++){
				if(imageFileName[i]==null){
					imageFileName[i]=sp.getImgs()[i];
				}
			}
		}
		for(int i=0;i<n;i++){
			System.out.println("imageFileName"+i+"="+imageFileName[i]);
		}
		return imageFileName;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Record> getRecords(String hql, Object[] args) {
		this.getSession().clear();
		Query u = getSession().createQuery(hql);
		if(args!=null) {
			for(int i=0;i<args.length;i++) {
				u.setParameter(i, args[i]);
			}
		}
		List<Record> list = u.list();

		return list;
	}

	@Override
	public List<Record> getRecords(String hql, String zipname, String macid) {
		return this.getRecords(hql, new Object[]{zipname,macid});
	}

	//为UpdownSelect添加数据
	public HashMap<Integer, String> getUpDown(){

		HashMap<Integer,String> updownMap =new HashMap<Integer,String>();
		updownMap.put(0,"上桥考勤");
		updownMap.put(1,"下桥考勤");

		return updownMap;
	}

	//为Weather列表添加数据
	public HashMap<Integer,String> getWeather(){
		HashMap<Integer,String> weatherMap =new HashMap<Integer,String>();
		weatherMap.put(0,"晴");
		weatherMap.put(1,"多云");
		weatherMap.put(2,"雾");
		weatherMap.put(3,"霾");
		weatherMap.put(4,"阴");
		weatherMap.put(5,"小雨");
		weatherMap.put(6,"中雨");
		weatherMap.put(7,"大雨");
		weatherMap.put(8,"雨夹雪");
		weatherMap.put(9,"雪");
		return weatherMap; 
	}

	//返回被选中的UpDownKey/WeatherKey
	public int getKey(String s){
		int key=-1;
		if(s==null)s="";
		switch(s)
		{
		case "上桥考勤":
			key=0;
			break;
		case "下桥考勤":
			key=1;
			break;
		case "晴":
			key=0;
			break;
		case "多云":
			key=1;
			break;
		case "雾":
			key=2;
			break;
		case "霾":
			key=3;
			break;
		case "阴":
			key=4;
			break;
		case "小雨":
			key=5;
			break;
		case "中雨":
			key=6;
			break;
		case "大雨":
			key=7;
			break;
		case "雨夹雪":
			key=8;
			break;
		case "雪":
			key=9;
			break;
		default:
			key=-1;
			break;
		}
		return key;
	}

	//返回被选中的UpDownValue/WeatherValue
	public String getValue(int i){
		String value="";
		switch(i)
		{
		case -2:
			value="上桥考勤";
			break;
		case -1:
			value="下桥考勤";
			break;
		case 0:
			value="晴";
			break;
		case 1:
			value="多云";
			break;
		case 2:
			value="雾";
			break;
		case 3:
			value="霾";
			break;
		case 4:
			value="阴";
			break;
		case 5:
			value="小雨";
			break;
		case 6:
			value= "中雨";
			break;
		case 7:
			value="大雨";
			break;
		case 8:
			value="雨夹雪";
			break;
		case 9:
			value="雪";
			break;
		default:
			value="";
			break;
		}
		return value;
	}

}
