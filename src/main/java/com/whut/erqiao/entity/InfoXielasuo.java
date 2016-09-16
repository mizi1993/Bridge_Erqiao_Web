package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoXielasuo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String date;
	private String time;
	private String position;
	private String jianzhenqi_level;
	private String jianzhenqiDes;
	private String jianzhenqiJson;
	private String cuoweiDes;
	private String cuoweiJson;
	private String hutao_level;
	private String hutaoDes;
	private String hutaoJson;
	private String suojiaDes;
	private String suojiaJson;
	private String rest_level;
	private String restDes;
	private String restJson;
	private String other;
	private Task task;
	
	public InfoXielasuo() {
		
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
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
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
	public String getCuoweiDes() {
		return cuoweiDes;
	}
	public void setCuoweiDes(String cuoweiDes) {
		this.cuoweiDes = cuoweiDes;
	}
	public String getCuoweiJson() {
		return cuoweiJson;
	}
	public void setCuoweiJson(String cuoweiJson) {
		this.cuoweiJson = cuoweiJson;
	}
	public String getHutaoDes() {
		return hutaoDes;
	}
	public void setHutaoDes(String hutaoDes) {
		this.hutaoDes = hutaoDes;
	}
	public String getHutaoJson() {
		return hutaoJson;
	}
	public void setHutaoJson(String hutaoJson) {
		this.hutaoJson = hutaoJson;
	}
	public String getSuojiaDes() {
		return suojiaDes;
	}
	public void setSuojiaDes(String suojiaDes) {
		this.suojiaDes = suojiaDes;
	}
	public String getSuojiaJson() {
		return suojiaJson;
	}
	public void setSuojiaJson(String suojiaJson) {
		this.suojiaJson = suojiaJson;
	}
	public String getRestDes() {
		return restDes;
	}
	public void setRestDes(String restDes) {
		this.restDes = restDes;
	}
	public String getRestJson() {
		return restJson;
	}
	public void setRestJson(String restJson) {
		this.restJson = restJson;
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
	public String getJianzhenqi_level() {
		return jianzhenqi_level;
	}
	public void setJianzhenqi_level(String jianzhenqi_level) {
		this.jianzhenqi_level = jianzhenqi_level;
	}
	public String getHutao_level() {
		return hutao_level;
	}
	public void setHutao_level(String hutao_level) {
		this.hutao_level = hutao_level;
	}
	public String getRest_level() {
		return rest_level;
	}
	public void setRest_level(String rest_level) {
		this.rest_level = rest_level;
	}
	
}
