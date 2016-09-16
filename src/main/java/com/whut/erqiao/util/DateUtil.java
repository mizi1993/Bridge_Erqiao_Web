package com.whut.erqiao.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	public static int getDaysBetween(String date1,String date2){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		long span=0;
		try {
			Date d1=sdf.parse(date1);
			Date d2=sdf.parse(date2);
			Calendar cal=Calendar.getInstance();
			cal.setTime(d1);
		    long time1=cal.getTimeInMillis();
		    cal.setTime(d2);
		    long time2=cal.getTimeInMillis();
		    span=time2-time1;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return (int)(span/(1000*3600*24));//算得天数。
	}
}
