package com.pms.sup.batis;

import com.pms.sup.entity.TContacter;

public interface IContacter {
	
	/**
	 * ���湩Ӧ�̵���ϵ����Ϣ
	 * @param tContacter
	 * @throws Exception
	 */
	public void saveContacter(TContacter tContacter) throws Exception;

}
