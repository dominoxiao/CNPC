package com.pms.sup.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/progroup/improve")
public class Admin1Improve {
	@RequestMapping(value = {"/adm_ack_plan"},method=RequestMethod.GET)
	public String admAckPlan()throws Exception{
		
		return "/provider_improve/adm_ack_plan.jsp";
	}
	@RequestMapping(value = {"/adm_edit_plan"},method=RequestMethod.GET)
	public String admEditPlan()throws Exception{
		
		return "/provider_improve/adm_edit_plan.jsp";
	}
	@RequestMapping(value = {"/adm_query_page"},method=RequestMethod.GET)
	public String supQueryPage()throws Exception{
		
		return "/provider_improve/adm_query_page.jsp";
	}
	@RequestMapping(value = {"/adm_mod_plan"},method=RequestMethod.GET)
	public String admModPlan()throws Exception{
		
		return "/provider_improve/adm_mod_plan.jsp";
	}
	@RequestMapping(value = {"/adm_query_planstate"},method=RequestMethod.GET)
	public String admQueryPlanstate()throws Exception{
		
		return "/provider_improve/adm_query_planstate.jsp";
	}
	
	@RequestMapping(value = {"/adm_cancel_plan"},method=RequestMethod.GET)
	public String admCancelPlan()throws Exception{
		
		return "/provider_improve/adm_cancel_plan.jsp";
	}
	@RequestMapping(value = {"/adm_cancel_result"},method=RequestMethod.GET)
	public String admCancelResult()throws Exception{
		
		return "/provider_improve/adm_cancel_result.jsp";
	}
	@RequestMapping(value = {"/adm_choose_sup"},method=RequestMethod.GET)
	public String admChooseSup()throws Exception{
		
		return "/provider_improve/adm_choose_sup.jsp";
	}
	@RequestMapping(value = {"/adm_edit_result"},method=RequestMethod.GET)
	public String admEditResult()throws Exception{
		
		return "/provider_improve/adm_edit_result.jsp";
	}
	@RequestMapping(value = {"/adm_mod_result"},method=RequestMethod.GET)
	public String admModResult()throws Exception{
		
		return "/provider_improve/adm_mod_result.jsp";
	}
}
