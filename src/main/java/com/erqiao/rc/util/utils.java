//时间格式转换，将字符串  yyyy年MM月dd日 转换为  yyyy-MM-dd，将yyyy年MM月  转换成  yyyy-MM
package com.erqiao.rc.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
public class utils {

	private static SimpleDateFormat yyyyMMddcn = new SimpleDateFormat("yyyy年MM月dd日");
	private static SimpleDateFormat yyyyMMdd = new SimpleDateFormat("yyyy-MM-dd");
	private static SimpleDateFormat yyyyMMcn = new SimpleDateFormat("yyyy年MM月");
	private static SimpleDateFormat yyyyMM = new SimpleDateFormat("yyyy-MM");	
	private static SimpleDateFormat dtfCN = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
	private static SimpleDateFormat dtf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/**
	 * String(yyyy-MM-dd HH:mm:ss)->Date(yyyy-MM-dd HH:mm:ss)
	 * @param dateString
	 * @return
	 */
	public static Date dtf_S_D(String dateString){
		Date date = null;
		try {
			date = dtf.parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	/**
	 * Date->String(yyyy-MM-dd HH:mm:ss)
	 * @param string
	 * @return String:yyyy-MM-dd HH:mm:ss
	 * @throws ParseException
	 */
	public static String dtf_D_S(Date date) throws ParseException{
		return dtf.format(date);

	}
	/**
	 * Date->Date(yyyy年MM月)
	 * @param date(yyyy年MM月)
	 * @return
	 * @throws ParseException
	 */
	public static Date yyyyMM_D_Dcn(Date date) throws ParseException{
		return yyyyMMcn.parse(yyyyMMcn.format(date));
	}
	/**
	 * Date->String(yyyy年MM月)
	 * @param date
	 * @return
	 */
	public static String yyyyMM_D_Scn(Date date){
		return yyyyMMcn.format(date);
	}
	/**
	 * String(yyyy年MM月)->Date(yyyy-MM)
	 * @param byMonth
	 * @return
	 */
	public static Date YYMM_Scn_D(String byMonth) {
		Date byMonthDate;
		Date byMonthString = null;
		try {
			byMonthDate = yyyyMMcn.parse(byMonth);
			byMonthString = yyyyMM.parse(yyyyMM.format(byMonthDate));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return byMonthString;
	}
	/**
	 * String(yyyy-MM)->Date(yyyy-MM)
	 * @param byMonth
	 * @return
	 */
	public static Date YYMM_S_D(String byMonth) {

		Date sDate = null;
		try {
			sDate = yyyyMM.parse(byMonth);
		} catch (ParseException e) {
			e.printStackTrace();
		} 
		return sDate;
	}
	/**
	 * [String](yyyy-MM) 月份+1->Date(yyyy-MM)
	 * @param String: date
	 * @return 月份+1后的  Date(yyyy-MM)
	 */
	public static Date add_month(String date){

		Calendar cl = Calendar.getInstance();  
		cl.setTime(YYMM_S_D(date));  
		cl.add(Calendar.MONTH, 1);  
		Date dateDate = cl.getTime();
		return dateDate;
	}
	/**
	 * [String](yyyy年MM月dd日) 天数+1 ->Date(yyyy-MM-dd)
	 * @param String: date
	 * @return 天数+1 的 Date(yyyy-MM-dd)
	 */
	public static Date add_day(String date){
		Calendar cl = Calendar.getInstance();  
		cl.setTime(yyyyMMdd(date));  
		cl.add(Calendar.DAY_OF_YEAR, 1); 
		Date dateDate = cl.getTime();
		return dateDate;
	}

	/**
	 * [String](yyyy年MM月dd日)-->Date(yyyy-MM-dd)
	 * @param String:dateString
	 * @return Date(yyyy-MM-dd)
	 */
	public static Date yyyyMMdd(String dateString) {
		Date date = null;
		String dString = null;
		try {
			dString = yyyyMMdd.format(yyyyMMddcn.parse(dateString));
			date = yyyyMMdd.parse(dString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	//获取指定日期是星期几
	public static String getWeekOfDate(Date date) {      
		String[] weekOfDays = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};        
		Calendar calendar = Calendar.getInstance();      
		if(date != null){        
			calendar.setTime(date);      
		}        
		int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;      
		if (w < 0){        
			w = 0;      
		}      
		return weekOfDays[w];    
	}

	//将  yyyy-MM-dd HH:mm:ss 转换成  yyyy年MM月dd日 HH时mm分ss秒
	public static String ConvertDatetimeCN(String datetimeString) {
		Date datetimeDate;
		String datetimeCN = null;
		try {
			datetimeDate =dtf.parse(datetimeString);
			datetimeCN = dtfCN.format(datetimeDate);
			//				System.out.println(byMonthString+"..");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return datetimeCN;
	}


	//将  yyyy-MM 转换成  yyyy年MM月
	/*public static String Convert(String byMonth) {
		Date byMonthDate;
		String byMonthString = null;
		try {
			byMonthDate =yyyyMM.parse(byMonth);
			byMonthString = yyyyMMcn.format(byMonthDate);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		System.out.println(byMonthString+"..");
		return byMonthString;
	}*/
	public static Date Convert(String byMonth) {
		Date byMonthDate;
		Date byMonthString = null;
		try {
			byMonthDate =yyyyMM.parse(byMonth);
			byMonthString = yyyyMMcn.parse(yyyyMMcn.format(byMonthDate));

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//		System.out.println(byMonthString+"..");
		return byMonthString;
	}

	public static Object[] getArray(Object[] first,Object[] second,Object[] third) 
	{   
		Object[] s = new Object[first.length + second.length + third.length];   
		System.arraycopy(first, 0, s, 0, first.length); 
		System.arraycopy(second, 0, s, first.length, second.length); 
		System.arraycopy(third, 0, s, first.length+second.length,third.length); 
		return s;  
	}
}
