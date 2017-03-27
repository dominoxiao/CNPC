package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.batis.IProviderPlan;
import com.pms.sup.batis.IProviderPlanAudit;
import com.pms.sup.entity.TProviderPlan;
import com.pms.sup.entity.TProviderPlanAudit;

@Repository("providerPlanDao")
public class ProviderPlanDao {
	
	@Autowired
	private IProviderPlan providerPlanMapper;
	@Autowired
	private IProviderPlanAudit providerPlanAuditMapper;
	
	/**
	 * 读取所有提交的供应商准入方案申请
	 * @return
	 * @throws Exception
	 */
	 public List<TProviderPlan>  getAllTProviderPlan() throws Exception{
		 return providerPlanMapper.getAllTProviderPlan();
	 }
	
	public void saveProviderPlan(TProviderPlan tProviderPlan) throws Exception{
		 providerPlanMapper.saveProviderPlan(tProviderPlan);
	}
	
	public List<TProviderPlan> getProviderPlans(String page,String rows) throws Exception{
		return providerPlanMapper.getProviderPlans(page,rows);
	}
	public TProviderPlan downProviderPlan(String planid) throws Exception{
		return providerPlanMapper.downProviderPlan(planid);
	}
	public List<TProviderPlan> getProviderPlanByPlanid(String planid) throws Exception{
		return providerPlanMapper.getProviderPlanByPlanid(planid);
	}
	@Transactional(rollbackFor=Throwable.class)
	public void saveProviderPlanAudit(TProviderPlanAudit tProviderPlanAudit,String state) throws Exception{
		providerPlanAuditMapper.saveProviderPlanAudit(tProviderPlanAudit);
		providerPlanMapper.updateProviderPlanState(state,tProviderPlanAudit.getPlanid());
	}
	
	public List<TProviderPlanAudit> getProviderPlanAudits() throws Exception{
		return providerPlanAuditMapper.getProviderPlanAudits();
	}
	public List<TProviderPlan> getPassPlan()throws Exception{
		return providerPlanMapper.getPassPlan();
	}
	
	

}
