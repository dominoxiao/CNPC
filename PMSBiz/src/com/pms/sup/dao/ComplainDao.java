package com.pms.sup.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IComplain;
import com.pms.sup.entity.TComplain;
import com.pms.sup.entity.TComplainDeal;
import com.pms.sup.entity.TComplainDealAudit;

@Repository("complainDao")
public class ComplainDao extends BaseDao{	
	
	@Autowired 
	private IComplain complainMapper;
	
	/**
	 * 获取全部投诉信息
	 * @return
	 * @throws Exception
	 */
	public List<TComplain> getComplain(TComplain complain) throws Exception{
		return complainMapper.getComplain(complain);
	}
	
	/**
	 * 查询投诉列表
	 */
	public List<TComplain> findList(Map<String, Object> map) throws Exception{
		return complainMapper.findList(map);
	}
	
	
	/**
	 * 查询投诉单总数
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return complainMapper.count(map);
	}
	
	/**
	 * 添加投诉单的详细信息
	 */

	public void addComplain(TComplain complain) throws Exception{
		complainMapper.addComplain(complain);
	}
	
	/**
	 * 添加投诉单待处理状态
	 * @param complain
	 * @throws Exception
	 */
	public void addComplainDeal(TComplainDeal complainDeal) throws Exception{
		complainMapper.addComplainDeal(complainDeal);
	}
	
	/**
	 * 根据投诉编号获取附件
	 */
	public byte[] getComplainFile(String acno) throws Exception{
		TComplain complain = complainMapper.getComplainFile(acno);
		
		return complain.getAttachment();
	}
	
	/**
	 * 添加投诉处理审批结果
	 */
	public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception{
		complainMapper.addComplainDealAudit(complainDealAudit);
	}
	
	/**
	 * 查询投诉处理审批列表
	 */
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception{
		return complainMapper.findAuditList(map);
	}
	
	
	/**
	 * 查询投诉单总数
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception{
		return complainMapper.countAudit(map);
	}

}
