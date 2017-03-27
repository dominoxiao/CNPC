package com.pms.sup.control;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * ��Ӧ�̿���----Controller
 *
 */
@Controller
public class WorkGroupAction {
	
	/**
	 * ��ת��    ���ſ�����Ա    ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/addTester",method=RequestMethod.GET)
	public String addTester(){
		return "/provider_evaluate/admin_add_tester.jsp";
	}
	
	/**
	 * ��ת��    ������������    ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/setParam",method=RequestMethod.GET)
	public String setParam(){
		return "/provider_evaluate/admin_set_param.jsp";
	}
	
	/**
	 * ��ת��    �鿴������� ����    ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/sendResult",method=RequestMethod.GET)
	public String sendResult(){
		return "/provider_evaluate/admin_send_result.jsp";
	}
	
	/**
	 * ��ת��    �鿴������� ����    ҳ��
	 * @return
	 */
	
	
	@RequestMapping(value="admin/progroup/proaudit/adjustScore",method=RequestMethod.GET)
	public String adjustScore(){
		return "/provider_evaluate/admin_adjust_score.jsp";
	}
	/**
	 * ��ת��    ɸѡ������Ա    ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/testerCheck",method=RequestMethod.GET)
	public String testerCheck(){
		return "/provider_evaluate/admin_tester_check.jsp";
	}
	/**
	 * ��ת��    ������Ϣ    ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/msgSend",method=RequestMethod.GET)
	public String msgSend(){
		return "/provider_evaluate/admin_msg_send.jsp";
	}
	/**
	 * ��ת���鿴����������ּ�ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/resultSearch",method=RequestMethod.GET)
	public String resultSearch(){
		return "/provider_evaluate/admin_test_result_search.jsp";
	}
	
	/**
	 * ��ת����������ɸѡҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/evaluPerFilter",method=RequestMethod.GET)
	public String evaluPerFilter(){
		return "/provider_evaluate/admin_test_evaluPer_filter.jsp";
	}
	
	/**
	 * ��ת�����Ϳ������뺯ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/sendInvitation",method=RequestMethod.GET)
	public String sendInvitation(){
		return "/provider_evaluate/admin_test_send_invitation.jsp";
	}
	
	/**
	 * ��ת���鿴���˷�������״̬ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/statusSearch",method=RequestMethod.GET)
	public String statusSearch(){
		return "/provider_evaluate/admin_test_status_search.jsp";
	}
	
	/**
	 * ��ת����Ӧ�̿�����ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/progroup/proaudit/workGroupMain",method=RequestMethod.GET)
	public String workGroupMain(){
		return "/provider_evaluate/admin_test_plan_submit.jsp";
	}
	/**
	 * ��ת�����˷�������ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/auditcommit/proaudit/proChechAudit",method=RequestMethod.GET)
	public String proChechAudit(){
		return "/provider_evaluate/admin_plan_verify.jsp";
	}
	/**
	 * ��ת�������������ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/auditcommit/proaudit/auditHandleCheck",method=RequestMethod.GET)
	public String auditHandleCheck(){
		return "/provider_evaluate/admin_result_verify.jsp";
	}
	/**
	 * ��ת��������Ա����ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/arrangeTester",method=RequestMethod.GET)
	public String arrangeTester(){
		return "/provider_evaluate/admin_arrange_tester.jsp";
	}
	/**
	 * ��ת�����߿������ҳ��
	 * @return
	 */
	@RequestMapping(value="admin/relevdepart/proaudit/scoreOnLine",method=RequestMethod.GET)
	public String scoreOnLine(){
		return "/provider_evaluate/admin_score_online.jsp";
	}	
}
