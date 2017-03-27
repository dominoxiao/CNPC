package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderPlan;

public interface IProviderPlan {

	/**
	 * 读取所有提交的供应商准入方案申请
	 * @return
	 * @throws Exception
	 */
	 public List<TProviderPlan>  getAllTProviderPlan() throws Exception;
	
	/**
	 * 供应商准入方案申请
	 * @param tProviderPlan
	 * @return
	 * @throws Exception
	 */
	public void saveProviderPlan(TProviderPlan tProviderPlan) throws Exception;
	/**
	 * 供应商准入方案查询
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getProviderPlans(String page,String rows) throws Exception;
	/**
	 * 根据准入方案编号查询供应商准入方案
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getProviderPlanByPlanid(String planid) throws Exception;
	/**
	 * 下载供应商准入方案
	 * @param planid
	 * @return
	 * @throws Exception
	 */
	public TProviderPlan downProviderPlan(String planid) throws Exception;
	/**
	 * 更新准入方案审核状态
	 * @param planid
	 * @throws Exception
	 */
	public void updateProviderPlanState(String state,String planid) throws Exception;
	/**
	 * 获得通过的方案
	 * @param planid
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getPassPlan()throws Exception;
}
