package com.pms.sup.entity;

import java.util.Date;

/**
 * 评级结果审批
 * @author 程
 *
 */
public class TAuditHandleCheck {
	
	private int aid;
	private int aaid;
	private String planid;
	private Date adate;
	private String ainfo;
	private String aorg;
	private int isagree;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getAaid() {
		return aaid;
	}
	public void setAaid(int aaid) {
		this.aaid = aaid;
	}
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
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
