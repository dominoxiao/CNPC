package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IDynamicManagement {

	/**
	 * 将退出的供应商信息传到MDM系统中
	 * @return freeze success
	 * @throws Exception
	 */
	@WebMethod
	public String freezeSup()throws Exception;
}
