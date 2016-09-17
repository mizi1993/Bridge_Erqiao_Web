package com.erqiao.rc.dao.imp;

import java.text.ParseException;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.erqiao.rc.dao.ISpecialDao;
import com.erqiao.rc.domain.Special;
import com.erqiao.rc.util.utils;

@Repository("specialDao")
public class SpecialDao extends BaseDao<Special> implements ISpecialDao{

	//获取下拉菜单的按月查询值
	@SuppressWarnings("unchecked")
	public List<Special> getDateLists(String hql) {

		List<Special> dateList = getSession().createQuery(hql).list();
		for(int i=0,len= dateList.size();i<len;i++){
			try {
				if(i>0 && utils.dtf_D_S(dateList.get(i).getDatetime()).substring(0, 7)
						.equals(utils.dtf_D_S(dateList.get(i-1).getDatetime()).substring(0, 7))){
					dateList.remove(i);
					--len;
					--i;
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}	
		} 
		for(int i=0,len= dateList.size();i<len;i++){
			dateList.get(i).setDateString(utils.yyyyMM_D_Scn(dateList.get(i).getDatetime()));
		}
		
//		for(Special s:dateList) {System.out.println(s.getId()+":"+s.getDatetime());}
		
		return dateList;
	}

//	选中月份id，获取月份（由按月查找的id获取->[String](yyyy-MM)）
	@Override
	public String getDateSelected(int id) {
		return load(id).getDatetime().toString().substring(0, 7);
	}

	//如果没有更换图片，保存原数据库中数据
	public String[] getImages(Special sp,String[] imageFile, String[] imgflag){
		String[] imageFileName = new String[10];
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
		for(int i=0;i<10;i++){
			System.out.println("imageFileName"+i+"="+imageFileName[i]);
		}
		return imageFileName;
	}
}
