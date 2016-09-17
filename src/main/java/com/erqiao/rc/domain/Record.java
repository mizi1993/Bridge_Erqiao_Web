package com.erqiao.rc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="record_rc")
public class Record {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String zipname;
	private String macid;
	private Date datetime;
	private String classify;
	private String item;
	private String position1;
	private String position2;
	private String position3;
	private String defect;
	private String data;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
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
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getPosition1() {
		return position1;
	}
	public void setPosition1(String position1) {
		this.position1 = position1;
	}
	public String getPosition2() {
		return position2;
	}
	public void setPosition2(String position2) {
		this.position2 = position2;
	}
	public String getPosition3() {
		return position3;
	}
	public void setPosition3(String position3) {
		this.position3 = position3;
	}
	public String getDefect() {
		return defect;
	}
	public void setDefect(String defect) {
		this.defect = defect;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
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
	public Record() {
		super();
	}
	
	public Record(String zipname, String macid, Date datetime, String classify,
			String item, String position1, String position2, String position3,
			String defect, String data, String img1, String img2, String img3,
			String img4, String img5, String img6) {
		super();
		this.zipname = zipname;
		this.macid = macid;
		this.datetime = datetime;
		this.classify = classify;
		this.item = item;
		this.position1 = position1;
		this.position2 = position2;
		this.position3 = position3;
		this.defect = defect;
		this.data = data;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.img6 = img6;
	}
	
	public String[] getImgs() {
		String[] imgs = {img1,img2,img3,img4,img5,img6};
		return imgs;
	}
	
	public void setImgs(String[] s) {
		img1 = s[0];
		img2 = s[1];
		img3 = s[2];
		img4 = s[3];
		img5 = s[4];
		img6 = s[5];
	}
}
