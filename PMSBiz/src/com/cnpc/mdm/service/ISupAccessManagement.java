package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface ISupAccessManagement {
	
	/**
	 * ׼�������Ϣͬ����MDMƽ̨
	 * @return synchronous success
	 * @throws Exception
	 */
	@WebMethod
	public String saveAccessInfo() throws Exception;
	
}
