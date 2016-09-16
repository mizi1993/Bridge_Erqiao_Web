package com.whut.erqiao.entity;

import java.io.Serializable;

public class Project implements Serializable{//完成项目录入和项目评定的类。
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String area;//桥区.
	private String position;//部位。
	private String parts;//部件
	private Double grade;//评分及等级。
	private String date;//评定日期
	private int isDone;//是否完成评定。0为未完成,1为完成。
	public Project(){
		
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getParts() {
		return parts;
	}
	public void setParts(String parts) {
		this.parts = parts;
	}
	public Double getGrade() {
		return grade;
	}
	public void setGrade(Double grade) {
		this.grade = grade;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getIsDone() {
		return isDone;
	}
	public void setIsDone(int isDone) {
		this.isDone = isDone;
	}
	
}
