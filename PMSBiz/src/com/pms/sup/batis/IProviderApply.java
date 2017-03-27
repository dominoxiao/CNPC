package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TProviderApply;

public interface IProviderApply {

	/**
	 * ���湩Ӧ��׼�������
	 * @param tProviderApply
	 * @throws Exception
	 */
	public void saveProviderApply(TProviderApply tProviderApply) throws Exception;
	/**
	 * ��ѯ��Ӧ�̵�����
	 * @param state
	 * @return
	 * @throws Exception
	 */
	public List<TProviderApply> selecAppliesByState(String state) throws Exception;
	public List<TProviderApply> selecAppliesByStateAndPano(String state,String pano) throws Exception;
	/**
	 * ����׼����������״̬
	 * @param state
	 * @throws Exception
	 */
	public void updateApplyState(String state,String pano) throws Exception;
	/**
	 * ���ݹ�Ӧ�������Ž��в�ѯ
	 * @param pano
	 * @return
	 * @throws Exception
	 */
	public TProviderApply selectProviderApplyByPano(String pano) throws Exception;
}
