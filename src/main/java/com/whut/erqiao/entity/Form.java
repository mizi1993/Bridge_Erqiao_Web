package com.whut.erqiao.entity;

import java.io.Serializable;

public class Form implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String name;
	private String infoName;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInfoName() {
		return infoName;
	}
	public void setInfoName(String infoName) {
		this.infoName = infoName;
	}
	
}
