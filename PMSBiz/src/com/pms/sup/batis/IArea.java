package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TArea;

public interface IArea {
	
	/**
	 * 查询所有的区域
	 * @return
	 * @throws Exception
	 */
	public List<TArea> selectAllArea() throws Exception;

}
