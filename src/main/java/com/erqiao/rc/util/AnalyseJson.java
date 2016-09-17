package com.erqiao.rc.util;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.erqiao.rc.domain.Attendance;
import com.erqiao.rc.domain.Gps;
import com.erqiao.rc.domain.Record;
import com.erqiao.rc.domain.Scan;

public class AnalyseJson {
	
	
	public static String ReadJsonFile(String Path){
		String jsonString="";
		BufferedReader br = null;
		try {
			FileInputStream fis = new FileInputStream(Path);
			InputStreamReader isr = new InputStreamReader(fis);
			br = new BufferedReader(isr);
			String tempString = "";
			while((tempString=br.readLine())!=null){
				jsonString+=tempString;
			}
		
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			if(br!=null){
				try {
					br.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return jsonString;
	}
	
	public static List<Attendance> AttendanceJson(String zipname,String path){
		List<Attendance> list = new ArrayList<Attendance>();
		String attendanceJson = ReadJsonFile(path);
		System.out.println(attendanceJson);
		JSONArray jsonArray = JSONArray.fromObject(attendanceJson);
		int size = jsonArray.size();
		System.out.println("attendanceJsonSize: " + size);
		for(int  i = 0; i < size; i++){
			JSONObject jsonObject = jsonArray.getJSONObject(i);
			String macid = (String) jsonObject.get("id");
			String datetimeString = jsonObject.get("date") +" "+ jsonObject.get("time");
			Date datetime = utils.dtf_S_D(datetimeString);
			String updown = (String) jsonObject.get("up_down");
			String staff = (String) jsonObject.get("staff");
			String weather =  (String) jsonObject.get("weather");
			String temp = (String) jsonObject.get("temp");
			String hum =(String) jsonObject.get("hum");
			String img =  (String) jsonObject.get("img");
			String detail = (String) jsonObject.get("detail");
			Attendance attendance = new Attendance(zipname, macid, datetime, updown, staff, weather, temp, hum, img, detail);
			list.add(attendance);
			}
		return list;
	}
	
	public static List<Gps> GpsJson(String zipname,String path){
		List<Gps> list = new ArrayList<Gps>();
		String gpsJson = ReadJsonFile(path);
		System.out.println(gpsJson);
		JSONArray jsonArray = JSONArray.fromObject(gpsJson);
		int size = jsonArray.size();
		System.out.println("gpsJsonSize: " + size);
		for(int  i = 0; i < size; i++){
			JSONObject jsonObject = jsonArray.getJSONObject(i);
			String macid = (String) jsonObject.get("id");
			String datetimeString = jsonObject.get("date") +" "+ jsonObject.get("time");
			Date datetime = utils.dtf_S_D(datetimeString);
			String lat = (String) jsonObject.get("lat");
			String lon = (String) jsonObject.get("lon");
			Gps attendance = new Gps(zipname, macid, datetime, lat, lon);
			list.add(attendance);
			}
		return list;
	}
	
	public static List<Record> RecordJson(String zipname,String path){
		List<Record> list = new ArrayList<Record>();
		String recordJson = ReadJsonFile(path);
		System.out.println(recordJson);
		JSONArray jsonArray = JSONArray.fromObject(recordJson);
		int size = jsonArray.size();
		System.out.println("recordJsonSize: " + size);
		for(int  i = 0; i < size; i++){
			JSONObject jsonObject = jsonArray.getJSONObject(i);
			String macid = (String) jsonObject.get("id");
			String datetimeString = jsonObject.get("date") +" "+ jsonObject.get("time");
			Date datetime = utils.dtf_S_D(datetimeString);
			String classify = (String) jsonObject.get("classString");
			String item = (String) jsonObject.get("item");
			String position1 =  (String) jsonObject.get("position1");
			String position2 = (String) jsonObject.get("position2");
			String position3 =(String) jsonObject.get("position3");
			String defect =  (String) jsonObject.get("defect");
			String data = (String) jsonObject.get("data");
			String img1 = (String) jsonObject.get("img1");
			String img2 = (String) jsonObject.get("img2");
			String img3 = (String) jsonObject.get("img3");
			String img4 = (String) jsonObject.get("img4");
			String img5 = (String) jsonObject.get("img5");
			String img6 = (String) jsonObject.get("img6");
			Record record = new Record(zipname, macid, datetime, classify, item, position1,
					position2, position3, defect, data, img1, img2, img3, img4, img5, img6);
			list.add(record);
			}
		return list;
	}
	
	public static List<Scan> ScanJson(String zipname,String path){
		List<Scan> list = new ArrayList<Scan>();
		String scanJson = ReadJsonFile(path);
		System.out.println(scanJson);
		JSONArray jsonArray = JSONArray.fromObject(scanJson);
		int size = jsonArray.size();
		System.out.println("scanJsonSize: " + size);
		for(int  i = 0; i < size; i++){
			JSONObject jsonObject = jsonArray.getJSONObject(i);
			String macid = (String) jsonObject.get("id");
			String datetimeString = jsonObject.get("date") +" "+ jsonObject.get("time");
			Date datetime = utils.dtf_S_D(datetimeString);
			String position = (String) jsonObject.get("position");
			Scan scan = new Scan(zipname, macid, datetime, position);
			list.add(scan);
			}
		return list;
	}
	
}
