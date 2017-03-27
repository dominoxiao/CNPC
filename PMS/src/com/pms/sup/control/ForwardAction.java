package com.pms.sup.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ForwardAction {

	@RequestMapping("/main")
	public String Main(){
		return "/main_admin.jsp";
	}
	@RequestMapping("/indexAdmin")
	public String IndexAdmin(){
		return "/index_admin.jsp";
	}
	@RequestMapping("/indexProviders")
	public String IndexProviders(){
		return "/index_providers.jsp";
	}
	@RequestMapping("/admin/adm_access_plan_apply")
	public String AdmAccessPlanApply(){
		return "/provider_access/adm_access_plan_apply.jsp";
	}
	@RequestMapping("/admin/access_plan_select")
	public String AccessPlanSelect(){
		return "/provider_access/adm_access_plan_select.jsp";
	}
	/*@RequestMapping("/sup_access_apply_two")
	public String supAccessApplytwo(){
		return "/provider_access/sup_access_apply_two.jsp";
	}
	@RequestMapping("/sup_access_apply_three")
	public String supAccessApplythree(){
		return "/provider_access/sup_access_apply_three.jsp";
	}
	@RequestMapping("/sup_product_apply_one")
	public String supProductApplyOne(){
		return "/provider_access/sup_product_apply_one.jsp";
	}*/
	@RequestMapping("/admin/sup_access_check")
	public String supAccessCheck(){
		return "/provider_access/sup_access_check.jsp";
	}
	
	@RequestMapping("/admin/adm_send_notificationt")
	public String admSendNotificationt(){
		return "/annual_verification/adm_send_notificationt.jsp";
	}
	@RequestMapping("/admin/sup_browse_files")
	public String supBrowseFiles(){
		return "/annual_verification/sup_browse_files.jsp";
	}
	@RequestMapping("/admin/adm_receive_material")
	public String admReceiveMaterial(){
		return "/annual_verification/adm_receive_material.jsp";
	}
	@RequestMapping("/admin/adm_receive_material_detail")
	public String admReceiveMaterialDetail(){
		return "/annual_verification/adm_receive_material_detail.jsp";
	}
	@RequestMapping("/provider/sup_receive_notification")
	public String supReceiveNotification(){
		return "/annual_verification/sup_receive_notification.jsp";
		
	}
	@RequestMapping("/admin/profess_die_submit")
	public String professDieSubmit(){
			return "/suppliers_dynamic/profess_die_submit.jsp";		
	}
	@RequestMapping("/admin/profess_die_submit_add")
	public String professDieSubmitAdd(){
			return "/suppliers_dynamic/profess_die_submit_add.jsp";		
	}
	@RequestMapping("/admin/profess_die_submit_select")
	public String professDieSubmitSelect(){
			return "/suppliers_dynamic/profess_die_submit_select.jsp";		
	}
	@RequestMapping("/admin/material_review_die_select")
	public String materialReviewDieSelect(){
			return "/suppliers_dynamic/material_review_die_select.jsp";		
	}
	@RequestMapping("/admin/material_review_die_check")
	public String materialReviewDieCheck(){
			return "/suppliers_dynamic/material_review_die_check.jsp";		
	}
	@RequestMapping("/admin/profess_frozen_submit")
	public String professFrozenSubmit(){
			return "/suppliers_dynamic/profess_frozen_submit.jsp";		
	}
	@RequestMapping("/admin/profess_frozen_submit_select")
	public String professFrozenSubmitSelect(){
			return "/suppliers_dynamic/profess_frozen_submit_select.jsp";		
	}
	@RequestMapping("/admin/material_review_frozen_select")
	public String materialReviewFrozenSelect(){
			return "/suppliers_dynamic/material_review_frozen_select.jsp";		
	}
	@RequestMapping("/admin/material_review_frozen_check")
	public String materialReviewFrozenCheck(){
			return "/suppliers_dynamic/material_review_frozen_check.jsp";		
	}
	@RequestMapping("/admin/profess_thaw_submit")
	public String professThawSubmit(){
			return "/suppliers_dynamic/profess_thaw_submit.jsp";		
	}
	@RequestMapping("/admin/profess_thaw_submit_select")
	public String professThawSubmitSelect(){
			return "/suppliers_dynamic/profess_thaw_submit_select.jsp";		
	}
	@RequestMapping("/admin/material_review_thaw_select")
	public String materialReviewThawSelect(){
			return "/suppliers_dynamic/material_review_thaw_select.jsp";		
	}
	@RequestMapping("/admin/material_review_thaw_check")
	public String materialReviewThawCheck(){
			return "/suppliers_dynamic/material_review_thaw_check.jsp";		
	}
	@RequestMapping("/admin/profess_frozen_submit_apply")
	public String professFrozenSubmitApply(){
			return "/suppliers_dynamic/profess_frozen_submit_apply.jsp";		
	}
	@RequestMapping("/admin/profess_thaw_submit_apply")
	public String professThawSubmitApply(){
			return "/suppliers_dynamic/profess_thaw_submit_apply.jsp";		
	}
	
}
