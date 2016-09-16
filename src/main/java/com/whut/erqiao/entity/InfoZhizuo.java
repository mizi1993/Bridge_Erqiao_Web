package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoZhizuo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String position;
	private String no;
	private String luoshuan_level;
	private String luoshuanJson;
	private String luoshuanDes;
	private String weiyi_level;
	private String weiyiJson;
	private String weiyiDes;
	private String xiushi_level;
	private String xiushiJson;
	private String xiushiDes;
	private String songdong_level;
	private String songdongJson;
	private String songdongDes;
	private String fangzhenkuaiJson;
	private String fangzhenkuaiDes;
	private String other;
	private Task task;
	
	public InfoZhizuo() {
	
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
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getLuoshuanDes() {
		return luoshuanDes;
	}
	public void setLuoshuanDes(String luoshuanDes) {
		this.luoshuanDes = luoshuanDes;
	}
	public String getWeiyiDes() {
		return weiyiDes;
	}
	public void setWeiyiDes(String weiyiDes) {
		this.weiyiDes = weiyiDes;
	}
	public String getXiushiDes() {
		return xiushiDes;
	}
	public void setXiushiDes(String xiushiDes) {
		this.xiushiDes = xiushiDes;
	}
	public String getSongdongDes() {
		return songdongDes;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setSongdongDes(String songdongDes) {
		this.songdongDes = songdongDes;
	}
	public String getFangzhenkuaiDes() {
		return fangzhenkuaiDes;
	}
	public void setFangzhenkuaiDes(String fangzhenkuaiDes) {
		this.fangzhenkuaiDes = fangzhenkuaiDes;
	}
	public String getLuoshuanJson() {
		return luoshuanJson;
	}
	public void setLuoshuanJson(String luoshuanJson) {
		this.luoshuanJson = luoshuanJson;
	}
	public String getWeiyiJson() {
		return weiyiJson;
	}
	public void setWeiyiJson(String weiyiJson) {
		this.weiyiJson = weiyiJson;
	}
	public String getXiushiJson() {
		return xiushiJson;
	}
	public void setXiushiJson(String xiushiJson) {
		this.xiushiJson = xiushiJson;
	}
	public String getSongdongJson() {
		return songdongJson;
	}
	public void setSongdongJson(String songdongJson) {
		this.songdongJson = songdongJson;
	}
	public String getFangzhenkuaiJson() {
		return fangzhenkuaiJson;
	}
	public void setFangzhenkuaiJson(String fangzhenkuaiJson) {
		this.fangzhenkuaiJson = fangzhenkuaiJson;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public String getLuoshuan_level() {
		return luoshuan_level;
	}
	public void setLuoshuan_level(String luoshuan_level) {
		this.luoshuan_level = luoshuan_level;
	}
	public String getWeiyi_level() {
		return weiyi_level;
	}
	public void setWeiyi_level(String weiyi_level) {
		this.weiyi_level = weiyi_level;
	}
	public String getXiushi_level() {
		return xiushi_level;
	}
	public void setXiushi_level(String xiushi_level) {
		this.xiushi_level = xiushi_level;
	}
	public String getSongdong_level() {
		return songdong_level;
	}
	public void setSongdong_level(String songdong_level) {
		this.songdong_level = songdong_level;
	}
	
}
