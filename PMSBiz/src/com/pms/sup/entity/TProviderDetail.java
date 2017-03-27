package com.pms.sup.entity;

/**
 * 供应商详细信息表
 * @author hp
 *
 */
public class TProviderDetail {
	
	private String pano;		//供应商准入申请号
	private String country;		//国家
	private String paddress;	//地址
	private String details;		//详细地址
	private String zipcode;		//邮编
	private String bizscope;	//经营范围
	private String qm;			//质量管理体系认证
	private String qmOrg;		//质量体系的发证机构
	private String qc;			//产品质量认证
	private String qcOrg;		//质量认证的发证机构
	private String mlan;		//生产/制造许可证获证情况及编号
	private String awards;		//获奖情况
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPaddress() {
		return paddress;
	}
	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getBizscope() {
		return bizscope;
	}
	public void setBizscope(String bizscope) {
		this.bizscope = bizscope;
	}
	public String getQm() {
		return qm;
	}
	public void setQm(String qm) {
		this.qm = qm;
	}
	public String getQmOrg() {
		return qmOrg;
	}
	public void setQmOrg(String qmOrg) {
		this.qmOrg = qmOrg;
	}
	public String getQc() {
		return qc;
	}
	public void setQc(String qc) {
		this.qc = qc;
	}
	public String getQcOrg() {
		return qcOrg;
	}
	public void setQcOrg(String qcOrg) {
		this.qcOrg = qcOrg;
	}
	public String getMlan() {
		return mlan;
	}
	public void setMlan(String mlan) {
		this.mlan = mlan;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	
}
