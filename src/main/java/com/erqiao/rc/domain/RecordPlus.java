package com.erqiao.rc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="recordplus_rc")
public class RecordPlus {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String zipname;
	private String macid;
	private String repair;
	private String ensure;
	private String other;
	
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
	public String getRepair() {
		return repair;
	}
	public void setRepair(String repair) {
		this.repair = repair;
	}
	public String getEnsure() {
		return ensure;
	}
	public void setEnsure(String ensure) {
		this.ensure = ensure;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	
	public String getMacid() {
		return macid;
	}
	public void setMacid(String macid) {
		this.macid = macid;
	}
	public RecordPlus() {
		super();
	}
	
	
}
