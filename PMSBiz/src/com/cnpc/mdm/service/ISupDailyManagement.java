package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface ISupDailyManagement {

	/**
	 * ׼����Ϣ�����ͬ����MDMƽ̨
	 * @return update success
	 * @throws Exception
	 */
	@WebMethod
	public String updateAccessInfo() throws Exception;
}
