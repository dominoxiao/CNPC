package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TGoodsCutApply;

/**
 * <p>Title:IGoodCutApply.java<p>
 * <p>Description:��Ʒ���������</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
public interface IGoodsCutApply {
	
	//�鿴��Ʒ��������
	public List<TGoodsCutApply> findApplyGoods(String pno) throws Exception;
	
	//�ύ��������
	public void insertCutGoodsApply(TGoodsCutApply tGoodsCutApply)throws Exception;
	
	//��ѯ���м��ٲ�Ʒ����
	public List<TGoodsCutApply> findAllApplyGoods() throws Exception;
	
}
