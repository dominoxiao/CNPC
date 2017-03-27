package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商考核方案审批
 * @author 程
 *
 */
public class TProviderCheckAudit {
	
	private int aid;
	private String planid;
	private Date date;
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
