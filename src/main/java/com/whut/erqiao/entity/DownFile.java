package com.whut.erqiao.entity;

import java.io.Serializable;

public class DownFile implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String name;
	private String date;
	private String size;
	private int type;//区分记录表（0）和评定表（1）。

	public DownFile() {

	}
	

	public DownFile(String name, String date, String size, int type) {
		super();
		this.name = name;
		this.date = date;
		this.size = size;
		this.type = type;
	}


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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "DownFile [id=" + id + ", name=" + name + ", date=" + date
				+ ", size=" + size + ", type=" + type + "]";
	}
	
}
