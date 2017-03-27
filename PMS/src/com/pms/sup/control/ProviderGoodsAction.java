package com.pms.sup.control;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pms.sup.biz.ProviderGoodsBiz;
import com.pms.sup.entity.TGoodsCutApply;
import com.pms.sup.entity.TProviderGoods;
import com.pms.sup.entity.TUser;

@Controller
@RequestMapping("/ProviderGoods")
public class ProviderGoodsAction {
	
	@Autowired
	private ProviderGoodsBiz providerGoodsBiz; 
	
	
	
	////////////////////////////供应商操作
	//查看产品信息
	@RequestMapping(value="/showGoods",method = RequestMethod.POST)
	@ResponseBody
	public List<Map> showGoods(HttpSession session)throws Exception{
		
		//获取当前供应商
		TUser user = (TUser) session.getAttribute("user");
		List<TProviderGoods> list = new ArrayList<TProviderGoods>();
		list = providerGoodsBiz.getProviderGoods(user.getEmpno());
		
		
		List<Map> list_map = new ArrayList<Map>();
		for(int i=0;i<list.size();i++){
			Map<String,Object> m = new HashMap<String, Object>();		
			m.put("gno", list.get(i).getGno());
			m.put("goods", list.get(i).getGoods().getGname());
			list_map.add(m);
		}
		
		
		return list_map;
	}	
	
	
	////查看减少产品信息
	@RequestMapping(value="/showCutGoods",method = RequestMethod.POST)
	@ResponseBody
	public List<Map> showCutGoods(HttpSession session)throws Exception{
		//获取当前供应商
		TUser user = (TUser) session.getAttribute("user");
		List<TGoodsCutApply> list = new ArrayList<TGoodsCutApply>();
		list = providerGoodsBiz.getCutGoodsCutApplies(user.getEmpno());
		System.out.println(user.getEmpno());

		
		List<Map> list_map = new ArrayList<Map>();
		for(int i=0;i<list.size();i++){
			
			Map<String,Object> m = new HashMap<String, Object>();	
			m.put("gno", list.get(i).getGno());
			m.put("pno", list.get(i).getPno());
			m.put("pname", list.get(i).getGoods().getGname());
			m.put("reason", list.get(i).getCutinfo());
			m.put("date",list.get(i).getApplydate() );
			m.put("state", list.get(i).getState());
			list_map.add(m);
		}
		return list_map;
	}
	
    ////插入减少产品信息
	@RequestMapping(value="/insertCutGoods",method = RequestMethod.POST)
	@ResponseBody
	public String insertCutGoods(String gno,String reason, HttpSession session){
		//获取当前供应商
		TUser user = (TUser) session.getAttribute("user");
		try {
			byte[] arrayStr = reason.getBytes("iso-8859-1");
			String r = new String(arrayStr, "UTF-8");
			
			Date now = new Date(); 
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
		    String date = dateFormat.format(now); 
			
			TGoodsCutApply tGoodsCutApply = new TGoodsCutApply();
			tGoodsCutApply.setPno(user.getEmpno());
			tGoodsCutApply.setGno(gno);
			tGoodsCutApply.setCutinfo(r);
			tGoodsCutApply.setApplydate(date);
			tGoodsCutApply.setState("未审核");
			System.out.println(tGoodsCutApply);	
			providerGoodsBiz.putCutGoodsApplies(tGoodsCutApply);
						
		} catch (Exception e) {
			// TODO: handle exception
		}
				
		return "/provider_catalog/sup_pro_delete.jsp";
	}
	
	
	/////管理员操作
	
////查看所有减少产品信息
	@RequestMapping(value="/showAllCutGoods",method = RequestMethod.POST)
	@ResponseBody
	public List<Map> showAllCutGoods(){
		List<Map> list_map = new ArrayList<Map>();
		List<TGoodsCutApply> list = new ArrayList<TGoodsCutApply>();
		try {
			list = providerGoodsBiz.getAllCutGoodsCutApplies();			
			for(int i=0;i<list.size();i++){
				
				Map<String,Object> m = new HashMap<String, Object>();	
				String date=list.get(i).getApplydate().split(" ")[0];
				m.put("gno", list.get(i).getGno());
				m.put("pno", list.get(i).getPno());
				m.put("pname", list.get(i).getGoods().getGname());
				m.put("reason", list.get(i).getCutinfo());
				m.put("date",date );
				m.put("state", list.get(i).getState());
				list_map.add(m);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		System.out.println(list_map);
		return list_map;
	}
	
}
