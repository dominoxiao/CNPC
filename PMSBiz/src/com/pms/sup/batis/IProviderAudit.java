package com.pms.sup.batis;

import com.pms.sup.entity.TProviderAudit;

public interface IProviderAudit {

	/**
	 * 保存供应商准入审核
	 * @param tProviderAudit
	 * @throws Exception
	 */
	public void saveProviderAudit(TProviderAudit tProviderAudit) throws Exception;
}
