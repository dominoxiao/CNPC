package com.pms.sup.entity;

import java.util.Date;
/**
 * 供应商准入申请表
 * @author hp
 *
 */
public class TProviderApply {

	private String pano;	//供应商准入申请号
	private String planid;  //方案申请编号
	private String pname;   //供应商名称
	private String ptype;	//供应商类型
	private String ptype2;	//供应商类型2
	private double amount;	//账户金额
	private String ranke;	//供应商等级
	private String gsRegno; //工商注册号
	private String taxguo;  //国税登记证号
	private String taxdi;   //地税登记证号
	private String orgcode; //组织机构代码
	private String agent;   //法定代表人
	private String address; //地址
	private String pfrom;   //供应商来源
	private Date applyDate; //申请时间
	private String state;   //审批状态
	private String applyarea;//申请区域
	public String getApplyarea() {
		return applyarea;
	}
	public void setApplyarea(String applyarea) {
		this.applyarea = applyarea;
	}
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getPtype2() {
		return ptype2;
	}
	public void setPtype2(String ptype2) {
		this.ptype2 = ptype2;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getRanke() {
		return ranke;
	}
	public void setRanke(String ranke) {
		this.ranke = ranke;
	}
	public String getGsRegno() {
		return gsRegno;
	}
	public void setGsRegno(String gsRegno) {
		this.gsRegno = gsRegno;
	}
	public String getTaxguo() {
		return taxguo;
	}
	public void setTaxguo(String taxguo) {
		this.taxguo = taxguo;
	}
	public String getTaxdi() {
		return taxdi;
	}
	public void setTaxdi(String taxdi) {
		this.taxdi = taxdi;
	}
	public String getOrgcode() {
		return orgcode;
	}
	public void setOrgcode(String orgcode) {
		this.orgcode = orgcode;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPfrom() {
		return pfrom;
	}
	public void setPfrom(String pfrom) {
		this.pfrom = pfrom;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
