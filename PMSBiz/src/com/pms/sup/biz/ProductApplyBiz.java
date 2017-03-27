package com.pms.sup.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.ProductApplyDao;
import com.pms.sup.entity.TGoods2;
import com.pms.sup.entity.TGoodsApply;
import com.pms.sup.entity.TGoodsAudit;

@Service("productApplyBiz")
@Transactional(readOnly=true)
public class ProductApplyBiz {
	@Autowired
	private ProductApplyDao productApplyDao;
	public void proApply(TGoodsApply tGoodsApply) throws Exception{
		productApplyDao.productApply(tGoodsApply);
	}
	public List<TGoodsApply> productCheck(String state) throws Exception{
	    return productApplyDao.productCheck(state);
	}
	public TGoodsApply QueryApplyB(TGoodsApply tGoodsApply) throws Exception{
		return productApplyDao.QueryApply(tGoodsApply);
	}
	public void ApplySub(TGoodsAudit tGoodsAudit) throws Exception{
		productApplyDao.ApplySubmit(tGoodsAudit);
	}
	public void UpdateSta(TGoodsApply tGoodsApply) throws Exception{
		productApplyDao.UpdateState(tGoodsApply);
	}

}
