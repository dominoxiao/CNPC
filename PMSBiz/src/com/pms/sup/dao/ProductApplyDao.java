package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IProductApply;
import com.pms.sup.batis.IProductCheck;
import com.pms.sup.entity.TGoodsApply;
import com.pms.sup.entity.TGoodsAudit;

@Repository("productApplyDao")
public class ProductApplyDao {
	@Autowired
	private IProductApply  iProductApply;
	@Autowired
	private IProductCheck iProductCheck;
	public void productApply(TGoodsApply tGoodsApply) throws Exception{
		iProductApply.productApply(tGoodsApply);
	}
	public List<TGoodsApply> productCheck(String state) throws Exception{
		return iProductCheck.ProductCheck(state);
	}
	public TGoodsApply QueryApply(TGoodsApply tGoodsApply) throws Exception{
		return iProductCheck.QueryApply(tGoodsApply);
	}
	public void ApplySubmit(TGoodsAudit tGoodsAudit) throws Exception{
		iProductCheck.ApplySubmit(tGoodsAudit);
	}
	public void UpdateState(TGoodsApply tGoodsApply) throws Exception{
		iProductCheck.ModState(tGoodsApply);
	}
}
