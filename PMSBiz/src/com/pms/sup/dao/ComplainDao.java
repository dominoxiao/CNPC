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
	 * ��ȡȫ��Ͷ����Ϣ
	 * @return
	 * @throws Exception
	 */
	public List<TComplain> getComplain(TComplain complain) throws Exception{
		return complainMapper.getComplain(complain);
	}
	
	/**
	 * ��ѯͶ���б�
	 */
	public List<TComplain> findList(Map<String, Object> map) throws Exception{
		return complainMapper.findList(map);
	}
	
	
	/**
	 * ��ѯͶ�ߵ�����
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return complainMapper.count(map);
	}
	
	/**
	 * ���Ͷ�ߵ�����ϸ��Ϣ
	 */

	public void addComplain(TComplain complain) throws Exception{
		complainMapper.addComplain(complain);
	}
	
	/**
	 * ���Ͷ�ߵ�������״̬
	 * @param complain
	 * @throws Exception
	 */
	public void addComplainDeal(TComplainDeal complainDeal) throws Exception{
		complainMapper.addComplainDeal(complainDeal);
	}
	
	/**
	 * ����Ͷ�߱�Ż�ȡ����
	 */
	public byte[] getComplainFile(String acno) throws Exception{
		TComplain complain = complainMapper.getComplainFile(acno);
		
		return complain.getAttachment();
	}
	
	/**
	 * ���Ͷ�ߴ����������
	 */
	public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception{
		complainMapper.addComplainDealAudit(complainDealAudit);
	}
	
	/**
	 * ��ѯͶ�ߴ��������б�
	 */
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception{
		return complainMapper.findAuditList(map);
	}
	
	
	/**
	 * ��ѯͶ�ߵ�����
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception{
		return complainMapper.countAudit(map);
	}

}
