package com.pms.sup.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/provider")
public class ProviderImprove {
	@RequestMapping(value = {"/sup_cancel_plan"},method=RequestMethod.GET)
	public String supCancelPlan()throws Exception{
		
		return "/provider_improve/sup_cancel_plan.jsp";
	}
	@RequestMapping(value = {"/sup_edit_plan"},method=RequestMethod.GET)
	public String supEditPlan()throws Exception{
		
		return "/provider_improve/sup_edit_plan.jsp";
	}
	@RequestMapping(value = {"/sup_query_page"},method=RequestMethod.GET)
	public String supQueryPage()throws Exception{
		
		return "/provider_improve/sup_query_page.jsp";
	}
	@RequestMapping(value = {"/sup_mod_plan"},method=RequestMethod.GET)
	public String supModPlan()throws Exception{
		
		return "/provider_improve/sup_mod_plan.jsp";
	}
	@RequestMapping(value = {"/sup_query_planstate"},method=RequestMethod.GET)
	public String supQueryPlanstate()throws Exception{
		
		return "/provider_improve/sup_query_planstate.jsp";
	}
}