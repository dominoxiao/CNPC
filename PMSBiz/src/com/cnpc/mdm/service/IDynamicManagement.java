package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IDynamicManagement {

	/**
	 * ���˳��Ĺ�Ӧ����Ϣ����MDMϵͳ��
	 * @return freeze success
	 * @throws Exception
	 */
	@WebMethod
	public String freezeSup()throws Exception;
}
