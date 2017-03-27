package com.pms.sup.control;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * <p>Title:GoodsDeleteAction.java<p>
 * <p>Description:减少产品</p>
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  */
@Controller
@RequestMapping("/GoodsChange")
public class GoodsChangeAction {
	
	///供应商变更申请主页
	@RequestMapping(value="/mainSumbit",method=RequestMethod.GET)
	public String mainSumbit(Model model,HttpServletRequest request)throws Exception{
		
		return "/provider_catalog/sup_pro_modify.jsp";
	}	
	
	//////////////////  产品减少	//////////////////
	
	///减少产品审核
	@RequestMapping(value="/adminDeleteCheck",method=RequestMethod.GET)
	public String adminDeleteCheck(Model model,HttpServletRequest request)throws Exception{
		
		return "/provider_catalog/sup_pro_delete_check.jsp";
	}
	
	@RequestMapping(value="/adminDeleteCheckFinal",method=RequestMethod.GET)
	public String adminDeleteCheckFinal(String gno,String pname,String reason,String date, Model model,HttpServletRequest request)throws Exception{
		
		byte[] arrayStr = reason.getBytes("iso-8859-1");
		String r = new String(arrayStr, "UTF-8");
		
		byte[] Str = pname.getBytes("iso-8859-1");
		String name = new String(arrayStr, "UTF-8");
		
		model.addAttribute("gno", gno);
		model.addAttribute("pname", name);
		model.addAttribute("reason", r);
		model.addAttribute("date", date);
		return "/provider_catalog/sup_pro_delete_check_final.jsp";
	}
	
	
	///申请减少产品
	
	@RequestMapping(value="/GoodsDeleteApply",method=RequestMethod.GET)
	public String GoodsDeleteApply(Model model,HttpServletRequest request)throws Exception{
		
		return "/provider_catalog/sup_pro_delete.jsp";
	}
	
	
	@RequestMapping(value="/GoodsDeleteApplyOne",method=RequestMethod.GET)
	public String GoodsDeleteApplyOne(Model model,HttpServletRequest request)throws Exception{
		
		return "/provider_catalog/sup_pro_delete_one.jsp";
	}
	
	@RequestMapping(value="/GoodsDeleteApplyTwo",method=RequestMethod.GET)
	public String GoodsDeleteApplyTwo(String gno,String goods,Model model,HttpServletRequest request)throws Exception{
		byte[] arrayStr = goods.getBytes("iso-8859-1");
		String gname = new String(arrayStr, "UTF-8");
		
		model.addAttribute("gno", gno);
		model.addAttribute("gname", gname);
		return "/provider_catalog/sup_pro_delete_two.jsp";
	}
	
	///查看供应商详情
	@RequestMapping(value="/GoodsDeleteShowSup",method=RequestMethod.GET)
	public String GoodsDeleteShowSup(Model model,HttpServletRequest request)throws Exception{
		
		return "/provider_catalog/sup_basicinfo_select.jsp";
	}
	
	//产品增加第一步
	@RequestMapping(value="/sup_pro_apply_one",method=RequestMethod.GET)
	public String ApplyOne(){
		return "/provider_catalog/sup_product_apply_one.jsp";
	}
	//产品增加第二步
	@RequestMapping(value="/sup_pro_apply_two",method=RequestMethod.GET)
	public String ApplyTwo(){
	//	System.out.print(product);
		return "/provider_catalog/sup_product_apply_two.jsp";
	}
	//产品增加第四步
	@RequestMapping(value="/sup_pro_checkf",method=RequestMethod.GET)
	public String CheckFinal(String pno,String gno){
		System.out.println(pno);
		System.out.println(gno);
		return "/provider_catalog/sup_product_check_final.jsp";
	}
	//产品增加第三步
	@RequestMapping(value="/sup_pro_check",method=RequestMethod.GET)
	public String Check(){
		return "/provider_catalog/sup_product_check.jsp";
	}
	
	
}
