package com.pms.sup.batis;

import java.util.List;
import java.util.Map;

import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;

public interface IProviderChange {
	
	/**
	 * ��ѯ��Ϣ��������¼
	 * @return
	 * @throws Exception
	 */
	public TProviderChange getChangeRecord() throws Exception;
	
	/**
	 * ��ѯ��Ϣ׼�������¼
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public TProviderApply getProviderApply(String pano) throws Exception;
	
	/**
	 * ��ѯ׼������ţ����ݹ�Ӧ�̱�ţ�
	 * @param pno
	 * @return
	 * @throws Exception
	 */
	public String getProviderApplyID(String pno) throws Exception;
	
	/**
	 * ��ѯ��Ӧ��
	 * @return
	 * @throws Exception
	 */
	public TProvider getProvider(String pno) throws Exception;
	
	/**
	 * ��ѯ��Ϣ׼�������¼����ϵ�ˣ�
	 */
	public TContacter getProviderApplyContacter(String pano) throws Exception;
	
	/**
	 * ��ѯ��Ϣ׼�������¼�����ڹ�˾�����
	 */
	public TCompany getProviderApplyCompany(String pano) throws Exception;
	
	/**
	 * ��ѯ��Ϣ׼�������¼����ϸ��Ϣ��
	 */
	public TProviderDetail getProviderApplyDetail(String pano) throws Exception;
	
	/**
	 * �ύ��Ӧ����Ϣ�������
	 */
//	public void addModifyApply(Map<String, Object> map) throws Exception;
	public void addModifyApply(TProviderChange change) throws Exception;
	
	/**
	 * ��ȡ��Ϣ��������¼����Ӧ�̱�ţ�
	 */
	public List<String> getModifyApplyID(String pno) throws Exception;
	
	/**
	 * ��ӱ������֤������
	 */
	public void addChangeData(TProviderChangeData changeData) throws Exception;
	
	/**
	 * ��ȡ��Ϣ��������¼
	 */
	public List<TProviderChange> getModifyApplyRecords(TProviderChange change) throws Exception;
	
	/**
	 * ��ҳ��ȡ��Ϣ��������б�
	 */
   public List<TProviderChange> findModifyApplyList(Map<String, Object> map) throws Exception;
   
   /**
    *  ��ҳͳ����Ϣ�����������
    */
   public Integer countModifyApply(Map<String, Object> map) throws Exception;
   
  /**
   * ��ӱ����������
   */
   public void addChangeAuditData(TProviderChangeAudit changeAudit) throws Exception;
   
   /*
    * ������Ϣ�������������״̬
    */
   public void updateModifyApplyState(TProviderChange change) throws Exception;
	

}
