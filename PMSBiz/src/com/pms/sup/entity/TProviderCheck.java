package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商考核方案申请
 * @author 程
 *
 */
public class TProviderCheck {
	
	private String planid;
	private Date applydate;
	private String aorg;
	private String scope;
	private String criterion;
	private Date checkdate;
	private String  ranke;
	private Byte[] plandoc;
	private Byte[] template;
	private String state;
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
/*	public Date getDate() {
		return applydate;
	}
	public void setDate(Date date) {
		this.applydate = date;
	}*/
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public String getCriterion() {
		return criterion;
	}
	public Date getApplydate() {
		return applydate;
	}
	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}
	public String getScope() {
		return scope;
	}
	public void setScope(String scope) {
		this.scope = scope;
	}
	public void setCriterion(String criterion) {
		this.criterion = criterion;
	}
	public Date getCheckdate() {
		return checkdate;
	}
	public void setCheckdate(Date checkdate) {
		this.checkdate = checkdate;
	}
	public String getRanke() {
		return ranke;
	}
	public void setRanke(String ranke) {
		this.ranke = ranke;
	}
	public Byte[] getPlandoc() {
		return plandoc;
	}
	public void setPlandoc(Byte[] plandoc) {
		this.plandoc = plandoc;
	}
	public Byte[] getTemplate() {
		return template;
	}
	public void setTemplate(Byte[] template) {
		this.template = template;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
