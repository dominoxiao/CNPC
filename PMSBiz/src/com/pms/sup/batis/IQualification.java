package com.pms.sup.batis;

import com.pms.sup.entity.TProviderQualification;

public interface IQualification {

	/**
	 * 保存资质证明
	 * @param tQualification
	 * @throws Exception
	 */
	public void saveQualification(TProviderQualification tQualification) throws Exception;
}
