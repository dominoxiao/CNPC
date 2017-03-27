package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IMasterDataManagement {

	/**
	 * ��Ϣ�˶ԣ����صȣ�
	 * @param supNumber
	 * @return ok
	 * @throws Exception
	 */
	@WebMethod
	public String infoCheck()throws Exception;
	
	/**
	 * ��ù�Ӧ�̱���
	 * @param supNumber  //��Ӧ�̱��
	 * @return  ��Ӧ�̱���
	 * @throws Exception
	 */
	@WebMethod
	public String getSupCode(String supNumber)throws Exception;
	
	/**
	 * ������Ӧ�̱��뵽���ϵͳ
	 * @param supNumber
	 * @return save code successful
	 * @throws Exception
	 */
	@WebMethod
	public String saveSupCode(String supNumber)throws Exception;
}
