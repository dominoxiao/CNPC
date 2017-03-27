package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderApply;

public interface IProviderApply {

	/**
	 * 保存供应商准入申请表
	 * @param tProviderApply
	 * @throws Exception
	 */
	public void saveProviderApply(TProviderApply tProviderApply) throws Exception;
	/**
	 * 查询供应商的申请
	 * @param state
	 * @return
	 * @throws Exception
	 */
	public List<TProviderApply> selecAppliesByState(String state) throws Exception;
	public List<TProviderApply> selecAppliesByStateAndPano(String state,String pano) throws Exception;
	/**
	 * 更新准入申请的审核状态
	 * @param state
	 * @throws Exception
	 */
	public void updateApplyState(String state,String pano) throws Exception;
	/**
	 * 根据供应商申请编号进行查询
	 * @param pano
	 * @return
	 * @throws Exception
	 */
	public TProviderApply selectProviderApplyByPano(String pano) throws Exception;
}
