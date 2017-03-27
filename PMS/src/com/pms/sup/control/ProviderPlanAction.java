package com.pms.sup.control;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pms.sup.biz.ProviderPlanBiz;
import com.pms.sup.entity.TProviderPlan;
import com.pms.sup.entity.TProviderPlanAudit;

@Controller
public class ProviderPlanAction {

	@Autowired
	private ProviderPlanBiz providerPlanBiz;
	
	/**
	 * 准入方案申请
	 * @param tProviderPlan
	 * @param file
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/admin/access/applyPlan", method=RequestMethod.POST)
	public String saveProviderPlan(TProviderPlan tProviderPlan,@RequestParam("pic") MultipartFile file){
		
		try {			
			if (!file.isEmpty()) {			
				byte[] bytes = file.getBytes();
				tProviderPlan.setPlan(bytes);		
	        }
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			String dateString = sdf.format(new Date());
			Date applyDate= sdf.parse(dateString);
			tProviderPlan.setApplydate(applyDate);
			tProviderPlan.setPlanid(System.currentTimeMillis()+"");
			tProviderPlan.setState("0");
			providerPlanBiz.saveProviderPlan(tProviderPlan);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/provider_access/adm_access_plan_apply.jsp";
	}
	/**
	 * 准入方案查询
	 * @return
	 */
	@RequestMapping(value="/admin/access/adm_access_plan_select",method=RequestMethod.POST)
	@ResponseBody
	public List<TProviderPlan> getProvaderPlan(String planid,String page,String rows){
		List<TProviderPlan> tProviderPlans = null;
		try {
			tProviderPlans =  providerPlanBiz.getProviderPlans(planid,page,rows);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tProviderPlans;	
	}
	
	/**
	 * 下载准入方案
	 * @param planid
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/admin/access/downfile")
	 public ResponseEntity<byte[]> download(String planid) throws IOException { 
		 byte[] pic = null;
		 if(planid != null){
				try {
					TProviderPlan tProviderPlan = providerPlanBiz.downProviderPlan(planid);	
					pic = tProviderPlan.getPlan();
				} catch (Exception e) {
				}				
		  }		  
		  HttpHeaders headers = new HttpHeaders(); 
		  headers.setContentType(MediaType.APPLICATION_OCTET_STREAM); 
		  headers.setContentDispositionFormData("attachment", planid + ".rar"); 
		  return new ResponseEntity<byte[]>(pic, headers, HttpStatus.CREATED); 
     }
	 /**
	  * 审核方案前先查询要审核的方案
	  * @param planid
	  * @return
	  */
	 @RequestMapping("/admin/access/checkfirst")
	 public String chechPlanFirst(String planid,Model model){
		 TProviderPlan tProviderPlan = null;
		 try {
			 tProviderPlan = providerPlanBiz.getProviderPlanByPlanid(planid);
			 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
			 String dateString = sdf.format(tProviderPlan.getApplydate());
			//tProviderPlan.setApplydate(sdf.parse(dateString));
			 model.addAttribute("tProviderPlan", tProviderPlan);
			 model.addAttribute("applydate",dateString);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/provider_access/adm_access_plan_check.jsp";
		 
	 }
	 /**
	  * 返回
	  * @return
	  */
	 @RequestMapping("/admin/access/back")
	 public String back(){
		return "/provider_access/adm_access_plan_select.jsp";
	 }
	 /**
	  * 审核准入方案
	  * @param tProviderPlanAudit
	  */
	 @RequestMapping(value="/admin/access/checkPlan", method=RequestMethod.POST)
	 public String saveProviderPlanAudit(TProviderPlanAudit tProviderPlanAudit,String state){
			 try {
				 
				 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
					String dateString = sdf.format(new Date());
					Date applyDate= sdf.parse(dateString);
					
				tProviderPlanAudit.setaDate(applyDate);
				providerPlanBiz.saveProviderPlanAudit(tProviderPlanAudit,state);
			} catch (Exception e) {				
				e.printStackTrace();
			}
			return "/provider_access/adm_access_plan_select.jsp";
	}
	 @RequestMapping(value="/admin/access/findCheckResult",method=RequestMethod.POST)
	 @ResponseBody
	 public List<TProviderPlan> geTProviderPlanAudits(){
		 
		 List<TProviderPlan> plans = null;
			try {
				plans =  providerPlanBiz.getAllTProviderPlan();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return plans;	
	 }
	
}
