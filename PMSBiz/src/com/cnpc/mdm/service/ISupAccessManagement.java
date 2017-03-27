package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface ISupAccessManagement {
	
	/**
	 * 准入相关信息同步到MDM平台
	 * @return synchronous success
	 * @throws Exception
	 */
	@WebMethod
	public String saveAccessInfo() throws Exception;
	
}
