package com.pms.sup.entity;

import java.util.Date;

public class TYearMoney {
	private String aid;
	private String pno;
	private Date pdate;
	private double pmoney;
	private String ptype;
	private String empno;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public double getPmoney() {
		return pmoney;
	}
	public void setPmoney(double pmoney) {
		this.pmoney = pmoney;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	
	
}
