package com.pms.sup.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pms.sup.dao.ProviderGoodsDao;
import com.pms.sup.entity.TGoodsCutApply;
import com.pms.sup.entity.TProviderGoods;

/**
 * <p>Title:ProviderGoodsBiz.java<p>
 * <p>Description:</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
@Service("providerGoods")
//@Transactional(readOnly=true)
public class ProviderGoodsBiz {
	@Autowired
	private ProviderGoodsDao providerGoodsDao; 
	
	//查看减少产品信息
	public List<TGoodsCutApply> getCutGoodsCutApplies(String pno) throws Exception{
		
		return providerGoodsDao.showCutGoods(pno);
	}
	
	//查看产品信息
	public List <TProviderGoods> getProviderGoods(String pno) throws Exception{
		
		return providerGoodsDao.showGoods(pno);
	}
	
	//插入减少申请
	public void putCutGoodsApplies(TGoodsCutApply tGoodsCutApply) throws Exception{
		
		providerGoodsDao.insertCutGoods(tGoodsCutApply);
	}
	
	//查看所有减少产品信息
	public List<TGoodsCutApply> getAllCutGoodsCutApplies() throws Exception{
		
		return providerGoodsDao.showAllCutGoods();
	}
}
