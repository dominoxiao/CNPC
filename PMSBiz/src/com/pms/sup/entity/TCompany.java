package com.pms.sup.entity;

import java.util.Date;

/**
 * 所属公司情况
 * @author hp
 *
 */
public class TCompany {
	
	private String pano;		//供应商准入申请号
	private String fname;		//法人代表姓名
	private String ctype;		//公司类型
	private String hytype;		//行业类别
	private String bigtype;		//所属大类
	private String zczb;		//注册资本
	private Date begindate;		//成立时间
	private String bank;		//开户银行
	private String bankno;		//银行账号
	private String creditLevel;	//银行信用等级
	private String tel;			//公司电话
	private String fax;			//传真
	private String address; 	//公司网址
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getHytype() {
		return hytype;
	}
	public void setHytype(String hytype) {
		this.hytype = hytype;
	}
	public String getBigtype() {
		return bigtype;
	}
	public void setBigtype(String bigtype) {
		this.bigtype = bigtype;
	}
	public String getZczb() {
		return zczb;
	}
	public void setZczb(String zczb) {
		this.zczb = zczb;
	}
	public Date getBegindate() {
		return begindate;
	}
	public void setBegindate(Date begindate) {
		this.begindate = begindate;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getBankno() {
		return bankno;
	}
	public void setBankno(String bankno) {
		this.bankno = bankno;
	}
	public String getCreditLevel() {
		return creditLevel;
	}
	public void setCreditLevel(String creditLevel) {
		this.creditLevel = creditLevel;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
