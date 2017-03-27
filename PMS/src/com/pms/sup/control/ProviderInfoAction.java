package com.pms.sup.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pms.sup.biz.ProviderInfoBiz;
import com.pms.sup.biz.ProviderPlanBiz;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderAudit;
import com.pms.sup.entity.TProviderDetail;
import com.pms.sup.entity.TProviderPlan;
import com.pms.sup.entity.TProviderQualification;
import com.pms.sup.entity.TUser;

@Controller
public class ProviderInfoAction {

	@Autowired
	private ProviderInfoBiz providerInfoBiz;
	@Autowired
	private ProviderPlanBiz providerPlanBiz;
	/**
	 * ׼����Ϣ��д��һ���ݴ�[��Ӧ��]
	 * @param tProviderApply
	 * @param tContacter
	 * @return
	 */
	@RequestMapping(value="/access/stepone", method=RequestMethod.POST)
	@ResponseBody
	public void saveInfoStepOne(HttpServletRequest request,TProviderApply tProviderApply,TContacter tContacter){
		
		try {
			HttpSession session = request.getSession();
			Object object = session.getAttribute("Provider");
			if(object!=null){
				String applynumber = System.currentTimeMillis()+"";
				tProviderApply.setPano(applynumber);
				session.setAttribute("applynumber", applynumber);
				
				SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
				String dateString = sdf.format(new Date());
				Date applyDate = sdf.parse(dateString);
				tProviderApply.setApplyDate(applyDate);				
				
				TProviderPlan tProviderPlan = providerPlanBiz.getPassPlan().get(0);
				String plannumber = tProviderPlan.getPlanid();
				tProviderApply.setPlanid(plannumber);
				
				tContacter.setPano(applynumber);
				tProviderApply.setState("1");
				session.setAttribute("tProviderApply", tProviderApply);
				session.setAttribute("tContacter", tContacter);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		//return "";
	}
	
	/**
	 * ׼����Ϣ��д�����һ��[��Ӧ��]
	 * @param request
	 * @param tProviderApply
	 * @param tContacter
	 * @return
	 */
	@RequestMapping(value="/access/steponenext", method=RequestMethod.POST)
	public String saveInfoStepOneNext(HttpServletRequest request,TProviderApply tProviderApply,TContacter tContacter){
		saveInfoStepOne(request,tProviderApply,tContacter);
		return "/provider_access/sup_access_apply_two.jsp";
	}
	
	/**
	 * ���湩Ӧ����ϸ��Ϣ
	 * @param request
	 * @param tProviderDetail
	 * @param province
	 * @param city
	 */
	@RequestMapping(value="/access/steptwo", method=RequestMethod.POST)
	@ResponseBody
	public void saveInfoStepTwo(HttpServletRequest request,TProviderDetail tProviderDetail,String province,String city){
		try {
			tProviderDetail.setPaddress(province+city);
			HttpSession session = request.getSession();
			session.setAttribute("tProviderDetail", tProviderDetail);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/access/steptwonext",method=RequestMethod.POST)
	public String saveInfoStepTwoNext(HttpServletRequest request,TProviderDetail tProviderDetail,String province,String city){
		saveInfoStepTwo(request,tProviderDetail,province,city);
		return "/provider_access/sup_access_apply_three.jsp";
	}
	/**
	 * ���湩Ӧ��׼�������������Ϣ
	 * @param request
	 * @param tCompany
	 * @param tQualification
	 * @param filelist
	 * @return
	 */
	@RequestMapping(value="/access/stepthree",method=RequestMethod.POST)
	public String saveInfoStepThree(HttpSession session,TCompany tCompany,TProviderQualification tQualification,@RequestParam("files") MultipartFile[] filelist){
		//HttpSession session = request.getSession();
		if(filelist!=null&&filelist.length>0){  
	            byte[] bizlicense = getfile(filelist[0]);
	            tQualification.setBizlicense(bizlicense);
	            byte[] organize = getfile(filelist[1]);
	            tQualification.setOrganize(organize);
	            byte[] taxguo = getfile(filelist[2]);
	            tQualification.setTaxguo(taxguo);
	            byte[] itaxdi = getfile(filelist[3]);
	            tQualification.setLtaxdi(itaxdi);
	            byte[] bankcertificate = getfile(filelist[4]);
	            tQualification.setBankcertificate(bankcertificate);
	    }
		tQualification.setBizlicenseFdate(getDate(tQualification.getBizlicenseFdate()));
		tQualification.setOrganizeFdate(getDate(tQualification.getOrganizeFdate()));
		tQualification.setTaxguoFdate(getDate(tQualification.getTaxguoFdate()));
		tQualification.setLtaxdiFdate(getDate(tQualification.getLtaxdiFdate()));
		tQualification.setBankcertificateFdate(getDate(tQualification.getBankcertificateFdate()));
	    try {
	    	TProviderApply tProviderApply = (TProviderApply) session.getAttribute("tProviderApply");
	    	tCompany.setPano(tProviderApply.getPano());
	    	tQualification.setPano(tProviderApply.getPano());
	    	TContacter tContacter = (TContacter) session.getAttribute("tContacter");
	    	TProviderDetail tProviderDetail = (TProviderDetail) session.getAttribute("tProviderDetail");
	    	tProviderDetail.setPano(tProviderApply.getPano());
	    	TUser user = (TUser) session.getAttribute("user");
			providerInfoBiz.saveInfoStepThree(user,tProviderApply,tContacter,tCompany,tProviderDetail,tQualification);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/index_admin.jsp";
	}
	public Date getDate(Date date){
		Date result=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String dateString = sdf.format(date);
		try {
			result = sdf.parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public byte[] getfile(MultipartFile file){
		byte[] bytes = null;
		try {
			if (!file.isEmpty()) {				
					bytes = file.getBytes();			
	        }
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bytes;
	}
	/**
	 * ��ѯ��Ҫ��˵Ĺ�Ӧ������
	 * @return
	 */
	@RequestMapping(value="/admin/access/selectProviderApply",method=RequestMethod.POST)
	@ResponseBody
	public List<TProviderApply> geTProviderApplies(HttpSession session,String pano){
		Object object = session.getAttribute("worker");
		List<TProviderApply> tProviderApplies = null;
		try {
			if(object !=null){
				TUser user = (TUser)object;
				String role = user.getRole();
				String state = "";
				if("2".equals(role)){//רҵ������
					state = "1";
				}else if("3".equals(role)){//����ίԱ��
					state = "2";
				}else if("4".equals(role)) {//��ɲ���
					state = "4";
				}
				
				tProviderApplies =	providerInfoBiz.selecAppliesByState(state,pano);
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tProviderApplies;
	}

	/**
	 * ��˹�Ӧ������
	 * @param pano
	 * @param method
	 */
	@RequestMapping(value="/admin/access/checkfirst",method=RequestMethod.POST)
	@ResponseBody
	public void updateApplyState(HttpSession session,String pano,String method){
		Object object = session.getAttribute("worker");
		try {
			if(object !=null){
				TUser user = (TUser)object;
				String role = user.getRole();
				String state = "";
				if("2".equals(role)){//רҵ������
					if("pass".equals(method)){
						state = "2";
					}else if("refuse".equals(method)){
						state = "3";
					}
				}else if("3".equals(role)){//����ίԱ��
					if("pass".equals(method)){
						state = "4";
					}else if("refuse".equals(method)){
						state = "5";
					}
				}
				providerInfoBiz.updateApplyState(state, pano);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * ���������Ų�ѯ��Ӧ��
	 * @param pano
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/admin/access/selectProviderByPano",method=RequestMethod.GET)
	public String selectProviderByPano(String pano,Model model){
		try {
			TProviderApply tProviderApply = providerInfoBiz.selectProviderApplyByPano(pano);
			 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			 String dateString = sdf.format(tProviderApply.getApplyDate());
			model.addAttribute("tProviderApply", tProviderApply);
			 model.addAttribute("applydate",dateString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/provider_access/sup_access_check_final.jsp";
	}
	@RequestMapping(value="/admin/access/checkfinal",method=RequestMethod.POST)
	public String providerAuditFinal(TProviderAudit tProviderAudit,String pname){
		try {
			 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			 String dateString = sdf.format(new Date());
			 tProviderAudit.setAdate(sdf.parse(dateString));
			 tProviderAudit.setAorg("��ɲ���");
			 tProviderAudit.setSynchro(1);
			 providerInfoBiz.saveProviderAudit(tProviderAudit,pname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/provider_access/sup_access_check.jsp";
	}
	@RequestMapping(value="/admin/access/back",method=RequestMethod.GET)
	public String back(){
		return "/provider_access/sup_access_check.jsp";
	}

}
