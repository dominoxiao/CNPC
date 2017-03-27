package com.pms.sup.entity;

/**
 * 联系人表
 *
 */
public class TContacter {

	private String pano;	//供应商准入申请号
	private String cname;	//联系人姓名
	private String mobile;  //移动电话
	private String tel;		//固定电话
	private String email; 	//电子邮箱
	public String getPano() {
		return pano;
	}
	public void setPano(String pano) {
		this.pano = pano;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
