package com.pms.sup.entity;

import java.util.Date;
/**
 * 投诉处理表单
 * @author Zhemin Liu
 *
 */
public class TComplainDeal {
	private String acno;	//投诉编号
	private String person;  //处理人
	private String ainfo;   //处理意见
	private String aorg;    //处理机构
	private String astate;  //处理状态
	private Date adate;     //处理日期
	private String astatus; //审批状态
	
	
	public String getAcno() {
		return acno;
	}
	public void setAcno(String acno) {
		this.acno = acno;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
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
	public String getAstate() {
		return astate;
	}
	public void setAstate(String astate) {
		this.astate = astate;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	public String getAstatus() {
		return astatus;
	}
	public void setAstatus(String astatus) {
		this.astatus = astatus;
	}
	
}
