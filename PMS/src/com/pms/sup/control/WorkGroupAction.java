package com.pms.sup.control;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * 供应商考评----Controller
 *
 */
@Controller
public class WorkGroupAction {
	
	/**
	 * 跳转至    安排考评人员    页面
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/addTester",method=RequestMethod.GET)
	public String addTester(){
		return "/provider_evaluate/admin_add_tester.jsp";
	}
	
	/**
	 * 跳转至    设置评级参数    页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/setParam",method=RequestMethod.GET)
	public String setParam(){
		return "/provider_evaluate/admin_set_param.jsp";
	}
	
	/**
	 * 跳转至    查看考评结果 发送    页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/sendResult",method=RequestMethod.GET)
	public String sendResult(){
		return "/provider_evaluate/admin_send_result.jsp";
	}
	
	/**
	 * 跳转至    查看考评结果 调整    页面
	 * @return
	 */
	
	
	@RequestMapping(value="admin/progroup/proaudit/adjustScore",method=RequestMethod.GET)
	public String adjustScore(){
		return "/provider_evaluate/admin_adjust_score.jsp";
	}
	/**
	 * 跳转至    筛选考评人员    页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/testerCheck",method=RequestMethod.GET)
	public String testerCheck(){
		return "/provider_evaluate/admin_tester_check.jsp";
	}
	/**
	 * 跳转至    发送信息    页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/msgSend",method=RequestMethod.GET)
	public String msgSend(){
		return "/provider_evaluate/admin_msg_send.jsp";
	}
	/**
	 * 跳转至查看考评结果及分级页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/resultSearch",method=RequestMethod.GET)
	public String resultSearch(){
		return "/provider_evaluate/admin_test_result_search.jsp";
	}
	
	/**
	 * 跳转至考评名单筛选页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/evaluPerFilter",method=RequestMethod.GET)
	public String evaluPerFilter(){
		return "/provider_evaluate/admin_test_evaluPer_filter.jsp";
	}
	
	/**
	 * 跳转至发送考评邀请函页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/sendInvitation",method=RequestMethod.GET)
	public String sendInvitation(){
		return "/provider_evaluate/admin_test_send_invitation.jsp";
	}
	
	/**
	 * 跳转至查看考核方案审批状态页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/statusSearch",method=RequestMethod.GET)
	public String statusSearch(){
		return "/provider_evaluate/admin_test_status_search.jsp";
	}
	
	/**
	 * 跳转至供应商考评主页面
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/workGroupMain",method=RequestMethod.GET)
	public String workGroupMain(){
		return "/provider_evaluate/admin_test_plan_submit.jsp";
	}
	/**
	 * 跳转至考核方案审批页面
	 * @return
	 */
	@RequestMapping(value="admin/auditcommit/proaudit/proChechAudit",method=RequestMethod.GET)
	public String proChechAudit(){
		return "/provider_evaluate/admin_plan_verify.jsp";
	}
	/**
	 * 跳转至考评结果审批页面
	 * @return
	 */
	@RequestMapping(value="admin/auditcommit/proaudit/auditHandleCheck",method=RequestMethod.GET)
	public String auditHandleCheck(){
		return "/provider_evaluate/admin_result_verify.jsp";
	}
	/**
	 * 跳转至考评人员管理页面
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/arrangeTester",method=RequestMethod.GET)
	public String arrangeTester(){
		return "/provider_evaluate/admin_arrange_tester.jsp";
	}
	/**
	 * 跳转至在线考评打分页面
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/scoreOnLine",method=RequestMethod.GET)
	public String scoreOnLine(){
		return "/provider_evaluate/admin_score_online.jsp";
	}	
}
