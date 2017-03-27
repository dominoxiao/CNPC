package com.pms.sup.batis;



import com.pms.sup.entity.TGoods2;

public interface IQueryProduct {
	public TGoods2 QueryPro(String gname) throws Exception;
	public TGoods2 QueryProById(String gno) throws Exception;

}
