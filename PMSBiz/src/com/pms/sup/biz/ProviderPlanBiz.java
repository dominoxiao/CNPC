package com.pms.sup.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.ProviderPlanDao;
import com.pms.sup.entity.TProviderPlan;
import com.pms.sup.entity.TProviderPlanAudit;
@Service("providerPlanBiz")
@Transactional(readOnly=true)
public class ProviderPlanBiz {

	@Autowired
	private ProviderPlanDao providerPlanDao;
	
	/**
	 * 读取所有提交的供应商准入方案申请
	 * @return
	 * @throws Exception
	 */
	 public List<TProviderPlan>  getAllTProviderPlan() throws Exception{
		 return providerPlanDao.getAllTProviderPlan();
	 }
	
	public void saveProviderPlan(TProviderPlan tProviderPlan) throws Exception{
		 providerPlanDao.saveProviderPlan(tProviderPlan);
	}
	public List<TProviderPlan> getProviderPlans(String planid,String page,String rows) throws Exception{
		
		if(planid==null||planid.equals("")){
			return providerPlanDao.getProviderPlans(page,rows);
		}else{
			return providerPlanDao.getProviderPlanByPlanid(planid);
		}	
	}
	public TProviderPlan getProviderPlanByPlanid(String planid) throws Exception{
		
		return providerPlanDao.getProviderPlanByPlanid(planid).get(0);
	}
	public TProviderPlan downProviderPlan(String planid) throws Exception{
		return providerPlanDao.downProviderPlan(planid);
	}
	public void saveProviderPlanAudit(TProviderPlanAudit tProviderPlanAudit,String state) throws Exception{
		
		providerPlanDao.saveProviderPlanAudit(tProviderPlanAudit,state);
	}
	public List<TProviderPlanAudit> getProviderPlanAudits() throws Exception{
		return providerPlanDao.getProviderPlanAudits();
	}
	public List<TProviderPlan> getPassPlan()throws Exception{
		return providerPlanDao.getPassPlan();
	}
}
