package com.pms.sup.control;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pms.sup.biz.YearMoneyBiz;
import com.pms.sup.entity.TYearMoney;
import com.pms.sup.util.Page;

@Controller
public class YearMoneyAction {
	
	@Autowired
	private YearMoneyBiz yearmondyBiz;
	
	@InitBinder    
	public void initBinder(WebDataBinder binder) {    
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");    
	    dateFormat.setLenient(false);    
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));    
	}  
	
	// 年费录入界面入口
	@RequestMapping(value="/amdin/yearmoney/index", method=RequestMethod.GET)
	public String annualFeePage(){	
		return "provider_basic/admin_annual_fee.jsp";
	}
	
	// 年费缴纳记录列表查询
	@RequestMapping(value="/admin/yearmoney/list", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> annualFeeList(Page vo, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();
		
		String acno = request.getParameter("pno");
				
		if (vo.getRows()!= null){
			int start = vo.getRows() * (vo.getPage()-1);
			int end = vo.getRows() * vo.getPage();
			
			map.put("offset", start);
			map.put("limit", end);
			map.put("pno", acno);
			
			try {
				result = yearmondyBiz.getYearMoneyList(map);
			} catch (Exception e) {
				e.printStackTrace();
			}
	
		} 
		return result;
	}

	// 提交年费缴纳记录
	@RequestMapping(value="/admin/yearmoney/save", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addComplainAudit(TYearMoney yearMoney){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			yearmondyBiz.addYearMoneyRecord(yearMoney);
			map.put("msg", "年费录入成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			map.put("msg", "年费录入失败");
			e.printStackTrace();
		}
		return map;
	}
	

}
