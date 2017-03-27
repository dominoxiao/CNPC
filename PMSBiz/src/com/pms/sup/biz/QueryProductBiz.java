package com.pms.sup.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.pms.sup.dao.QueryProductDao;
import com.pms.sup.entity.TGoods2;

@Service("queryProductBiz")
@Transactional(readOnly=true)
public class QueryProductBiz {
	@Autowired
	private QueryProductDao queryProductDao;
	public TGoods2 getProduct(String gname) throws Exception{
		return queryProductDao.queryGoods2(gname);
	}
	public TGoods2 getProductById(String gno) throws Exception{
		return queryProductDao.queryGoods2Byid(gno);
	}

}
