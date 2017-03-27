package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IArea;
import com.pms.sup.entity.TArea;
@Repository("areaDao")
public class AreaDao {

	@Autowired
	private IArea areaMapper;
	public List<TArea> selectAllArea() throws Exception{
		return areaMapper.selectAllArea();
	}
}
