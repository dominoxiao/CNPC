package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderPlanAudit;



public interface IProviderPlanAudit {
	
	/**
	 * ���ʹ����Ž�������
	 * @param tProviderPlanAudit
	 * @throws Exception
	 */
	public void saveProviderPlanAudit(TProviderPlanAudit tProviderPlanAudit) throws Exception;
	/**
	 * �鿴�����ṹ
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlanAudit> getProviderPlanAudits() throws Exception;
	
	
}
