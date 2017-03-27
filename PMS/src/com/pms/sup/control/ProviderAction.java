package com.pms.sup.control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pms.sup.biz.UserBiz;
import com.pms.sup.entity.TUser;

@Controller
public class ProviderAction {
	@Autowired
	private UserBiz userBiz;
	
	// ��ת����Ӧ�������������
	@RequestMapping(value="provider/mainProvider", method=RequestMethod.GET)
	public String mainSup(){
		return "main_provider.jsp";
	}
	
	// ���ع�Ӧ������������ҳ
	@RequestMapping(value="provider/indexProvider", method=RequestMethod.GET)
	public String indexSup(){
		return "index_provider.jsp";
	}
	
	// ��ת����Ӧ��Ԥע��ҳ��
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String providerReg(){
		return "provider_register.jsp";
	}
	
	// ��Ӧ�������¼�˺�
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String providerReg(TUser user, Model model){
		String msg = "";
		String result = "";
		
		model.addAttribute("uname", user.getUname());
		try {
			userBiz.register(user);
			msg = "�û�ע��ɹ�";
			result = "login.jsp";
		} catch (Exception e) {
			msg = "�û�ע��ʧ��";
			result = "provider_register.jsp";
			e.printStackTrace();
		} finally {
			model.addAttribute("msg", msg);
		}
		return result;
	}

}