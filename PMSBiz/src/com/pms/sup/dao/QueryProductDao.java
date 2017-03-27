package com.pms.sup.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IQueryProduct;
import com.pms.sup.entity.TGoods2;

@Repository("queryProductDao")
public class QueryProductDao {
	@Autowired
	private IQueryProduct queryproMapper;
	public TGoods2 queryGoods2(String gname) throws Exception{
		return queryproMapper.QueryPro(gname);
	}
	public TGoods2 queryGoods2Byid(String gno) throws Exception{
		return queryproMapper.QueryProById(gno);
	}

}
