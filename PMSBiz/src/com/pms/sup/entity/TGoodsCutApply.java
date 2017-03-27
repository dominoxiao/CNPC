package com.pms.sup.entity;

/**
  * <p>Description:产品减少申请表</p>
 * @return  */
public class TGoodsCutApply {
	private String pcno;      //产品减少申请号
	private String pno;		  //供应商编码
	private String gno;       //产品编号
	private String applydate;   //申请时间
	private String cutinfo;   //减少原因
	private String state;     //审批状态
	private TGoods2 goods;    //产品实体
	
	
	@Override
	public String toString() {
		return "TGoodsCutApply [applydate=" + applydate + ", cutinfo="
				+ cutinfo + ", gno=" + gno + ", goods=" + goods + ", pcno="
				+ pcno + ", pno=" + pno + ", state=" + state + "]";
	}
	public TGoods2 getGoods() {
		return goods;
	}
	public void setGoods(TGoods2 goods) {
		this.goods = goods;
	}
	public String getPcno() {
		return pcno;
	}
	public void setPcno(String pcno) {
		this.pcno = pcno;
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


	public String getApplydate() {
		return applydate;
	}
	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}
	public String getCutinfo() {
		return cutinfo;
	}
	public void setCutinfo(String cutinfo) {
		this.cutinfo = cutinfo;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
