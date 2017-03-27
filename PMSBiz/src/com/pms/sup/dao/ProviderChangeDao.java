package com.pms.sup.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.IProviderChange;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;

@Repository("providerChangeDao")
public class ProviderChangeDao {
	
	@Autowired
	private IProviderChange providerChange;
	
	/**
	 * 查询信息变更记录
	 * @return
	 * @throws Exception
	 */
	public TProviderChange getChangeRecord() throws Exception{
		return providerChange.getChangeRecord();
	}
	
	/**
	 * 查询信息准入申请
	 */
	public TProviderApply getProviderApply(String pano) throws Exception{
		return providerChange.getProviderApply(pano);
	}
	
	/**
	 * 查询供应商
	 */
	public TProvider getProvider(String pno) throws Exception{
		return providerChange.getProvider(pno);
	}
	
	/**
	 * 查询信息准入申请号（根据供应商编号）
	 */
	public String getProviderApplyID(String pno) throws Exception{
		return providerChange.getProviderApplyID(pno);
	}
	
	/**
	 * 查询信息准入申请(联系人信息)
	 * @param pano
	 * @return
	 * @throws Exception
	 */
	public TContacter getProviderApplyContacter(String pano) throws Exception{
		return providerChange.getProviderApplyContacter(pano);
	}
	
	/**
	 * 查询信息准入申请(所在公司情况)
	 */
	public TCompany getProviderApplyCompany(String pano) throws Exception{
		return providerChange.getProviderApplyCompany(pano);
	}
	
	/**
	 * 查询信息准入申请(详细信息)
	 */
	public TProviderDetail getProviderApplyDetail(String pano) throws Exception{
		return providerChange.getProviderApplyDetail(pano);
	}
	
	/**
	 * 提交供应商信息变更申请
	 */
	public void saveModifyApply(TProviderChange change) throws Exception{
		providerChange.addModifyApply(change);
	}
	
	/**
	 * 获取信息变更申请记录ID（根据供应商编号）
	 */
	public List<String> getModifyApplyID(String pno) throws Exception{
		return providerChange.getModifyApplyID(pno);
	}
	
	/**
	 * 获取信息变更申请记录ID
	 */
	public List<TProviderChange> getModifyApplyRecord(TProviderChange change) throws Exception{
		return providerChange.getModifyApplyRecords(change);
	}
	
	/**
	 * 提交信息变更附件
	 */
	public void saveModifyApplyFiles(TProviderChangeData changeData) throws Exception{
		providerChange.addChangeData(changeData);
	}
	
	/**
	 * 分页统计信息变更申请总数
	 */
	public Integer count(Map<String, Object> map) throws Exception{
		return providerChange.countModifyApply(map);
	}
	
	/**
	 * 分页查询信息变更申请列表
	 */
	public List<TProviderChange> getList(Map<String,Object> map) throws Exception{
		return providerChange.findModifyApplyList(map);
	}
	
	/**
	 * 添加信息变更申请审批
	 */
	public void addChangeAuditData(TProviderChangeAudit changeAudit) throws Exception{
		providerChange.addChangeAuditData(changeAudit);
	}
	
	/**
	 * 更新信息变更表中的审批状态
	 */
	public void updateModifyApplyState(TProviderChange change) throws Exception{
		providerChange.updateModifyApplyState(change);
	}
}
