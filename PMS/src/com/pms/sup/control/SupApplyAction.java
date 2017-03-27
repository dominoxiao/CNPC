package com.pms.sup.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
//战略供应商申请页面
@RequestMapping("/admin")
public class SupApplyAction {
	@RequestMapping(value="/progroup/supApply", method=RequestMethod.GET)
	public String makesupform(){
		return "/strategicsupplier_manage/profess_apply_supplyer.jsp";
		
	}
//战略供应商提交页面
	@RequestMapping("/progroup/supApply/sub")
		public String SupApplyActionsub(){
		return "/strategicsupplier_manage/sucsub.jsp";
			
		}
//战略供应商提交返回页面
	@RequestMapping("/progroup/supApply/subsuc1")
	public String success1(){
		return "/strategicsupplier_manage/profess_apply_supplyer.jsp";
		
	}
//战略物资申请页面
	@RequestMapping("/progroup/mateApply")
	public String makemateform(){
		return "/strategicsupplier_manage/profess_apply_material.jsp";
		
	}
//战略物资提交页面
	@RequestMapping("/progroup/mateApply/sub")
	public String makemateformsub(){
		return "/strategicsupplier_manage/sucsub2.jsp";
		
	}
//战略物资提交返回页面
	@RequestMapping("/progroup/supApply/subsuc2")
	public String success2(){
		return "/strategicsupplier_manage/profess_apply_material.jsp";
		
	}
//战略物资评分
	@RequestMapping("/progroup/mateScore")
	public String mateScore(){
		return "/strategicsupplier_manage/score.jsp";
	}

//评审委员会评审战略供应商
	@RequestMapping("/auditcommit/reviewsup")
	public String audreviewsup(){
		return "/strategicsupplier_manage/reviewer_review_supplyer.jsp";
	}
//评审委员会给出供应商通过与否意见
	@RequestMapping("/auditcommit/reviewsup2")
	public String audreviewsup2(){
		return "/strategicsupplier_manage/reviewer_review_supplyer2.jsp";
	}
//评审委员会返回评审供应商页面
	@RequestMapping("/auditcommit/backsup")
	public String audbacksup(){
		return "/strategicsupplier_manage/reviewer_review_supplyer.jsp";
	}
//评审委员会评审战略物资
	@RequestMapping("/auditcommit/reviewmate")
	public String auditreviewmate(){
		return "/strategicsupplier_manage/reviewer_review_material.jsp";
	}
//评审委员会给出战略物资通过与否意见
	@RequestMapping("/auditcommit/reviewmate2")
	public String auditreviewmate2(){
		return "/strategicsupplier_manage/reviewer_review_material2.jsp";
	}
//评审委员会返回评审战略物资页面
	@RequestMapping("/auditcommit/backmate")
	public String audbackmate(){
		return "/strategicsupplier_manage/reviewer_review_material.jsp";
	}
//总部物采部核准战略供应商
	@RequestMapping("/buydept/allowsup")
	public String buyallowsup(){
		return "/strategicsupplier_manage/purchase_allow_supplyer.jsp";
	}
//总部物采部核准战略物资
	@RequestMapping("/buydept/allowmate")
	public String buyallowmate(){
		return "/strategicsupplier_manage/purchase_allow_material.jsp";
	}
//总部物采部给出战略供应商通过与否的意见
	@RequestMapping("/buydept/allowsup2")
	public String buyallowsup2(){
		return "/strategicsupplier_manage/purchase_allow_supplyer2.jsp";
	}
//总部物采部给出战略物资通过与否的意见
	@RequestMapping("/buydept/allowmate2")
	public String buyallowmate2(){
		return "/strategicsupplier_manage/purchase_allow_material2.jsp";
	}
//总部物采部返回核准战略供应商界面
	@RequestMapping("/buydept/backsup")
	public String buybacksup(){
		return "/strategicsupplier_manage/purchase_allow_supplyer.jsp";
	}
//总部物采部返回核准战略物资界面
	@RequestMapping("/buydept/backmate")
	public String buybackmate(){
		return "/strategicsupplier_manage/purchase_allow_material.jsp";
	}
}
