package com.pms.sup.entity;

public class TProviderGoods {
private int aid;         //���
private String pno;      //��Ӧ�̱��
private String gno;      //��Ʒ���
private int state;       //�Ƿ���Ч
private String pname;    //��Ӧ������
private TGoods2 goods;   //��Ʒʵ��



@Override
public String toString() {
	return "TProviderGoods [aid=" + aid + ", gno=" + gno + ", goods=" + goods
			+ ", pname=" + pname + ", pno=" + pno + ", state=" + state + "]";
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}

public TGoods2 getGoods() {
	return goods;
}
public void setGoods(TGoods2 goods) {
	this.goods = goods;
}
public int getAid() {
	return aid;
}
public void setAid(int aid) {
	this.aid = aid;
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
public int getState() {
	return state;
}
public void setState(int state) {
	this.state = state;
}

}
