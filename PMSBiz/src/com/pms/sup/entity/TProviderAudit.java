package com.pms.sup.entity;

import java.util.Date;

/**
 * ��Ӧ��׼������
 * @author hp
 *
 */
public class TProviderAudit {
	
	private int aid;		//���
	private String pano;	//��Ӧ��׼�������
	private Date adate;		//����ʱ��
	private String ainfo;	//�������
	private String aorg;	//��������
	private int isagree;	//�Ƿ�ͨ��
	private int synchro;	//�Ƿ��Ѿ�ͬ����MDM
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
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
	public int getIsagree() {
		return isagree;
	}
	public void setIsagree(int isagree) {
		this.isagree = isagree;
	}
	public int getSynchro() {
		return synchro;
	}
	public void setSynchro(int synchro) {
		this.synchro = synchro;
	}
	
}
