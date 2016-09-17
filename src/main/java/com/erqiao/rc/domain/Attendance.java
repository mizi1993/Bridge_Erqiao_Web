package com.erqiao.rc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="attendance_rc")
public class Attendance {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String zipname;
	private String macid;
	private Date datetime;
	@Transient
	private String dateString;
	private String updown;
	private String staff;
	private String weather;
	private String temp;
	private String hum;
	private String img;
	private String detail;
	private String sign;
	private String sign_img;
	private String sign_time;
	private String repair_id;
	private String repair_state;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getZipname() {
		return zipname;
	}
	public void setZipname(String zipname) {
		this.zipname = zipname;
	}
	public String getMacid() {
		return macid;
	}
	public void setMacid(String macid) {
		this.macid = macid;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public String getUpdown() {
		return updown;
	}
	public void setUpdown(String updown) {
		this.updown = updown;
	}
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getHum() {
		return hum;
	}
	public void setHum(String hum) {
		this.hum = hum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getSign_img() {
		return sign_img;
	}
	public void setSign_img(String sign_img) {
		this.sign_img = sign_img;
	}
	public String getSign_time() {
		return sign_time;
	}
	public void setSign_time(String sign_time) {
		this.sign_time = sign_time;
	}
	public String getRepair_id() {
		return repair_id;
	}
	public void setRepair_id(String repair_id) {
		this.repair_id = repair_id;
	}
	public String getRepair_state() {
		return repair_state;
	}
	public void setRepair_state(String repair_state) {
		this.repair_state = repair_state;
	}
	public String getDateString() {
		return dateString;
	}
	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
	public Attendance(int id, Date datetime) {
		super();
		this.id = id;
		this.datetime = datetime;
	}
	
	public Attendance(String zipname, String macid, Date datetime,
			String updown, String staff, String weather, String temp,
			String hum, String img, String detail) {
		super();
		
		this.zipname = zipname;
		this.macid = macid;
		this.datetime = datetime;
		this.updown = updown;
		this.staff = staff;
		this.weather = weather;
		this.temp = temp;
		this.hum = hum;
		this.img = img;
		this.detail = detail;
	}
	public Attendance() {
		super();
	}
	
	
}
