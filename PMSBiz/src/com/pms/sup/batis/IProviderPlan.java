package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderPlan;

public interface IProviderPlan {

	/**
	 * ��ȡ�����ύ�Ĺ�Ӧ��׼�뷽������
	 * @return
	 * @throws Exception
	 */
	 public List<TProviderPlan>  getAllTProviderPlan() throws Exception;
	
	/**
	 * ��Ӧ��׼�뷽������
	 * @param tProviderPlan
	 * @return
	 * @throws Exception
	 */
	public void saveProviderPlan(TProviderPlan tProviderPlan) throws Exception;
	/**
	 * ��Ӧ��׼�뷽����ѯ
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getProviderPlans(String page,String rows) throws Exception;
	/**
	 * ����׼�뷽����Ų�ѯ��Ӧ��׼�뷽��
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getProviderPlanByPlanid(String planid) throws Exception;
	/**
	 * ���ع�Ӧ��׼�뷽��
	 * @param planid
	 * @return
	 * @throws Exception
	 */
	public TProviderPlan downProviderPlan(String planid) throws Exception;
	/**
	 * ����׼�뷽�����״̬
	 * @param planid
	 * @throws Exception
	 */
	public void updateProviderPlanState(String state,String planid) throws Exception;
	/**
	 * ���ͨ���ķ���
	 * @param planid
	 * @return
	 * @throws Exception
	 */
	public List<TProviderPlan> getPassPlan()throws Exception;
}
