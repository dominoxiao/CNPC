package com.pms.sup.control;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
//ս�Թ�Ӧ������ҳ��
@RequestMapping("/admin")
public class SupApplyAction {
	@RequestMapping(value="/progroup/supApply", method=RequestMethod.GET)
	public String makesupform(){
		return "/strategicsupplier_manage/profess_apply_supplyer.jsp";
		
	}
//ս�Թ�Ӧ���ύҳ��
	@RequestMapping("/progroup/supApply/sub")
		public String SupApplyActionsub(){
		return "/strategicsupplier_manage/sucsub.jsp";
			
		}
//ս�Թ�Ӧ���ύ����ҳ��
	@RequestMapping("/progroup/supApply/subsuc1")
	public String success1(){
		return "/strategicsupplier_manage/profess_apply_supplyer.jsp";
		
	}
//ս����������ҳ��
	@RequestMapping("/progroup/mateApply")
	public String makemateform(){
		return "/strategicsupplier_manage/profess_apply_material.jsp";
		
	}
//ս�������ύҳ��
	@RequestMapping("/progroup/mateApply/sub")
	public String makemateformsub(){
		return "/strategicsupplier_manage/sucsub2.jsp";
		
	}
//ս�������ύ����ҳ��
	@RequestMapping("/progroup/supApply/subsuc2")
	public String success2(){
		return "/strategicsupplier_manage/profess_apply_material.jsp";
		
	}
//ս����������
	@RequestMapping("/progroup/mateScore")
	public String mateScore(){
		return "/strategicsupplier_manage/score.jsp";
	}

//����ίԱ������ս�Թ�Ӧ��
	@RequestMapping("/auditcommit/reviewsup")
	public String audreviewsup(){
		return "/strategicsupplier_manage/reviewer_review_supplyer.jsp";
	}
//����ίԱ�������Ӧ��ͨ��������
	@RequestMapping("/auditcommit/reviewsup2")
	public String audreviewsup2(){
		return "/strategicsupplier_manage/reviewer_review_supplyer2.jsp";
	}
//����ίԱ�᷵������Ӧ��ҳ��
	@RequestMapping("/auditcommit/backsup")
	public String audbacksup(){
		return "/strategicsupplier_manage/reviewer_review_supplyer.jsp";
	}
//����ίԱ������ս������
	@RequestMapping("/auditcommit/reviewmate")
	public String auditreviewmate(){
		return "/strategicsupplier_manage/reviewer_review_material.jsp";
	}
//����ίԱ�����ս������ͨ��������
	@RequestMapping("/auditcommit/reviewmate2")
	public String auditreviewmate2(){
		return "/strategicsupplier_manage/reviewer_review_material2.jsp";
	}
//����ίԱ�᷵������ս������ҳ��
	@RequestMapping("/auditcommit/backmate")
	public String audbackmate(){
		return "/strategicsupplier_manage/reviewer_review_material.jsp";
	}
//�ܲ���ɲ���׼ս�Թ�Ӧ��
	@RequestMapping("/buydept/allowsup")
	public String buyallowsup(){
		return "/strategicsupplier_manage/purchase_allow_supplyer.jsp";
	}
//�ܲ���ɲ���׼ս������
	@RequestMapping("/buydept/allowmate")
	public String buyallowmate(){
		return "/strategicsupplier_manage/purchase_allow_material.jsp";
	}
//�ܲ���ɲ�����ս�Թ�Ӧ��ͨ���������
	@RequestMapping("/buydept/allowsup2")
	public String buyallowsup2(){
		return "/strategicsupplier_manage/purchase_allow_supplyer2.jsp";
	}
//�ܲ���ɲ�����ս������ͨ���������
	@RequestMapping("/buydept/allowmate2")
	public String buyallowmate2(){
		return "/strategicsupplier_manage/purchase_allow_material2.jsp";
	}
//�ܲ���ɲ����غ�׼ս�Թ�Ӧ�̽���
	@RequestMapping("/buydept/backsup")
	public String buybacksup(){
		return "/strategicsupplier_manage/purchase_allow_supplyer.jsp";
	}
//�ܲ���ɲ����غ�׼ս�����ʽ���
	@RequestMapping("/buydept/backmate")
	public String buybackmate(){
		return "/strategicsupplier_manage/purchase_allow_material.jsp";
	}
}
