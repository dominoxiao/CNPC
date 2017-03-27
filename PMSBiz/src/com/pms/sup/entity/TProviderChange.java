package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商信息变更
 * 
 * @author Zhemin Liu
 *
 */
public class TProviderChange {
	private String applyno;		//信息变更申请号
	private String pno;		    //供应商编号
	private String pname;       //供应商名称
	private String ptype;       //供应商类型1
	private String ptype2;      //供应商类型2
	private Double amount;      //账户金额
	private String ranke;       //供应商等级
	private String gsRegno;     //工商注册号
	private String taxguo;      //国税登记证号
	private String taxdi;       //地税登记证号
	private String orgcode;     //组织机构代码
	private String agent;       //法定代表人
	private String address;     //地址
	private String pfrom;       //供应商来源
	private String country;     //国家
	private String paddress;    //地址2
	private String details;     //详细地址
	private String zipcode;     //邮编
	private String bizscope;    //经营范围
	private String qm;          //质量认证体系认证
	private String qmOrg;       //质量体系的发证机构
	private String qc;          //产品质量认证
	private String qcOrg;       //质量认证的发证机构、
	private String mlan;        //生产/制造许可证获证情况
	private String awards;      //获奖情况
	private String fname;       //法人代表姓名
	private String ctype;       //公司类型
	private String hytype;      //行业类别
	private String bigtype;     //所属大类
	private String zczb;        //注册资本
	private Date begindate;     //成立时间
	private String bank;        //开户银行
	private String bankno;      //银行账号
	private String creditLevel; //银行信息等级
	private String tel;         //公司电话
	private String fax;         //传真
	private String address2;    //公司地址
	private Date applyDate;     //申请变更时间
	private String state;       //审批状态
	private String atype;       //审批类型
	private String cname;       //联系人姓名
	private String mobile;      //联系人移动电话
	private String phone;       //联系人固定电话
	private String email;       //联系人邮件
	
	
	public String getApplyno() {
		return applyno;
	}
	public void setApplyno(String applyno) {
		this.applyno = applyno;
	}
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
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
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
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
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
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
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}	
	
	
}
