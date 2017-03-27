package com.pms.sup.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/auditcommit/improve")
public class Admin2Improve {
	@RequestMapping(value = {"/adm2_appr_plan"},method=RequestMethod.GET)
	public String admAckPlan()throws Exception{
		
		return "/provider_improve/adm2_appr_plan.jsp";
	}
	@RequestMapping(value = {"/adm2_query_page"},method=RequestMethod.GET)
	public String supQueryPage()throws Exception{
		
		return "/provider_improve/adm2_query_page.jsp";
	}
	@RequestMapping(value = {"/adm2_query_planstate"},method=RequestMethod.GET)
	public String admQueryPlanstate()throws Exception{
		
		return "/provider_improve/adm2_query_planstate.jsp";
	}
}
