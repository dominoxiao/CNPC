package com.pms.sup.entity;

import java.util.Date;

/**
 * ��Ӧ��׼�뷽��
 * @author OuXueting
 *
 */
public class TProviderPlan {

	private String planid;		//����������
	private Date applydate;		//����ʱ��
	private String aorg;		//�������
	private byte[] plan;		//��������
	private String state;		//����״̬
	
	public String getPlanid() {
		return planid;
	}
	public void setPlanid(String planid) {
		this.planid = planid;
	}
	public Date getApplydate() {
		return applydate;
	}
	public void setApplydate(Date applydate) {
		this.applydate = applydate;
	}
	public String getAorg() {
		return aorg;
	}
	public void setAorg(String aorg) {
		this.aorg = aorg;
	}
	public byte[] getPlan() {
		return plan;
	}
	public void setPlan(byte[] plan) {
		this.plan = plan;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}
