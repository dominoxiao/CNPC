package com.pms.sup.entity;


public class TGoodsApply {
private String pano;//��Ʒ׼�������
private String pno;//��Ӧ�̱��
private String gno;//��Ʒ���
private String zrType;//׼������
private String recdept;//�Ƽ���λ
private String guestDept;//������λ
private String applyDate;//����ʱ��
private String state;//����״̬
public String getPano() {
	return pano;
}
public void setPano(String pano) {
	this.pano = pano;
}
public String getPno() {
	return pno;
}
public void setPno(String pno) {
	this.pno = pno;
}
public String getGno() {
	return gno;
}
public void setGno(String gno) {
	this.gno = gno;
}
public String getZrType() {
	return zrType;
}
public void setZrType(String zrType) {
	this.zrType = zrType;
}
public String getRecdept() {
	return recdept;
}
public void setRecdept(String recdept) {
	this.recdept = recdept;
}
public String getGuestDept() {
	return guestDept;
}
public void setGuestDept(String guestDept) {
	this.guestDept = guestDept;
}
public String getApplyDate() {
	return applyDate;
}
public void setApplyDate(String applyDate) {
	this.applyDate = applyDate;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
@Override
public String toString() {
	return "TGoodsApply [applyDate=" + applyDate + ", auditDept=" 
			+ ", gno=" + gno + ", guestDept=" + guestDept + ", pano=" + pano
			+ ", pno=" + pno + ", recdept=" + recdept + ", state=" + state
			+ ", zrType=" + zrType + "]";
}

}
