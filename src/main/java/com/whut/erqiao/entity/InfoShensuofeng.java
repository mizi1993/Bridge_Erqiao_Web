package com.whut.erqiao.entity;

import java.io.Serializable;


public class InfoShensuofeng implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String position;
	private String type;
	private String chijianju;
	private String shensuoliang;
	private String goujian_level;
	private String goujianJson;
	private String goujianDes;
	private String xiangjiaodai_level;
	private String xiangjiaodaiJson;
	private String xiangjiaodaiDes;
	private String shuchi_level;
	private String shuchiJson;
	private String shuchiDes;
	private String duse_level;
	private String duseJson;
	private String duseDes;
	private String fengpingzheng_level;
	private String fengpingzhengJson;
	private String fengpingzhengDes;
	private Task task;
	public InfoShensuofeng() {
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getShensuoliang() {
		return shensuoliang;
	}
	public void setShensuoliang(String shensuoliang) {
		this.shensuoliang = shensuoliang;
	}
	public String getChijianju() {
		return chijianju;
	}
	public void setChijianju(String chijianju) {
		this.chijianju = chijianju;
	}
	
	public String getGoujianDes() {
		return goujianDes;
	}
	public void setGoujianDes(String goujianDes) {
		this.goujianDes = goujianDes;
	}
	public String getXiangjiaodaiDes() {
		return xiangjiaodaiDes;
	}
	public void setXiangjiaodaiDes(String xiangjiaodaiDes) {
		this.xiangjiaodaiDes = xiangjiaodaiDes;
	}
	public String getShuchiDes() {
		return shuchiDes;
	}
	public void setShuchiDes(String shuchiDes) {
		this.shuchiDes = shuchiDes;
	}
	public String getDuseDes() {
		return duseDes;
	}
	public void setDuseDes(String duseDes) {
		this.duseDes = duseDes;
	}
	public String getFengpingzhengDes() {
		return fengpingzhengDes;
	}
	public void setFengpingzhengDes(String fengpingzhengDes) {
		this.fengpingzhengDes = fengpingzhengDes;
	}
	public String getGoujianJson() {
		return goujianJson;
	}
	public void setGoujianJson(String goujianJson) {
		this.goujianJson = goujianJson;
	}
	public String getXiangjiaodaiJson() {
		return xiangjiaodaiJson;
	}
	public void setXiangjiaodaiJson(String xiangjiaodaiJson) {
		this.xiangjiaodaiJson = xiangjiaodaiJson;
	}
	public String getShuchiJson() {
		return shuchiJson;
	}
	public void setShuchiJson(String shuchiJson) {
		this.shuchiJson = shuchiJson;
	}
	public String getDuseJson() {
		return duseJson;
	}
	public void setDuseJson(String duseJson) {
		this.duseJson = duseJson;
	}
	public String getFengpingzhengJson() {
		return fengpingzhengJson;
	}
	public void setFengpingzhengJson(String fengpingzhengJson) {
		this.fengpingzhengJson = fengpingzhengJson;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}

	public String getGoujian_level() {
		return goujian_level;
	}

	public void setGoujian_level(String goujian_level) {
		this.goujian_level = goujian_level;
	}

	public String getXiangjiaodai_level() {
		return xiangjiaodai_level;
	}

	public void setXiangjiaodai_level(String xiangjiaodai_level) {
		this.xiangjiaodai_level = xiangjiaodai_level;
	}

	public String getShuchi_level() {
		return shuchi_level;
	}

	public void setShuchi_level(String shuchi_level) {
		this.shuchi_level = shuchi_level;
	}

	public String getDuse_level() {
		return duse_level;
	}

	public void setDuse_level(String duse_level) {
		this.duse_level = duse_level;
	}

	public String getFengpingzheng_level() {
		return fengpingzheng_level;
	}

	public void setFengpingzheng_level(String fengpingzheng_level) {
		this.fengpingzheng_level = fengpingzheng_level;
	}
	

}
