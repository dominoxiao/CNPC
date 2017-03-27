package com.pms.sup.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pms.sup.biz.AreaBiz;
import com.pms.sup.entity.TArea;

@Controller
public class AreaAction {

	@Autowired
	private AreaBiz areaBiz;
	
	@RequestMapping(value="/area/selectarea.do")
	public String selectAllArea(Model model) throws Exception{
		List<TArea> tAreas = areaBiz.selectAllArea();
		model.addAttribute("tAreas", tAreas);
		return "/provider_access/sup_access_apply_one.jsp";
	}
}
