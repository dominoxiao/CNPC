package com.pms.sup.batis;

import com.pms.sup.entity.TProviderQualification;

public interface IQualification {

	/**
	 * ��������֤��
	 * @param tQualification
	 * @throws Exception
	 */
	public void saveQualification(TProviderQualification tQualification) throws Exception;
}
