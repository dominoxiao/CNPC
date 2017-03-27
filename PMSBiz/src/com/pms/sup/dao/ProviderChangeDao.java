package com.pms.sup.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IProviderChange;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;

@Repository("providerChangeDao")
public class ProviderChangeDao {
	
	@Autowired
	private IProviderChange providerChange;
	
	/**
	 * ��ѯ��Ϣ�����¼
	 * @return
	 * @throws Exception
	 */
	public TProviderChange getChangeRecord() throws Exception{
		return providerChange.getChangeRecord();
	}
	
	/**
	 * ��ѯ��Ϣ׼������
	 */
	public TProviderApply getProviderApply(String pano) throws Exception{
		return providerChange.getProviderApply(pano);
	}
	
	/**
	 * ��ѯ��Ӧ��
	 */
	public TProvider getProvider(String pno) throws Exception{
		return providerChange.getProvider(pno);
	}
	
	/**
	 * ��ѯ��Ϣ׼������ţ����ݹ�Ӧ�̱�ţ�
	 */
	public String getProviderApplyID(String pno) throws Exception{
		return providerChange.getProviderApplyID(pno);
	}
	
	/**
	 * ��ѯ��Ϣ׼������(��ϵ����Ϣ)
	 * @param pano
	 * @return
	 * @throws Exception
	 */
	public TContacter getProviderApplyContacter(String pano) throws Exception{
		return providerChange.getProviderApplyContacter(pano);
	}
	
	/**
	 * ��ѯ��Ϣ׼������(���ڹ�˾���)
	 */
	public TCompany getProviderApplyCompany(String pano) throws Exception{
		return providerChange.getProviderApplyCompany(pano);
	}
	
	/**
	 * ��ѯ��Ϣ׼������(��ϸ��Ϣ)
	 */
	public TProviderDetail getProviderApplyDetail(String pano) throws Exception{
		return providerChange.getProviderApplyDetail(pano);
	}
	
	/**
	 * �ύ��Ӧ����Ϣ�������
	 */
	public void saveModifyApply(TProviderChange change) throws Exception{
		providerChange.addModifyApply(change);
	}
	
	/**
	 * ��ȡ��Ϣ��������¼ID�����ݹ�Ӧ�̱�ţ�
	 */
	public List<String> getModifyApplyID(String pno) throws Exception{
		return providerChange.getModifyApplyID(pno);
	}
	
	/**
	 * ��ȡ��Ϣ��������¼ID
	 */
	public List<TProviderChange> getModifyApplyRecord(TProviderChange change) throws Exception{
		return providerChange.getModifyApplyRecords(change);
	}
	
	/**
	 * �ύ��Ϣ�������
	 */
	public void saveModifyApplyFiles(TProviderChangeData changeData) throws Exception{
		providerChange.addChangeData(changeData);
	}
	
	/**
	 * ��ҳͳ����Ϣ�����������
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return providerChange.countModifyApply(map);
	}
	
	/**
	 * ��ҳ��ѯ��Ϣ��������б�
	 */
	public List<TProviderChange> getList(Map<String,Object> map) throws Exception{
		return providerChange.findModifyApplyList(map);
	}
	
	/**
	 * �����Ϣ�����������
	 */
	public void addChangeAuditData(TProviderChangeAudit changeAudit) throws Exception{
		providerChange.addChangeAuditData(changeAudit);
	}
	
	/**
	 * ������Ϣ������е�����״̬
	 */
	public void updateModifyApplyState(TProviderChange change) throws Exception{
		providerChange.updateModifyApplyState(change);
	}
}
