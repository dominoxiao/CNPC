package com.pms.sup.batis;

import com.pms.sup.entity.TCompany;

public interface ICompany {

	/**
	 * ����������˾����
	 * @param tCompany
	 * @throws Exception
	 */
	public void saveCompany(TCompany tCompany) throws Exception;
}
