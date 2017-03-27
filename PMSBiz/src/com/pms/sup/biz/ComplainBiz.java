package com.pms.sup.biz;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.ComplainDao;
import com.pms.sup.entity.TComplain;
import com.pms.sup.entity.TComplainDeal;
import com.pms.sup.entity.TComplainDealAudit;

@Service("compainBiz")
@Transactional(readOnly=true)
public class ComplainBiz {
	@Autowired
	private ComplainDao complainDao;
	
	/**
	 * 根据给定条件返回投诉单列表
	 */
	public TComplain getComplain(String acno) throws Exception{
		TComplain complain = new TComplain();
		complain.setAcno(acno);
		List<TComplain> list = complainDao.getComplain(complain);
		return list.get(0);
	}
	
	/**
	 * 根据投诉编号返回投诉附件
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public byte[] getComplainFile(String acno) throws Exception{
		return complainDao.getComplainFile(acno);
	}
	
	/*
	 * 统计投诉单总数
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return complainDao.count(map);
	}
	
	/*
	 * 分页查询投诉单
	 */
	public List<TComplain> findList(Map<String, Object> map) throws Exception{
		return complainDao.findList(map);
	}
	
	/**
	 * 添加新的投诉单
	 */
	public void addComplain(TComplain complain) throws Exception{
		complain.setAdate(new Date());
		complainDao.addComplain(complain);
	}
	
	/**
	 * 添加投诉单的处理报告
	 */
	public void addComplainReport(TComplainDeal complainDeal) throws Exception{
		complainDeal.setAdate(new Date());
		complainDeal.setAstatus("待审批");
		complainDao.addComplainDeal(complainDeal);
	}
	
	/**
	 * 添加投诉处理审批结果
	 */
	public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception{
		complainDealAudit.setAdate(new Date());
		complainDao.addComplainDealAudit(complainDealAudit);
		TComplainDeal deal = new TComplainDeal();
		deal.setAstatus("已审批");
		complainDao.addComplainDeal(deal);
	}
	
	/*
	 * 统计投诉处理审批总数
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception{
		return complainDao.countAudit(map);
	}
	
	/*
	 * 分页查询投诉处理审批结果
	 */
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception{
		return complainDao.findAuditList(map);
	}
	
	
	

}
