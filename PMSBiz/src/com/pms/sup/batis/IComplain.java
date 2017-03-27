package com.pms.sup.batis;

import java.util.List;
import java.util.Map;

import com.pms.sup.entity.TComplain;
import com.pms.sup.entity.TComplainDeal;
import com.pms.sup.entity.TComplainDealAudit;

public interface IComplain {
	/**
	 * ��ȡȫ��Ͷ����Ϣ
	 * @return
	 * @throws Exception
	 */
	public List<TComplain> getComplain(TComplain complain) throws Exception;
	
	/**
	 * ��ѯͶ���б�
	 */
	
	public List<TComplain> findList(Map<String, Object> map) throws Exception;
	
	
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public Integer count(Map<String, Object> map) throws Exception;
	
	
	/**
	 * ����Ͷ�߱�Ż�ȡͶ�ߴ���
	 * @return
	 * @throws Exception
	 */
	public List<TComplainDeal> getComplainDealByID() throws Exception;
	
	/**
	 * ��Ӧ���ύ�µ�Ͷ�ߴ���
	 */
    public void addComplain(TComplain complain) throws Exception;
    
    /**
     * ��Ӧ���ύͶ�ߴ�����״̬
     */
    public void addComplainDeal(TComplainDeal complain) throws Exception;
    
    /**
     * ����Ͷ�߱�Ż�ȡ����
     */
    public TComplain getComplainFile(String acno) throws Exception;
    
    /**
     * �ύͶ�ߴ�������
     */
    public void addComplainDealAudit(TComplainDealAudit complainDealAudit) throws Exception;
    
	/**
	 * ��ѯ�����б�
	 */
	
	public List<TComplainDealAudit> findAuditList(Map<String, Object> map) throws Exception;
	
	
	/**
	 * ��ѯ�ܼ�¼��
	 */
	public Integer countAudit(Map<String, Object> map) throws Exception;

}
