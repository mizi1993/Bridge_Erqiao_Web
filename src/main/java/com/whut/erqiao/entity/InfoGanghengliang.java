package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoGanghengliang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String date;
	private String time;//用来区分同一个Task下不同的info。
	private String no;
	private String position;
	private String item;//检查项目.
	private String data;
	private String defect_position;
	private String other;
	private String level;
	private String ganghengliangJson;
//	private Thing genghengliang;
	private Task task;
	public InfoGanghengliang() {
	
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getDefect_position() {
		return defect_position;
	}
	public void setDefect_position(String defect_position) {
		this.defect_position = defect_position;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getGanghengliangJson() {
		return ganghengliangJson;
	}
	public void setGanghengliangJson(String ganghengliangJson) {
		this.ganghengliangJson = ganghengliangJson;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	
	
}
