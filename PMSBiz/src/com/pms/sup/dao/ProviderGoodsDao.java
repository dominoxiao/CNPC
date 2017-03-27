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
	
	//�鿴���ٲ�Ʒ��Ϣ
	public List<TGoodsCutApply> showCutGoods(String provider) throws Exception{
		
		//System.out.println(provider);
		return iGoodsCutApply.findApplyGoods(provider);		
	}
	
	//�鿴��Ʒ��Ϣ
	public List <TProviderGoods> showGoods(String provider) throws Exception{
		
		return iproviderGoods.findGoods(provider);
	}
	
	//�����������
	public void insertCutGoods(TGoodsCutApply tGoodsCutApply)throws Exception{
		
		iGoodsCutApply.insertCutGoodsApply(tGoodsCutApply);
	}
	
	//�鿴���м��ٲ�Ʒ��Ϣ
	public List<TGoodsCutApply> showAllCutGoods() throws Exception{
		
		//System.out.println(provider);
		return iGoodsCutApply.findAllApplyGoods();		
	}
	
}
