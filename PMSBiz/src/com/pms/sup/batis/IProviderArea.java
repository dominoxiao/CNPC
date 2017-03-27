package com.pms.sup.batis;

import com.pms.sup.entity.TProviderArea;

public interface IProviderArea {

	/**
	 * 保存供应商区域状态
	 * @param tProviderArea
	 * @throws Exception
	 */
	public void saveProviderArea(TProviderArea tProviderArea) throws Exception;
}
