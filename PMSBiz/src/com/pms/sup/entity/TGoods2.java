package com.pms.sup.entity;

public class TGoods2 {
private String gno;   //��Ʒ���
private String gname; //���ʲ�Ʒ����
private int IsTactic; //�Ƿ�Ϊս������

@Override
public String toString() {
	return "TGoods2 [IsTactic=" + IsTactic + ", gname=" + gname + ", gno="
			+ gno + "]";
}
public String getGno() {
	return gno;
}
public void setGno(String gno) {
	this.gno = gno;
}

public String getGname() {
	return gname;
}
public void setGname(String gname) {
	this.gname = gname;
}
public int getIsTactic() {
	return IsTactic;
}
public void setIsTactic(int isTactic) {
	IsTactic = isTactic;
}


}
