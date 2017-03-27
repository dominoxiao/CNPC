package com.pms.sup.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainDataAction {
	
    
	@RequestMapping(value="/admin/mainData", method=RequestMethod.GET)
	public String mainDataPage(){
		String result = "provider_basic/admin_main_data.jsp";
		return result;
	}

}
