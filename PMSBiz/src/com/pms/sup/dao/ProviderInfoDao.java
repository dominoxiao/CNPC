package com.pms.sup.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pms.sup.batis.ICompany;
import com.pms.sup.batis.IContacter;
import com.pms.sup.batis.IProvider;
import com.pms.sup.batis.IProviderApply;
import com.pms.sup.batis.IProviderAudit;
import com.pms.sup.batis.IProviderDetail;
import com.pms.sup.batis.IQualification;
import com.pms.sup.batis.IUser;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderAudit;
import com.pms.sup.entity.TProviderDetail;
import com.pms.sup.entity.TProviderQualification;

@Repository("providerInfoDao")
public class ProviderInfoDao {

	@Autowired
	private IProviderApply providerApplyMapper;
	@Autowired
	private IContacter contacterMapper;
	@Autowired
	private IProviderDetail providerDetailMapper;
	@Autowired
	private IQualification qualificationMapper;
	@Autowired
	private ICompany companyMapper;
	@Autowired
	private IProviderAudit providerAuditMapper;
	@Autowired
	private IProvider providerMapper;
	@Autowired
	private IUser userMapper;
	public void saveProviderApply(TProviderApply tProviderApply) throws Exception{
		providerApplyMapper.saveProviderApply(tProviderApply);
	}
	public void saveContacter(TContacter tContacter) throws Exception{
		contacterMapper.saveContacter(tContacter);
	}
	public void saveProviderDetail(TProviderDetail tProviderDetail) throws Exception{
		providerDetailMapper.saveProviderDetail(tProviderDetail);
	}
	public void saveQualification(TProviderQualification tQualification) throws Exception{
		qualificationMapper.saveQualification(tQualification);
	}
	public void saveCompany(TCompany tCompany) throws Exception{
		companyMapper.saveCompany(tCompany);
	}
	public List<TProviderApply> selecAppliesByState(String state) throws Exception{
		return providerApplyMapper.selecAppliesByState(state);
	}
	public List<TProviderApply> selecAppliesByState(String state,String pano) throws Exception{
		return providerApplyMapper.selecAppliesByStateAndPano(state, pano);
	}
	public void updateApplyState(String state,String pano) throws Exception{
		providerApplyMapper.updateApplyState(state, pano);
	}
	public TProviderApply selectProviderApplyByPano(String pano) throws Exception{
		return providerApplyMapper.selectProviderApplyByPano(pano);
	}
	public void saveProviderAudit(TProviderAudit tProviderAudit) throws Exception{
		providerAuditMapper.saveProviderAudit(tProviderAudit);
	}
	public void saveProvider(TProvider tProvider) throws Exception{
		providerMapper.saveProvider(tProvider);
	}
	public void updateEmpno(String empno,String uname) throws Exception{
		userMapper.updateEmpno(empno,uname);
	}
	public void updateEmpno2(String newempno,String oldnewmpno) throws Exception{
		userMapper.updateEmpno2(newempno, oldnewmpno);
	}
}
