package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商
 * @author Zhemin Liu
 *
 */
public class TProvider {
	private String pno; 		  //供应商编号
	private String pano; 	      //供应商准入申请号
	private String pname;         //供应商名称
	private String certificateno; //供应商准入证编号
	private Date pubDate;         //发证日期
	private Date endDate;         //准入有效截止日期
	private String state;         //状态
	
	private TProviderQualification qualification;   //供应商资质信息
	
	
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCertificateno() {
		return certificateno;
	}
	public void setCertificateno(String certificateno) {
		this.certificateno = certificateno;
	}
	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}

	public TProviderQualification getQualification() {
		return qualification;
	}
	public void setQualification(TProviderQualification qualification) {
		this.qualification = qualification;
	}
	
}
