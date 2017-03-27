package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderGoods;

/**
 * <p>Title:IProviderGoods.java<p>
 * <p>Description:供应商产品表</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
public interface IProviderGoods {
	
	//查询产品信息
	public List <TProviderGoods> findGoods(String pno) throws Exception;
	
	public List <TProviderGoods> Goods(String pno) throws Exception;

}
