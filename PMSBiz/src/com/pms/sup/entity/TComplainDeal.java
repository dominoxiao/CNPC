package com.pms.sup.entity;

import java.util.Date;
/**
 * Ͷ�ߴ����
 * @author Zhemin Liu
 *
 */
public class TComplainDeal {
	private String acno;	//Ͷ�߱��
	private String person;  //������
	private String ainfo;   //�������
	private String aorg;    //�������
	private String astate;  //����״̬
	private Date adate;     //��������
	private String astatus; //����״̬
	
	
	public String getAcno() {
		return acno;
	}
	public void setAcno(String acno) {
		this.acno = acno;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public String getAinfo() {
		return ainfo;
	}
	public void setAinfo(String ainfo) {
		this.ainfo = ainfo;
	}
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public String getAstate() {
		return astate;
	}
	public void setAstate(String astate) {
		this.astate = astate;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	public String getAstatus() {
		return astatus;
	}
	public void setAstatus(String astatus) {
		this.astatus = astatus;
	}
	
}
