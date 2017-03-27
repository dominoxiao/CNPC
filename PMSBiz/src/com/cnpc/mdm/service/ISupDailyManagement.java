package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface ISupDailyManagement {

	/**
	 * 准入信息变更后同步到MDM平台
	 * @return update success
	 * @throws Exception
	 */
	@WebMethod
	public String updateAccessInfo() throws Exception;
}
