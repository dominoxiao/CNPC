package com.pms.sup.batis;

import com.pms.sup.entity.TCompany;

public interface ICompany {

	/**
	 * 保存所属公司详情
	 * @param tCompany
	 * @throws Exception
	 */
	public void saveCompany(TCompany tCompany) throws Exception;
}
