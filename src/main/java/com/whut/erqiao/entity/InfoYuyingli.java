package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoYuyingli implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String date;
	private String time;
	private String struct;
	private String dun_no;
	private String up_down;
	private String no;
	private String suotiDes;
	private String suotiJson;
	private String maoguduanDes;
	private String maoguduanJson;
	private String tianchongliaoDes;
	private String tianchongliaoJson;
	private String zhuanxiangqiDes;
	private String zhuanxiangqiJson;
	private String jianzhenqiDes;
	private String jianzhenqiJson;
	private String other;
	private Task task;
	
	public InfoYuyingli() {
		
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
	public String getSuotiDes() {
		return suotiDes;
	}
	public void setSuotiDes(String suotiDes) {
		this.suotiDes = suotiDes;
	}
	public String getSuotiJson() {
		return suotiJson;
	}
	public void setSuotiJson(String suotiJson) {
		this.suotiJson = suotiJson;
	}
	public String getMaoguduanDes() {
		return maoguduanDes;
	}
	public void setMaoguduanDes(String maoguduanDes) {
		this.maoguduanDes = maoguduanDes;
	}
	public String getMaoguduanJson() {
		return maoguduanJson;
	}
	public void setMaoguduanJson(String maoguduanJson) {
		this.maoguduanJson = maoguduanJson;
	}
	public String getTianchongliaoDes() {
		return tianchongliaoDes;
	}
	public void setTianchongliaoDes(String tianchongliaoDes) {
		this.tianchongliaoDes = tianchongliaoDes;
	}
	public String getTianchongliaoJson() {
		return tianchongliaoJson;
	}
	public void setTianchongliaoJson(String tianchongliaoJson) {
		this.tianchongliaoJson = tianchongliaoJson;
	}
	public String getZhuanxiangqiDes() {
		return zhuanxiangqiDes;
	}
	public void setZhuanxiangqiDes(String zhuanxiangqiDes) {
		this.zhuanxiangqiDes = zhuanxiangqiDes;
	}
	public String getZhuanxiangqiJson() {
		return zhuanxiangqiJson;
	}
	public void setZhuanxiangqiJson(String zhuanxiangqiJson) {
		this.zhuanxiangqiJson = zhuanxiangqiJson;
	}
	public String getJianzhenqiDes() {
		return jianzhenqiDes;
	}
	public void setJianzhenqiDes(String jianzhenqiDes) {
		this.jianzhenqiDes = jianzhenqiDes;
	}
	public String getJianzhenqiJson() {
		return jianzhenqiJson;
	}
	public void setJianzhenqiJson(String jianzhenqiJson) {
		this.jianzhenqiJson = jianzhenqiJson;
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
