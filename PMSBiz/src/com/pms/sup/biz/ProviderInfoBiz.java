package com.pms.sup.biz;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pms.sup.dao.ProviderInfoDao;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProvider;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderAudit;
import com.pms.sup.entity.TProviderDetail;
import com.pms.sup.entity.TProviderQualification;
import com.pms.sup.entity.TUser;

@Service("providerInfoBiz")
@Transactional(readOnly = true)
public class ProviderInfoBiz {

	@Autowired
	private ProviderInfoDao providerInfoDao;
	
	@Transactional(rollbackFor = Throwable.class)
	public void saveInfoStepThree(TUser user, TProviderApply tProviderApply,
			TContacter tContacter, TCompany tCompany,
			TProviderDetail tProviderDetail,
			TProviderQualification tQualification) throws Exception {
		providerInfoDao.saveProviderApply(tProviderApply);
		providerInfoDao.saveContacter(tContacter);
		providerInfoDao.saveCompany(tCompany);
		providerInfoDao.saveProviderDetail(tProviderDetail);
		providerInfoDao.saveQualification(tQualification);
		String uname = user.getUname();
		String empno = "0-" + tProviderApply.getPano();
		providerInfoDao.updateEmpno(empno, uname);
	}

	public List<TProviderApply> selecAppliesByState(String state, String pano)
			throws Exception {
		if (pano == null || "".equals(pano)) {
			return providerInfoDao.selecAppliesByState(state);
		} else {
			return providerInfoDao.selecAppliesByState(state, pano);
		}

	}

	public void updateApplyState(String state, String pano) throws Exception {
		providerInfoDao.updateApplyState(state, pano);
	}

	public TProviderApply selectProviderApplyByPano(String pano)
			throws Exception {
		return providerInfoDao.selectProviderApplyByPano(pano);
	}

	@Transactional(rollbackFor = Throwable.class)
	public void saveProviderAudit(TProviderAudit tProviderAudit, String pname)
			throws Exception {

		int isagree = tProviderAudit.getIsagree();
		String state = "";
		if (isagree == 1) {
			state = "6";
			String pano = tProviderAudit.getPano();
			// ApplicationContext cxt = new
			// ClassPathXmlApplicationContext("client-beans.xml");
			// IMasterDataManagement
			// masterDataManagement=(IMasterDataManagement)cxt.getBean("masterClient");
			// String pno = masterDataManagement.getSupCode(pano);
			String pno = Long.toString(System.currentTimeMillis());
			TProvider tProvider = new TProvider();
			tProvider.setPno(pno);
			tProvider.setPano(pano);
			tProvider.setPname(pname);
			tProvider.setCertificateno(System.currentTimeMillis() + "");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String dateString = sdf.format(new Date());
			tProvider.setPubDate(sdf.parse(dateString));

			Calendar calendar = Calendar.getInstance();
			Date date = new Date();
			calendar.setTime(date);
			calendar.add(Calendar.YEAR, +1);
			date = calendar.getTime();
			String enddate = sdf.format(date);
			tProvider.setEndDate(sdf.parse(enddate));

			tProvider.setState("0");
			providerInfoDao.saveProvider(tProvider);
			String newempno = "1-" + pno;
			String oldempno = "0-" + pano;
			providerInfoDao.updateEmpno2(newempno, oldempno);

		} else if (isagree == 0) {
			state = "7";
		}

		providerInfoDao.saveProviderAudit(tProviderAudit);
		providerInfoDao.updateApplyState(state, tProviderAudit.getPano());

	}
}
