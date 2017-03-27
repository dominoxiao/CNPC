package com.pms.sup.entity;

import java.util.Date;

/**
 * 供应商准入审批
 * @author hp
 *
 */
public class TProviderAudit {
	
	private int aid;		//序号
	private String pano;	//供应商准入申请号
	private Date adate;		//审批时间
	private String ainfo;	//审批意见
	private String aorg;	//审批机构
	private int isagree;	//是否通过
	private int synchro;	//是否已经同步到MDM
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
