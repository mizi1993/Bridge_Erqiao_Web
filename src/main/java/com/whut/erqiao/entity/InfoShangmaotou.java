package com.whut.erqiao.entity;

import java.io.Serializable;

public class InfoShangmaotou implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String time;
	private String date;
	private String position;
	private String hougai_level;
	private String hougaiDes;
	private String hougaiJson;
	private String yaban_level;
	private String yabanJson;
	private String yabanDes;
	private String dianban_level;
	private String dianbanJson;
	private String dianbanDes;
	private String luoshuan_level;
	private String luoshuanJson;
	private String luoshuanDes;
	private String maokuaitong_level;
	private String maokuaitongJson;
	private String maokuaitongDes;
	private String maotou_level;
	private String maotouJson;
	private String maotouDes;
	private String dianpian_level;
	private String dianpianJson;
	private String dianpianDes;
	private String jianzhenqi_level;
	private String jianzhenqiJson;
	private String jianzhenqiDes;
	private String xiekuai_level;
	private String xiekuaiJson;
	private String xiekuaiDes;
	private String danggai_level;
	private String danggaiJson;
	private String danggaiDes;
	private String hutao_level;
	private String hutaoJson;
	private String hutaoDes;
	private String maoguqu_level;
	private String maoguquJson;
	private String maoguquDes;
	private Task task;
	public InfoShangmaotou() {
		
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
	public String getHougaiJson() {
		return hougaiJson;
	}
	public void setHougaiJson(String hougaiJson) {
		this.hougaiJson = hougaiJson;
	}
	public String getYabanJson() {
		return yabanJson;
	}
	public void setYabanJson(String yabanJson) {
		this.yabanJson = yabanJson;
	}
	public String getDianbanJson() {
		return dianbanJson;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setDianbanJson(String dianbanJson) {
		this.dianbanJson = dianbanJson;
	}
	public String getLuoshuanJson() {
		return luoshuanJson;
	}
	public void setLuoshuanJson(String luoshuanJson) {
		this.luoshuanJson = luoshuanJson;
	}
	public String getMaokuaitongJson() {
		return maokuaitongJson;
	}
	public void setMaokuaitongJson(String maokuaitongJson) {
		this.maokuaitongJson = maokuaitongJson;
	}
	
	public String getMaotouJson() {
		return maotouJson;
	}
	public void setMaotouJson(String maotouJson) {
		this.maotouJson = maotouJson;
	}
	public String getDianpianJson() {
		return dianpianJson;
	}
	public void setDianpianJson(String dianpianJson) {
		this.dianpianJson = dianpianJson;
	}
	public String getJianzhenqiJson() {
		return jianzhenqiJson;
	}
	public void setJianzhenqiJson(String jianzhenqiJson) {
		this.jianzhenqiJson = jianzhenqiJson;
	}
	public String getXiekuaiJson() {
		return xiekuaiJson;
	}
	public void setXiekuaiJson(String xiekuaiJson) {
		this.xiekuaiJson = xiekuaiJson;
	}
	public String getDanggaiJson() {
		return danggaiJson;
	}
	public void setDanggaiJson(String danggaiJson) {
		this.danggaiJson = danggaiJson;
	}
	public String getHutaoJson() {
		return hutaoJson;
	}
	public void setHutaoJson(String hutaoJson) {
		this.hutaoJson = hutaoJson;
	}
	public String getMaoguquJson() {
		return maoguquJson;
	}
	public void setMaoguquJson(String maoguquJson) {
		this.maoguquJson = maoguquJson;
	}
	public String getHougaiDes() {
		return hougaiDes;
	}
	public void setHougaiDes(String hougaiDes) {
		this.hougaiDes = hougaiDes;
	}
	public String getYabanDes() {
		return yabanDes;
	}
	public void setYabanDes(String yabanDes) {
		this.yabanDes = yabanDes;
	}
	public String getDianbanDes() {
		return dianbanDes;
	}
	public void setDianbanDes(String dianbanDes) {
		this.dianbanDes = dianbanDes;
	}
	public String getLuoshuanDes() {
		return luoshuanDes;
	}
	public void setLuoshuanDes(String luoshuanDes) {
		this.luoshuanDes = luoshuanDes;
	}
	public String getMaokuaitongDes() {
		return maokuaitongDes;
	}
	public void setMaokuaitongDes(String maokuaitongDes) {
		this.maokuaitongDes = maokuaitongDes;
	}
	public String getMaotouDes() {
		return maotouDes;
	}
	public void setMaotouDes(String maotouDes) {
		this.maotouDes = maotouDes;
	}
	public String getDianpianDes() {
		return dianpianDes;
	}
	public void setDianpianDes(String dianpianDes) {
		this.dianpianDes = dianpianDes;
	}
	public String getJianzhenqiDes() {
		return jianzhenqiDes;
	}
	public void setJianzhenqiDes(String jianzhenqiDes) {
		this.jianzhenqiDes = jianzhenqiDes;
	}
	public String getXiekuaiDes() {
		return xiekuaiDes;
	}
	public void setXiekuaiDes(String xiekuaiDes) {
		this.xiekuaiDes = xiekuaiDes;
	}
	public String getDanggaiDes() {
		return danggaiDes;
	}
	public void setDanggaiDes(String danggaiDes) {
		this.danggaiDes = danggaiDes;
	}
	public String getHutaoDes() {
		return hutaoDes;
	}
	public void setHutaoDes(String hutaoDes) {
		this.hutaoDes = hutaoDes;
	}
	public String getMaoguquDes() {
		return maoguquDes;
	}
	public void setMaoguquDes(String maoguquDes) {
		this.maoguquDes = maoguquDes;
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public String getHougai_level() {
		return hougai_level;
	}
	public void setHougai_level(String hougai_level) {
		this.hougai_level = hougai_level;
	}
	public String getYaban_level() {
		return yaban_level;
	}
	public void setYaban_level(String yaban_level) {
		this.yaban_level = yaban_level;
	}
	public String getDianban_level() {
		return dianban_level;
	}
	public void setDianban_level(String dianban_level) {
		this.dianban_level = dianban_level;
	}
	public String getLuoshuan_level() {
		return luoshuan_level;
	}
	public void setLuoshuan_level(String luoshuan_level) {
		this.luoshuan_level = luoshuan_level;
	}
	public String getMaokuaitong_level() {
		return maokuaitong_level;
	}
	public void setMaokuaitong_level(String maokuaitong_level) {
		this.maokuaitong_level = maokuaitong_level;
	}
	public String getMaotou_level() {
		return maotou_level;
	}
	public void setMaotou_level(String maotou_level) {
		this.maotou_level = maotou_level;
	}
	public String getDianpian_level() {
		return dianpian_level;
	}
	public void setDianpian_level(String dianpian_level) {
		this.dianpian_level = dianpian_level;
	}
	public String getJianzhenqi_level() {
		return jianzhenqi_level;
	}
	public void setJianzhenqi_level(String jianzhenqi_level) {
		this.jianzhenqi_level = jianzhenqi_level;
	}
	public String getXiekuai_level() {
		return xiekuai_level;
	}
	public void setXiekuai_level(String xiekuai_level) {
		this.xiekuai_level = xiekuai_level;
	}
	public String getDanggai_level() {
		return danggai_level;
	}
	public void setDanggai_level(String danggai_level) {
		this.danggai_level = danggai_level;
	}
	public String getHutao_level() {
		return hutao_level;
	}
	public void setHutao_level(String hutao_level) {
		this.hutao_level = hutao_level;
	}
	public String getMaoguqu_level() {
		return maoguqu_level;
	}
	public void setMaoguqu_level(String maoguqu_level) {
		this.maoguqu_level = maoguqu_level;
	}
	
	
}
