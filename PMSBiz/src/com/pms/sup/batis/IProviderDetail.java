package com.pms.sup.batis;

import com.pms.sup.entity.TProviderDetail;

public interface IProviderDetail {

	/**
	 * 保存供应商详细信息
	 * @param tProviderDetail
	 * @throws Exception
	 */
	public void saveProviderDetail(TProviderDetail tProviderDetail) throws Exception;
}
