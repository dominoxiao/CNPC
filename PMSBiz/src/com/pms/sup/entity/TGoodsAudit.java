package com.pms.sup.entity;

public class TGoodsAudit {
private String aid;//���
private String pdno;//�����
private String adate;//����ʱ��
private String ainfo;//�������
private String isagree;//�Ƿ�ͨ��
public String getAid() {
	return aid;
}
public void setAid(String aid) {
	this.aid = aid;
}
public String getPdno() {
	return pdno;
}
public void setPdno(String pdno) {
	this.pdno = pdno;
}
public String getAdate() {
	return adate;
}
public void setAdate(String adate) {
	this.adate = adate;
}
public String getAinfo() {
	return ainfo;
}
public void setAinfo(String ainfo) {
	this.ainfo = ainfo;
}
public String getIsagree() {
	return isagree;
}
public void setIsagree(String isagree) {
	this.isagree = isagree;
}
@Override
public String toString() {
	return "TGoodsAudit [adate=" + adate + ", aid=" + aid + ", ainfo=" + ainfo
			+ ", isagree=" + isagree + ", pdno=" + pdno + "]";
}

}
