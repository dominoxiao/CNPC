package com.pms.sup.entity;

import java.util.Date;

/**
 * ����֤��
 * @author hp
 *
 */
public class TQualification {

	private String pano;				//��Ӧ��׼�������
	private byte[] bizlicense;			//��ҵӪҵִ��
	private Date bizlicenseFdate;		//��ҵӪҵִ�յ���ʱ��
	private byte[] organize;			//��֯������֤
	private Date organizeFdate;			//��֯������֤����ʱ��
	private byte[] taxguo;				//˰��Ǽ�֤������˰��
	private Date taxguoFdate;			//˰��Ǽ�֤������˰������ʱ��
	private byte[] ltaxdi;				//˰��Ǽ�֤������˰��
	private Date ltaxdiFdate;			//˰��Ǽ�֤������˰)����ʱ��
	private byte[] bankcertificate;		//���п���֤��/��������֤��
	private Date bankcertificateFdate;	//���п���֤��/��������֤������ʱ��
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
