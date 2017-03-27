package com.pms.sup.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pms.sup.biz.UserBiz;
import com.pms.sup.entity.TUser;

@Controller
@RequestMapping("/user")
public class UserAction {
	@Autowired
	private UserBiz userBiz;
	
	// 获取所有用户
	@RequestMapping(value="/getuser", method=RequestMethod.GET)
	public String getUser(String uname){
		return "/views/main.jsp";
	}
	
    // 用户登录
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(TUser user, Model model,HttpServletRequest request){
		String result;

		if(user != null) {
			TUser curUser;
			try {
				curUser = userBiz.login(user.getUname(),user.getPwd());
				if(curUser == null){
					model.addAttribute("msg", "用户登录失败");
					result = "redirect:/user/login.do";
				}else{
					model.addAttribute("msg", curUser.getUname() + "用户登录成功");
					model.addAttribute("empno", curUser.getEmpno()+"" );
					model.addAttribute("role", curUser.getRole()+"");
					model.addAttribute("uname", curUser.getUname());
					
					if("1".equals(curUser.getRole())){
						String[] strs = curUser.getEmpno().split("-");
						request.getSession().setAttribute("label", strs[0]);
						curUser.setEmpno(strs[1]);
						request.getSession().setAttribute("Provider", strs[1]);
					}else{
						request.getSession().setAttribute("Provider", curUser.getEmpno());
						request.getSession().setAttribute("worker", curUser);
					}
					request.getSession().setAttribute(SessionName.USER, curUser);
					result = "redirect:/user/mainAdmin.do";
				}
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("msg", "登录失败");
				result = "redirect:/user/login.do";
			}
		}else{
			model.addAttribute("msg", "用户名和密码不能为空");
			result = "redirect:/user/login.do";
		}
		return result;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(){
		return "login.jsp";
	}
	
	// 跳转至后台管理入口
	@RequestMapping(value="/mainAdmin", method=RequestMethod.GET)
	public String mainAdmin(){
		return "main_admin.jsp";
	}
	
	// 加载后台管理主页
	@RequestMapping(value="/indexAdmin", method=RequestMethod.GET)
	public String indexAdmin(){
		return "index_admin.jsp";
	}	

}
