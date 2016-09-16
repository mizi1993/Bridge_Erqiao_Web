package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoTuxiangliang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String position;
	private String defect_position;
	private String defect;
	private String advice;
	private String data;//综合描述。
	private String level;
	private String tuxiangliangJson;
	private Task task;
	
	public InfoTuxiangliang() {
	
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDefect_position() {
		return defect_position;
	}
	public void setDefect_position(String defect_position) {
		this.defect_position = defect_position;
	}
	public String getDefect() {
		return defect;
	}
	public void setDefect(String defect) {
		this.defect = defect;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTuxiangliangJson() {
		return tuxiangliangJson;
	}
	public void setTuxiangliangJson(String tuxiangliangJson) {
		this.tuxiangliangJson = tuxiangliangJson;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
