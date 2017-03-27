package com.pms.sup.batis;

import com.pms.sup.entity.TContacter;

public interface IContacter {
	
	/**
	 * 保存供应商的联系人信息
	 * @param tContacter
	 * @throws Exception
	 */
	public void saveContacter(TContacter tContacter) throws Exception;

}
