package com.pms.sup.entity;

import java.util.Date;

/**
 * ��Ӧ��
 * @author Zhemin Liu
 *
 */
public class TProvider {
	private String pno; 		  //��Ӧ�̱��
	private String pano; 	      //��Ӧ��׼�������
	private String pname;         //��Ӧ������
	private String certificateno; //��Ӧ��׼��֤���
	private Date pubDate;         //��֤����
	private Date endDate;         //׼����Ч��ֹ����
	private String state;         //״̬
	
	private TProviderQualification qualification;   //��Ӧ��������Ϣ
	
	
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
