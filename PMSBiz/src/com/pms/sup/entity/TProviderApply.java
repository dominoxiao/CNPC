package com.pms.sup.entity;

import java.util.Date;
/**
 * ��Ӧ��׼�������
 * @author hp
 *
 */
public class TProviderApply {

	private String pano;	//��Ӧ��׼�������
	private String planid;  //����������
	private String pname;   //��Ӧ������
	private String ptype;	//��Ӧ������
	private String ptype2;	//��Ӧ������2
	private double amount;	//�˻����
	private String ranke;	//��Ӧ�̵ȼ�
	private String gsRegno; //����ע���
	private String taxguo;  //��˰�Ǽ�֤��
	private String taxdi;   //��˰�Ǽ�֤��
	private String orgcode; //��֯��������
	private String agent;   //����������
	private String address; //��ַ
	private String pfrom;   //��Ӧ����Դ
	private Date applyDate; //����ʱ��
	private String state;   //����״̬
	private String applyarea;//��������
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
