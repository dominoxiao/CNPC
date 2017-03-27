package com.pms.sup.biz;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.ProviderChangeDao;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;

@Service("providerChangeBiz")
@Transactional(readOnly=true)
public class ProviderChangeBiz {
	@Autowired
	private ProviderChangeDao providerChangeDao;
	
	public TProviderChange getPreRecord() throws Exception{
		return providerChangeDao.getChangeRecord();
	}
	
	// 查询供应商准入申请（根据供应商编号）
	public Map<String, Object> getApplyRecord(String pno) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		TProvider provider = providerChangeDao.getProvider(pno);
		TProviderApply apply = providerChangeDao.getProviderApply(provider.getPano());
		TContacter contacter = providerChangeDao.getProviderApplyContacter(provider.getPano());
		TCompany company = providerChangeDao.getProviderApplyCompany(provider.getPano());
		TProviderDetail detail = providerChangeDao.getProviderApplyDetail(provider.getPano());
		map.put("state", provider.getState());
		map.put("apply", apply);
		map.put("contacter", contacter);
		map.put("company", company);
		map.put("detail", detail);
		return map;
	}
	
	// 查询供应商准入申请（根据申请编号）
	public Map<String, Object> getApplyRecordByID(String pano) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		TProviderApply apply = providerChangeDao.getProviderApply(pano);
		TContacter contacter = providerChangeDao.getProviderApplyContacter(pano);
		TCompany company = providerChangeDao.getProviderApplyCompany(pano);
		TProviderDetail detail = providerChangeDao.getProviderApplyDetail(pano);
		map.put("state", "正常");
		map.put("apply", apply);
		map.put("contacter", contacter);
		map.put("company", company);
		map.put("detail", detail);
		return map;
	}


	public TProviderChange getProviderChange(TProviderChange change) throws Exception{
		TProviderChange curChange = null;
		List<TProviderChange> changes = providerChangeDao.getModifyApplyRecord(change);
		if(changes.size()>0){
			curChange = providerChangeDao.getModifyApplyRecord(change).get(0);
		}
		return curChange;
	}
		
	// 将准入申请转化为信息变更的格式
    public TProviderChange transApplyToChange(String pno, TProviderApply apply, TContacter contacter, TCompany company, TProviderDetail detail){
    	TProviderChange providerChange = new TProviderChange();
		providerChange.setPno(pno);
		providerChange.setPname(apply.getPname());
		providerChange.setPtype(apply.getPtype());
		providerChange.setPtype2(apply.getPtype2());
		providerChange.setAmount(apply.getAmount());
		providerChange.setRanke(apply.getRanke());
		providerChange.setGsRegno(apply.getGsRegno());
		providerChange.setTaxguo(apply.getTaxguo());
		providerChange.setTaxdi(apply.getTaxdi());
		providerChange.setOrgcode(apply.getOrgcode());
		providerChange.setAgent(apply.getAgent());
		providerChange.setAddress(apply.getAddress());
		providerChange.setPfrom(apply.getPfrom());
		providerChange.setCountry(detail.getCountry());
		providerChange.setPaddress(detail.getPaddress());
		providerChange.setDetails(detail.getDetails());
		providerChange.setZipcode(detail.getZipcode());
		providerChange.setBizscope(detail.getBizscope());
		providerChange.setQm(detail.getQm());
		providerChange.setQmOrg(detail.getQmOrg());
		providerChange.setQc(detail.getQc());
		providerChange.setQcOrg(detail.getQcOrg());
		providerChange.setMlan(detail.getMlan());
		providerChange.setAwards(detail.getAwards());
		providerChange.setFname(company.getFname());
		providerChange.setCtype(company.getCtype());
		providerChange.setHytype(company.getHytype());
		providerChange.setBigtype(company.getBigtype());
		providerChange.setZczb(company.getZczb());
		providerChange.setBegindate(company.getBegindate());
		providerChange.setBank(company.getBank());
		providerChange.setBankno(company.getBankno());
		providerChange.setCreditLevel(company.getCreditLevel());
		providerChange.setTel(company.getTel());
		providerChange.setFax(company.getFax());
		providerChange.setAddress2(company.getAddress());
		providerChange.setCname(contacter.getCname());
		providerChange.setMobile(contacter.getMobile());
		providerChange.setPhone(contacter.getTel());
		providerChange.setEmail(contacter.getEmail());
		
		return providerChange;
    }
	
    // 提交信息变更申请
    @Transactional(rollbackFor = Throwable.class)
	public Boolean submitModifyApply(TProviderChange newModify, TProviderChangeData providerChangeData) throws Exception{
		Boolean result = true;
		TProviderChange change = new TProviderChange();
		change.setPno(newModify.getPno());
		change.setState("待审批");
		
		if(providerChangeDao.getModifyApplyRecord(change).size() == 0){
			providerChangeDao.saveModifyApply(newModify);
			List<String> list = providerChangeDao.getModifyApplyID(newModify.getPno());
			providerChangeData.setApplyno(list.get(0));
			providerChangeDao.saveModifyApplyFiles(providerChangeData);
		}else{
			result = false;
		}
		
		return result;
	}
	
	// 提交信息变更申请审批
	@Transactional(rollbackFor = Throwable.class)
	public void submitChangeAudit(TProviderChangeAudit changeAudit, TProviderChange change) throws Exception{
		providerChangeDao.addChangeAuditData(changeAudit);
		providerChangeDao.updateModifyApplyState(change);
	}
	
	// 分页统计信息变更申请总数
	public Integer count(Map<String, Object> map) throws Exception{
		return providerChangeDao.count(map);
	}
	
	// 分页查询信息变更申请列表
	public List<TProviderChange> getList(Map<String,Object> map) throws Exception{
		return providerChangeDao.getList(map);
	}
	

}
