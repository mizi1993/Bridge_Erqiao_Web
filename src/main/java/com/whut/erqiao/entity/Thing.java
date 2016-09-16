package com.whut.erqiao.entity;

import java.io.Serializable;

public class Thing implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String level;//缺损级别.
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String img6;
    public Thing(){
    	
    }

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public String getImg6() {
		return img6;
	}
	public void setImg6(String img6) {
		this.img6 = img6;
	}
	@Override
	public String toString() {
		return "Thing [id=" + id  + ", level="
				+ level + ", img1=" + img1 + ", img2=" + img2 + ", img3="
				+ img3 + ", img4=" + img4 + ", img5=" + img5 + ", img6=" + img6
				+ "]";
	}
	
	
}
