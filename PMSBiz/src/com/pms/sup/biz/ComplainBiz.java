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
	 * ���ݸ�����������Ͷ�ߵ��б�
	 */
	public TComplain getComplain(String acno) throws Exception{
		TComplain complain = new TComplain();
		complain.setAcno(acno);
		List<TComplain> list = complainDao.getComplain(complain);
		return list.get(0);
	}
	
	/**
	 * ����Ͷ�߱�ŷ���Ͷ�߸���
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public byte[] getComplainFile(String acno) throws Exception{
		return complainDao.getComplainFile(acno);
	}
	
	/*
	 * ͳ��Ͷ�ߵ�����
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return complainDao.count(map);
	}
	
	/*
	 * ��ҳ��ѯͶ�ߵ�
	 */
	public List<TComplain> findList(Map<String, Object> map) throws Exception{
		return complainDao.findList(map);
	}
	
	/**
	 * ����µ�Ͷ�ߵ�
	 */
	public void addComplain(TComplain complain) throws Exception{
		complain.setAdate(new Date());
		complainDao.addComplain(complain);
	}
	
	/**
	 * ���Ͷ�ߵ��Ĵ�����
	 */
	public void addComplainReport(TComplainDeal complainDeal) throws Exception{
		complainDeal.setAdate(new Date());
		complainDeal.setAstatus("������");
		complainDao.addComplainDeal(complainDeal);
	}
	
	/**
	 * ���Ͷ�ߴ����������
	 */
	public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception{
		complainDealAudit.setAdate(new Date());
		complainDao.addComplainDealAudit(complainDealAudit);
		TComplainDeal deal = new TComplainDeal();
		deal.setAstatus("������");
		complainDao.addComplainDeal(deal);
	}
	
	/*
	 * ͳ��Ͷ�ߴ�����������
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception{
		return complainDao.countAudit(map);
	}
	
	/*
	 * ��ҳ��ѯͶ�ߴ����������
	 */
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception{
		return complainDao.findAuditList(map);
	}
	
	
	

}
