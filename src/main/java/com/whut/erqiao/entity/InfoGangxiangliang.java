package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoGangxiangliang implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String no;
	private String position;
	private String item;//检查项目.
	private String data;
	private String defect_position;
	private String other;
	private String level;
	private String gangxiangliangJson;
	private Task task;
	
	public InfoGangxiangliang() {

	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public String getGangxiangliangJson() {
		return gangxiangliangJson;
	}
	public void setGangxiangliangJson(String gangxiangliangJson) {
		this.gangxiangliangJson = gangxiangliangJson;
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
