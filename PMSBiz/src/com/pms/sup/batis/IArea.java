package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TArea;

public interface IArea {
	
	/**
	 * ��ѯ���е�����
	 * @return
	 * @throws Exception
	 */
	public List<TArea> selectAllArea() throws Exception;

}
