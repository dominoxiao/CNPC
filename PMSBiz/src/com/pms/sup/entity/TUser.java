package com.pms.sup.entity;

/**
 * 用户
 * @author Zhemin Liu
 *
 */
public class TUser {
	private String uname;    //用户名
	private String pwd;      //登录密码
	
	private String empno;    //员工编号（供应商编号）
	private String role;     //用户角色
	
	
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
