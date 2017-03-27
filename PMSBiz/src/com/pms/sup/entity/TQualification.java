package com.pms.sup.entity;

import java.util.Date;

/**
 * 资质证明
 * @author hp
 *
 */
public class TQualification {

	private String pano;				//供应商准入申请号
	private byte[] bizlicense;			//企业营业执照
	private Date bizlicenseFdate;		//企业营业执照到期时间
	private byte[] organize;			//组织机构代证
	private Date organizeFdate;			//组织机构代证到期时间
	private byte[] taxguo;				//税务登记证明（国税）
	private Date taxguoFdate;			//税务登记证明（国税）到期时间
	private byte[] ltaxdi;				//税务登记证明（地税）
	private Date ltaxdiFdate;			//税务登记证明（地税)到期时间
	private byte[] bankcertificate;		//银行开户证明/银行资信证明
	private Date bankcertificateFdate;	//银行开户证明/银行资信证明到期时间
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public byte[] getBizlicense() {
		return bizlicense;
	}
	public void setBizlicense(byte[] bizlicense) {
		this.bizlicense = bizlicense;
	}
	public Date getBizlicenseFdate() {
		return bizlicenseFdate;
	}
	public void setBizlicenseFdate(Date bizlicenseFdate) {
		this.bizlicenseFdate = bizlicenseFdate;
	}
	public byte[] getOrganize() {
		return organize;
	}
	public void setOrganize(byte[] organize) {
		this.organize = organize;
	}
	public Date getOrganizeFdate() {
		return organizeFdate;
	}
	public void setOrganizeFdate(Date organizeFdate) {
		this.organizeFdate = organizeFdate;
	}
	public byte[] getTaxguo() {
		return taxguo;
	}
	public void setTaxguo(byte[] taxguo) {
		this.taxguo = taxguo;
	}
	public Date getTaxguoFdate() {
		return taxguoFdate;
	}
	public void setTaxguoFdate(Date taxguoFdate) {
		this.taxguoFdate = taxguoFdate;
	}
	public byte[] getLtaxdi() {
		return ltaxdi;
	}
	public void setLtaxdi(byte[] ltaxdi) {
		this.ltaxdi = ltaxdi;
	}
	public Date getLtaxdiFdate() {
		return ltaxdiFdate;
	}
	public void setLtaxdiFdate(Date ltaxdiFdate) {
		this.ltaxdiFdate = ltaxdiFdate;
	}
	public byte[] getBankcertificate() {
		return bankcertificate;
	}
	public void setBankcertificate(byte[] bankcertificate) {
		this.bankcertificate = bankcertificate;
	}
	public Date getBankcertificateFdate() {
		return bankcertificateFdate;
	}
	public void setBankcertificateFdate(Date bankcertificateFdate) {
		this.bankcertificateFdate = bankcertificateFdate;
	}
	
}
