package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoHupo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String position;
	private String chenjiangDes;
	private String chenjiangJson;
	private String kailie_level;
	private String kailieDes;
	private String kailieJson;
	private String waiyi_level;
	private String waiyiDes;
	private String waiyiJson;
	private String tanta_level;
	private String tantaDes;
	private String tantaJson;
	private Task task;
	public InfoHupo() {
	
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getChenjiangDes() {
		return chenjiangDes;
	}
	public void setChenjiangDes(String chenjiangDes) {
		this.chenjiangDes = chenjiangDes;
	}
	public String getChenjiangJson() {
		return chenjiangJson;
	}
	public void setChenjiangJson(String chenjiangJson) {
		this.chenjiangJson = chenjiangJson;
	}
	public String getKailieDes() {
		return kailieDes;
	}
	public void setKailieDes(String kailieDes) {
		this.kailieDes = kailieDes;
	}
	public String getKailieJson() {
		return kailieJson;
	}
	public void setKailieJson(String kailieJson) {
		this.kailieJson = kailieJson;
	}
	public String getWaiyiDes() {
		return waiyiDes;
	}
	public void setWaiyiDes(String waiyiDes) {
		this.waiyiDes = waiyiDes;
	}
	public String getWaiyiJson() {
		return waiyiJson;
	}
	public void setWaiyiJson(String waiyiJson) {
		this.waiyiJson = waiyiJson;
	}
	public String getTantaDes() {
		return tantaDes;
	}
	public void setTantaDes(String tantaDes) {
		this.tantaDes = tantaDes;
	}
	public String getTantaJson() {
		return tantaJson;
	}
	public void setTantaJson(String tantaJson) {
		this.tantaJson = tantaJson;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}

	public String getKailie_level() {
		return kailie_level;
	}

	public void setKailie_level(String kailie_level) {
		this.kailie_level = kailie_level;
	}

	public String getWaiyi_level() {
		return waiyi_level;
	}

	public void setWaiyi_level(String waiyi_level) {
		this.waiyi_level = waiyi_level;
	}

	public String getTanta_level() {
		return tanta_level;
	}

	public void setTanta_level(String tanta_level) {
		this.tanta_level = tanta_level;
	}

	@Override
	public String toString() {
		return "InfoHupo [id=" + id + ", time=" + time + ", date=" + date
				+ ", position=" + position + ", chenjiangDes=" + chenjiangDes
				+ ", chenjiangJson=" + chenjiangJson + ", kailie_level="
				+ kailie_level + ", kailieDes=" + kailieDes + ", kailieJson="
				+ kailieJson + ", waiyi_level=" + waiyi_level + ", waiyiDes="
				+ waiyiDes + ", waiyiJson=" + waiyiJson + ", tanta_level="
				+ tanta_level + ", tantaDes=" + tantaDes + ", tantaJson="
				+ tantaJson + "]";
	}
	
}
