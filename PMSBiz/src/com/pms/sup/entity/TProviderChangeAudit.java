package com.pms.sup.entity;

import java.util.Date;

public class TProviderChangeAudit {
	private String aid;
	private String applyno;
	private Date adate;
	private String ainfo;
	private String person;
	private String aorg;
	private Integer isagree;
	private Integer synchro;
	
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getApplyno() {
		return applyno;
	}
	public void setApplyno(String applyno) {
		this.applyno = applyno;
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
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public Integer getIsagree() {
		return isagree;
	}
	public void setIsagree(Integer isagree) {
		this.isagree = isagree;
	}
	public Integer getSynchro() {
		return synchro;
	}
	public void setSynchro(Integer synchro) {
		this.synchro = synchro;
	}
	
	
	

}
