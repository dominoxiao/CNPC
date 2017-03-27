package com.pms.sup.batis;

import java.util.List;
import java.util.Map;

import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;

public interface IProviderChange {
	
	/**
	 * 查询信息变更申请记录
	 * @return
	 * @throws Exception
	 */
	public TProviderChange getChangeRecord() throws Exception;
	
	/**
	 * 查询信息准入申请记录
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public TProviderApply getProviderApply(String pano) throws Exception;
	
	/**
	 * 查询准入申请号（根据供应商编号）
	 * @param pno
	 * @return
	 * @throws Exception
	 */
	public String getProviderApplyID(String pno) throws Exception;
	
	/**
	 * 查询供应商
	 * @return
	 * @throws Exception
	 */
	public TProvider getProvider(String pno) throws Exception;
	
	/**
	 * 查询信息准入申请记录（联系人）
	 */
	public TContacter getProviderApplyContacter(String pano) throws Exception;
	
	/**
	 * 查询信息准入申请记录（所在公司情况）
	 */
	public TCompany getProviderApplyCompany(String pano) throws Exception;
	
	/**
	 * 查询信息准入申请记录（详细信息）
	 */
	public TProviderDetail getProviderApplyDetail(String pano) throws Exception;
	
	/**
	 * 提交供应商信息变更申请
	 */
//	public void addModifyApply(Map<String, Object> map) throws Exception;
	public void addModifyApply(TProviderChange change) throws Exception;
	
	/**
	 * 获取信息变更申请记录（供应商编号）
	 */
	public List<String> getModifyApplyID(String pno) throws Exception;
	
	/**
	 * 添加变更申请证明材料
	 */
	public void addChangeData(TProviderChangeData changeData) throws Exception;
	
	/**
	 * 获取信息变更申请记录
	 */
	public List<TProviderChange> getModifyApplyRecords(TProviderChange change) throws Exception;
	
	/**
	 * 分页获取信息变更申请列表
	 */
   public List<TProviderChange> findModifyApplyList(Map<String, Object> map) throws Exception;
   
   /**
    *  分页统计信息变更申请总数
    */
   public Integer countModifyApply(Map<String, Object> map) throws Exception;
   
  /**
   * 添加变更申请审批
   */
   public void addChangeAuditData(TProviderChangeAudit changeAudit) throws Exception;
   
   /*
    * 更新信息变更申请表的审批状态
    */
   public void updateModifyApplyState(TProviderChange change) throws Exception;
	

}
