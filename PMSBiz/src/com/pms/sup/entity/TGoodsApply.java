package com.pms.sup.entity;


public class TGoodsApply {
private String pano;//产品准入申请号
private String pno;//供应商编号
private String gno;//产品编号
private String zrType;//准入类型
private String recdept;//推荐单位
private String guestDept;//特邀单位
private String applyDate;//申请时间
private String state;//审批状态
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
