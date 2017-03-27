package com.cnpc.mdm.service;

import javax.jws.WebMethod;
import javax.jws.WebService;

@WebService
public interface IMasterDataManagement {

	/**
	 * 信息核对（验重等）
	 * @param supNumber
	 * @return ok
	 * @throws Exception
	 */
	@WebMethod
	public String infoCheck()throws Exception;
	
	/**
	 * 获得供应商编码
	 * @param supNumber  //供应商编号
	 * @return  供应商编码
	 * @throws Exception
	 */
	@WebMethod
	public String getSupCode(String supNumber)throws Exception;
	
	/**
	 * 发布供应商编码到物采系统
	 * @param supNumber
	 * @return save code successful
	 * @throws Exception
	 */
	@WebMethod
	public String saveSupCode(String supNumber)throws Exception;
}
