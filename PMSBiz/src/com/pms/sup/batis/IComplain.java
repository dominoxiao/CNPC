package com.pms.sup.batis;

import java.util.List;
import java.util.Map;

import com.pms.sup.entity.TComplain;
import com.pms.sup.entity.TComplainDeal;
import com.pms.sup.entity.TComplainDealAudit;

public interface IComplain {
	/**
	 * 读取全部投诉信息
	 * @return
	 * @throws Exception
	 */
	public List<TComplain> getComplain(TComplain complain) throws Exception;
	
	/**
	 * 查询投诉列表
	 */
	
	public List<TComplain> findList(Map<String, Object> map) throws Exception;
	
	
	/**
	 * 查询总记录数
	 */
	public Integer count(Map<String, Object> map) throws Exception;
	
	
	/**
	 * 根据投诉编号获取投诉处理单
	 * @return
	 * @throws Exception
	 */
	public List<TComplainDeal> getComplainDealByID() throws Exception;
	
	/**
	 * 供应商提交新的投诉处理单
	 */
    public void addComplain(TComplain complain) throws Exception;
    
    /**
     * 供应商提交投诉待处理状态
     */
    public void addComplainDeal(TComplainDeal complain) throws Exception;
    
    /**
     * 根据投诉编号获取附件
     */
    public TComplain getComplainFile(String acno) throws Exception;
    
    /**
     * 提交投诉处理审批
     */
    public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception;
    
	/**
	 * 查询审批列表
	 */
	
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception;
	
	
	/**
	 * 查询总记录数
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception;

}
