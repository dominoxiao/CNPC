package com.pms.sup.entity;

/**
 * �û�
 * @author Zhemin Liu
 *
 */
public class TUser {
	private String uname;    //�û���
	private String pwd;      //��¼����
	
	private String empno;    //Ա����ţ���Ӧ�̱�ţ�
	private String role;     //�û���ɫ
	
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}	
}
