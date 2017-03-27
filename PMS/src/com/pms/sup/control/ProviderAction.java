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
	
	// 跳转至供应商自助服务入口
	@RequestMapping(value="provider/mainProvider", method=RequestMethod.GET)
	public String mainSup(){
		return "main_provider.jsp";
	}
	
	// 加载供应商自助服务主页
	@RequestMapping(value="provider/indexProvider", method=RequestMethod.GET)
	public String indexSup(){
		return "index_provider.jsp";
	}
	
	// 跳转至供应商预注册页面
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String providerReg(){
		return "provider_register.jsp";
	}
	
	// 供应商申请登录账号
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String providerReg(TUser user, Model model){
		String msg = "";
		String result = "";
		
		model.addAttribute("uname", user.getUname());
		try {
			userBiz.register(user);
			msg = "用户注册成功";
			result = "login.jsp";
		} catch (Exception e) {
			msg = "用户注册失败";
			result = "provider_register.jsp";
			e.printStackTrace();
		} finally {
			model.addAttribute("msg", msg);
		}
		return result;
	}

}