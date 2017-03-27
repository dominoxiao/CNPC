package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商准入方案
 * @author OuXueting
 *
 */
public class TProviderPlan {

	private String planid;		//方案申请编号
	private Date applydate;		//申请时间
	private String aorg;		//申请机构
	private byte[] plan;		//方案内容
	private String state;		//审批状态
	
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
	public Date getApplydate() {
		return applydate;
	}
	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public byte[] getPlan() {
		return plan;
	}
	public void setPlan(byte[] plan) {
		this.plan = plan;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}
