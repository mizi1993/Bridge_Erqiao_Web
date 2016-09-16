package com.whut.erqiao.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Task implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long id;
	private String mac_id;
	private String name;
	private String date;
	private String temp;
	private String staff;
	private String nextDate;
	private String infoName;
	private Set<InfoShensuofeng> infoShensuofeng=new HashSet<InfoShensuofeng>();
	private Set<InfoGanghengliang> infoGanghengliang=new HashSet<InfoGanghengliang>();
	private Set<InfoGangxiangliang> infoGangxiangliang=new HashSet<InfoGangxiangliang>();
	private Set<InfoLiefeng> infoLiefeng=new HashSet<InfoLiefeng>();
	private Set<InfoShangmaotou> infoShangmaotou=new HashSet<InfoShangmaotou>();
	private Set<InfoTuxiangliang> infoTuxiangliang=new HashSet<InfoTuxiangliang>();
    private Set<InfoZhizuo> infoZhizuo=new HashSet<InfoZhizuo>();
    private Set<InfoXiamaotouUp> infoXiamaotouUp=new HashSet<InfoXiamaotouUp>();
    private Set<InfoXiamaotouDown> infoXiamaotouDown=new HashSet<InfoXiamaotouDown>();
    private Set<InfoXielasuo> infoXielasuo=new HashSet<InfoXielasuo>();
    private Set<InfoTazhu> infoTazhu=new HashSet<InfoTazhu>();
    private Set<InfoHupo> infoHupo=new HashSet<InfoHupo>();
    private Set<InfoYuyingli> infoYuyingli=new HashSet<InfoYuyingli>();
    private Set<InfoMaogukuai> infoMaogukuai=new HashSet<InfoMaogukuai>();
    
	public Task() {
		
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMac_id() {
		return mac_id;
	}
	public void setMac_id(String mac_id) {
		this.mac_id = mac_id;
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
	public String getTemp() {
		return temp;
	}
	public void setTemp(String temp) {
		this.temp = temp;
	}
	public String getStaff() {
		return staff;
	}
	public void setStaff(String staff) {
		this.staff = staff;
	}
	public String getNextDate() {
		return nextDate;
	}
	public void setNextDate(String nextDate) {
		this.nextDate = nextDate;
	}
	public Set<InfoShensuofeng> getInfoShensuofeng() {
		return infoShensuofeng;
	}
	public void setInfoShensuofeng(Set<InfoShensuofeng> infoShensuofeng) {
		this.infoShensuofeng = infoShensuofeng;
	}
	public Set<InfoGanghengliang> getInfoGanghengliang() {
		return infoGanghengliang;
	}
	public void setInfoGanghengliang(Set<InfoGanghengliang> infoGanghengliang) {
		this.infoGanghengliang = infoGanghengliang;
	}
	public Set<InfoGangxiangliang> getInfoGangxiangliang() {
		return infoGangxiangliang;
	}
	public void setInfoGangxiangliang(Set<InfoGangxiangliang> infoGangxiangliang) {
		this.infoGangxiangliang = infoGangxiangliang;
	}
	public Set<InfoLiefeng> getInfoLiefeng() {
		return infoLiefeng;
	}
	public void setInfoLiefeng(Set<InfoLiefeng> infoLiefeng) {
		this.infoLiefeng = infoLiefeng;
	}
	public Set<InfoShangmaotou> getInfoShangmaotou() {
		return infoShangmaotou;
	}
	public void setInfoShangmaotou(Set<InfoShangmaotou> infoShangmaotou) {
		this.infoShangmaotou = infoShangmaotou;
	}
	public Set<InfoTuxiangliang> getInfoTuxiangliang() {
		return infoTuxiangliang;
	}
	public void setInfoTuxiangliang(Set<InfoTuxiangliang> infoTuxiangliang) {
		this.infoTuxiangliang = infoTuxiangliang;
	}
	public Set<InfoZhizuo> getInfoZhizuo() {
		return infoZhizuo;
	}
	public void setInfoZhizuo(Set<InfoZhizuo> infoZhizuo) {
		this.infoZhizuo = infoZhizuo;
	}
	public Set<InfoXiamaotouUp> getInfoXiamaotouUp() {
		return infoXiamaotouUp;
	}
	public void setInfoXiamaotouUp(Set<InfoXiamaotouUp> infoXiamaotouUp) {
		this.infoXiamaotouUp = infoXiamaotouUp;
	}
	public Set<InfoXiamaotouDown> getInfoXiamaotouDown() {
		return infoXiamaotouDown;
	}
	public void setInfoXiamaotouDown(Set<InfoXiamaotouDown> infoXiamaotouDown) {
		this.infoXiamaotouDown = infoXiamaotouDown;
	}
	public Set<InfoXielasuo> getInfoXielasuo() {
		return infoXielasuo;
	}
	public void setInfoXielasuo(Set<InfoXielasuo> infoXielasuo) {
		this.infoXielasuo = infoXielasuo;
	}
	public Set<InfoTazhu> getInfoTazhu() {
		return infoTazhu;
	}
	public void setInfoTazhu(Set<InfoTazhu> infoTazhu) {
		this.infoTazhu = infoTazhu;
	}
	public Set<InfoHupo> getInfoHupo() {
		return infoHupo;
	}
	public void setInfoHupo(Set<InfoHupo> infoHupo) {
		this.infoHupo = infoHupo;
	}
	public Set<InfoYuyingli> getInfoYuyingli() {
		return infoYuyingli;
	}
	public void setInfoYuyingli(Set<InfoYuyingli> infoYuyingli) {
		this.infoYuyingli = infoYuyingli;
	}
	public Set<InfoMaogukuai> getInfoMaogukuai() {
		return infoMaogukuai;
	}
	public void setInfoMaogukuai(Set<InfoMaogukuai> infoMaogukuai) {
		this.infoMaogukuai = infoMaogukuai;
	}
	public String getInfoName() {
		return infoName;
	}
	public void setInfoName(String infoName) {
		this.infoName = infoName;
	}
    
}
