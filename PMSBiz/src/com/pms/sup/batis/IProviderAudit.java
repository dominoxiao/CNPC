package com.pms.sup.batis;

import com.pms.sup.entity.TProviderAudit;

public interface IProviderAudit {

	/**
	 * ���湩Ӧ��׼�����
	 * @param tProviderAudit
	 * @throws Exception
	 */
	public void saveProviderAudit(TProviderAudit tProviderAudit) throws Exception;
}
