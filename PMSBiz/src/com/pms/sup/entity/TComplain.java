package com.pms.sup.entity;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class TComplain {
	private String acno;
	private String pno;
	private String title;
	private Date adate;
	private String detail;
	private String unit;
	private String org;
	private String name;
	private String tel;
	private String email;
	private String united;
	private String orged;
	private String named;
	private String reason;
	private String explain;
	private byte[] attachment;
	private TComplainDeal complainDeal;
	private MultipartFile[] sourceFile;
	
	public MultipartFile[] getSourceFile() {
		return sourceFile;
	}
	public void setSourceFile(MultipartFile[] sourceFile) {
		this.sourceFile = sourceFile;
	}

	public TComplainDeal getComplainDeal() {
		return complainDeal;
	}
	public void setComplainDeal(TComplainDeal complainDeal) {
		this.complainDeal = complainDeal;
	}
	public String getAcno() {
		return acno;
	}
	public void setAcno(String acno) {
		this.acno = acno;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getOrg() {
		return org;
	}
	public void setOrg(String org) {
		this.org = org;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUnited() {
		return united;
	}
	public void setUnited(String united) {
		this.united = united;
	}
	public String getOrged() {
		return orged;
	}
	public void setOrged(String orged) {
		this.orged = orged;
	}
	public String getNamed() {
		return named;
	}
	public void setNamed(String named) {
		this.named = named;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public byte[] getAttachment() {
		return attachment;
	}
	public void setAttachment(byte[] attachment) {
		this.attachment = attachment;
	}
	

}
