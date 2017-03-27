package com.pms.sup.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.AreaDao;
import com.pms.sup.entity.TArea;

@Service("areaBiz")
@Transactional(readOnly=true)
public class AreaBiz {

	@Autowired
	private AreaDao areaDao;
	public List<TArea> selectAllArea() throws Exception{
		return areaDao.selectAllArea();
	}
}
