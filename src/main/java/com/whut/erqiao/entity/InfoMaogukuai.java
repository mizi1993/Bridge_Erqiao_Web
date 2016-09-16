package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoMaogukuai implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String date;
	private String time;
	private String struct;
	private String type;
	private String dun_no;
	private String up_down;
	private String no;
	private String diaoqiDes;
	private String diaoqiJson;
	private String bianxingDes;
	private String bianxingJson;
	private String hunningtuDes;
	private String hunningtuJson;
	private String maoshuanDes;
	private String maoshuanJson;
	private String jiaocengDes;
	private String jiaocengJson;
	private String other;
	private Task task;
	public InfoMaogukuai() {
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
	public String getStruct() {
		return struct;
	}
	public void setStruct(String struct) {
		this.struct = struct;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDun_no() {
		return dun_no;
	}
	public void setDun_no(String dun_no) {
		this.dun_no = dun_no;
	}
	public String getUp_down() {
		return up_down;
	}
	public void setUp_down(String up_down) {
		this.up_down = up_down;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getDiaoqiDes() {
		return diaoqiDes;
	}
	public void setDiaoqiDes(String diaoqiDes) {
		this.diaoqiDes = diaoqiDes;
	}
	public String getDiaoqiJson() {
		return diaoqiJson;
	}
	public void setDiaoqiJson(String diaoqiJson) {
		this.diaoqiJson = diaoqiJson;
	}
	public String getBianxingDes() {
		return bianxingDes;
	}
	public void setBianxingDes(String bianxingDes) {
		this.bianxingDes = bianxingDes;
	}
	public String getBianxingJson() {
		return bianxingJson;
	}
	public void setBianxingJson(String bianxingJson) {
		this.bianxingJson = bianxingJson;
	}
	public String getHunningtuDes() {
		return hunningtuDes;
	}
	public void setHunningtuDes(String hunningtuDes) {
		this.hunningtuDes = hunningtuDes;
	}
	public String getHunningtuJson() {
		return hunningtuJson;
	}
	public void setHunningtuJson(String hunningtuJson) {
		this.hunningtuJson = hunningtuJson;
	}
	public String getMaoshuanDes() {
		return maoshuanDes;
	}
	public void setMaoshuanDes(String maoshuanDes) {
		this.maoshuanDes = maoshuanDes;
	}
	public String getMaoshuanJson() {
		return maoshuanJson;
	}
	public void setMaoshuanJson(String maoshuanJson) {
		this.maoshuanJson = maoshuanJson;
	}
	public String getJiaocengDes() {
		return jiaocengDes;
	}
	public void setJiaocengDes(String jiaocengDes) {
		this.jiaocengDes = jiaocengDes;
	}
	public String getJiaocengJson() {
		return jiaocengJson;
	}
	public void setJiaocengJson(String jiaocengJson) {
		this.jiaocengJson = jiaocengJson;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	
}
