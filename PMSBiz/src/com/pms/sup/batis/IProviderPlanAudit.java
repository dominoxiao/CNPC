package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderPlanAudit;



public interface IProviderPlanAudit {
	
	/**
	 * 物资管理部门进行审批
	 * @param tProviderPlanAudit
	 * @throws Exception
	 */
	public void saveProviderPlanAudit(TProviderPlanAudit tProviderPlanAudit) throws Exception;
	/**
	 * 查看审批结构
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlanAudit> getProviderPlanAudits() throws Exception;
	
	
}
