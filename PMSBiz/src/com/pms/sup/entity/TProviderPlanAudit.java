package com.pms.sup.entity;

import java.util.Date;

public class TProviderPlanAudit {
	private int aid;
	private String planid;
	private Date aDate;
	private String ainfo;
	private String aorg;
	private int isagree;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
	public Date getaDate() {
		return aDate;
	}
	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}
	public String getAinfo() {
		return ainfo;
	}
	public void setAinfo(String ainfo) {
		this.ainfo = ainfo;
	}
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public int getIsagree() {
		return isagree;
	}
	public void setIsagree(int isagree) {
		this.isagree = isagree;
	}
	
	
}
