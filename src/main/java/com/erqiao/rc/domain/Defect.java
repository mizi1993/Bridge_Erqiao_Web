package com.erqiao.rc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="select_defect")
public class Defect {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int defectId;
	private String defectName;
	private int itemId;
	
	public int getDefectId() {
		return defectId;
	}
	public void setDefectId(int defectId) {
		this.defectId = defectId;
	}
	public String getDefectName() {
		return defectName;
	}
	public void setDefectName(String defectName) {
		this.defectName = defectName;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public Defect() {
		super();
	}
	
	
}
