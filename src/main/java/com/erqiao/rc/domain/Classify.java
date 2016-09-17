package com.erqiao.rc.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="select_classify")
public class Classify {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int classId;
	private String className;
	
	public int getClassId() {
		return classId;
	}
	public void setClassId(int classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Classify() {
		super();
	}
	
	
}
