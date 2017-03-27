package com.pms.sup.entity;
/**
 * 考评人员选择
 * @author 程
 *
 */
public class TAuditPersonSelect {
	
	private int aid;
	private String apno;
	private int aaid;
	private int score;
	private String opinon;
	private Byte[] report;
	private Byte[]question;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getApno() {
		return apno;
	}
	public void setApno(String apno) {
		this.apno = apno;
	}
	public int getAaid() {
		return aaid;
	}
	public void setAaid(int aaid) {
		this.aaid = aaid;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getOpinon() {
		return opinon;
	}
	public void setOpinon(String opinon) {
		this.opinon = opinon;
	}
	public Byte[] getReport() {
		return report;
	}
	public void setReport(Byte[] report) {
		this.report = report;
	}
	public Byte[] getQuestion() {
		return question;
	}
	public void setQuestion(Byte[] question) {
		this.question = question;
	}
}
