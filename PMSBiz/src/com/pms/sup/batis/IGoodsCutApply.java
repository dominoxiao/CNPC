package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TGoodsCutApply;

/**
 * <p>Title:IGoodCutApply.java<p>
 * <p>Description:产品减少申请表</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
public interface IGoodsCutApply {
	
	//查看产品减少申请
	public List<TGoodsCutApply> findApplyGoods(String pno) throws Exception;
	
	//提交减少申请
	public void insertCutGoodsApply(TGoodsCutApply tGoodsCutApply)throws Exception;
	
	//查询所有减少产品申请
	public List<TGoodsCutApply> findAllApplyGoods() throws Exception;
	
}
