package com.erqiao.rc.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="scan_rc")
public class Scan {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String zipname;
	private String macid;
	private Date datetime;
	private String position;
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Scan(String zipname, String macid, Date datetime, String position) {
		super();
		this.zipname = zipname;
		this.macid = macid;
		this.datetime = datetime;
		this.position = position;
	}
	public Scan() {
		super();
	}
	
	
	
}
