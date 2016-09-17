package com.erqiao.rc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="specialevent_rc")
public class Special {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String zipname;
	private String macid;
	private Date datetime;
	@Transient
	private String dateString;
	private String position;
	private String events;
	private String detail;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
	private String img7;
	private String img8;
	private String img9;
	private String img10;
	
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getEvents() {
		return events;
	}
	public void setEvents(String events) {
		this.events = events;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public String getImg6() {
		return img6;
	}
	public void setImg6(String img6) {
		this.img6 = img6;
	}
	public String getImg7() {
		return img7;
	}
	public void setImg7(String img7) {
		this.img7 = img7;
	}
	public String getImg8() {
		return img8;
	}
	public void setImg8(String img8) {
		this.img8 = img8;
	}
	public String getImg9() {
		return img9;
	}
	public void setImg9(String img9) {
		this.img9 = img9;
	}
	public String getImg10() {
		return img10;
	}
	public void setImg10(String img10) {
		this.img10 = img10;
	}
	
	public Special() {
		super();
	}
	public Special(int id, Date datetime) {
		super();
		this.id = id;
		this.datetime = datetime;
	}
	public Date getDatetime() {
		return datetime;
	}
	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	public String getDateString() {
		return dateString;
	}
	public void setDateString(String dateString) {
		this.dateString = dateString;
	}
	
	public String[] getImgs() {
		String[] imgs = {img1,img2,img3,img4,img5,img6,img7,img8,img9,img10};
		return imgs;
	}
	
	public void setImgs(String[] s) {
		img1 = s[0];
		img2 = s[1];
		img3 = s[2];
		img4 = s[3];
		img5 = s[4];
		img6 = s[5];
		img7 = s[6];
		img8 = s[7];
		img9 = s[8];
		img10 = s[9];
	}
	
}