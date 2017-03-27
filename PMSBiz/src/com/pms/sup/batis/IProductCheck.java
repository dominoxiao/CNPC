package com.pms.sup.batis;

import java.util.List;

import com.pms.sup.entity.TGoodsApply;
import com.pms.sup.entity.TGoodsAudit;


public interface IProductCheck {
	public List<TGoodsApply> ProductCheck(String state) throws Exception;
	public TGoodsApply QueryApply(TGoodsApply tGoodsApply) throws Exception;
	public void ApplySubmit(TGoodsAudit tGoodsAudit) throws Exception;
	public void ModState(TGoodsApply tGoodsApply) throws Exception;
}
