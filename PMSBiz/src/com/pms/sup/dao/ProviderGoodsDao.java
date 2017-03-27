package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IGoodsCutApply;
import com.pms.sup.batis.IProviderGoods;
import com.pms.sup.entity.TGoodsCutApply;
import com.pms.sup.entity.TProviderGoods;

/**
 * <p>Title:ProviderGoodsDao.java<p>
 * <p>Description:</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
@Repository("providerGoodsDao")
public class ProviderGoodsDao {
	@Autowired
	private IProviderGoods iproviderGoods;
	@Autowired
	private IGoodsCutApply iGoodsCutApply;
	
	//查看减少产品信息
	public List<TGoodsCutApply> showCutGoods(String provider) throws Exception{
		
		//System.out.println(provider);
		return iGoodsCutApply.findApplyGoods(provider);		
	}
	
	//查看产品信息
	public List <TProviderGoods> showGoods(String provider) throws Exception{
		
		return iproviderGoods.findGoods(provider);
	}
	
	//插入减少申请
	public void insertCutGoods(TGoodsCutApply tGoodsCutApply)throws Exception{
		
		iGoodsCutApply.insertCutGoodsApply(tGoodsCutApply);
	}
	
	//查看所有减少产品信息
	public List<TGoodsCutApply> showAllCutGoods() throws Exception{
		
		//System.out.println(provider);
		return iGoodsCutApply.findAllApplyGoods();		
	}
	
}
