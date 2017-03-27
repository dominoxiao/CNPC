package com.pms.sup.control;

import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pms.sup.biz.ProductApplyBiz;
import com.pms.sup.biz.QueryProductBiz;
import com.pms.sup.entity.TGoods2;
import com.pms.sup.entity.TGoodsApply;
import com.pms.sup.entity.TGoodsAudit;
import com.pms.sup.entity.TUser;

@Controller
@RequestMapping("/AddProduct")
public class AddProAction {
	@Autowired
	private QueryProductBiz cQueryProductBiz;
	@Autowired
	private ProductApplyBiz poductApplyBiz;
	@RequestMapping(value = "/QueryProduct", method = RequestMethod.GET)
	public String forwardApplyTwo(String product, Model model) {
		try {
			product = URLDecoder.decode(product, "UTF-8");
			model.addAttribute("product", product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/provider_catalog/sup_product_apply_two.jsp";
	}

	@RequestMapping(value = "/InputData", method = RequestMethod.POST)
	@ResponseBody
	public List<TGoods2> inputProductData(String product,HttpServletRequest request) {
		List<TGoods2> list = new ArrayList<TGoods2>();
		try {
			byte[] arrayStr = product.getBytes("iso-8859-1");
			String pro = new String(arrayStr, "UTF-8");
			String[] strings=pro.split(",");
			for(int i=0;i<strings.length;i++){
			TGoods2 goods2 = cQueryProductBiz.getProduct(strings[i]);
			list.add(goods2);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
		
	}
	
	@RequestMapping(value = "/ProductApplytwo", method = RequestMethod.POST)
	@ResponseBody
	public String submitApplyTwo(HttpServletRequest request,String product) {
		try {
			System.out.println("zcsds");
			//request.getParameter("name");
			System.out.println(product);
			HttpSession session = request.getSession();
			TUser user =(TUser) session.getAttribute("user");
			if(user!=null){			
			 System.out.println(user.getEmpno());
			 String[] strings=product.split(",");
				for(int i=0;i<strings.length;i++){
				     TGoods2 goods2 = cQueryProductBiz.getProduct(strings[i]);
				     Date now = new Date(); 
				     SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");//可以方便地修改日期格式
				     String hehe = dateFormat.format( now ); 
				     System.out.println(hehe); 
				     TGoodsApply tGoodsApply=new TGoodsApply();
				     tGoodsApply.setPno(user.getEmpno());
				     tGoodsApply.setGno(goods2.getGno());
				     tGoodsApply.setApplyDate(hehe);
				     tGoodsApply.setState("0");
				     poductApplyBiz.proApply(tGoodsApply);
				}
			  //  roductApplyBiz.proApply(tGoodsApply);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	//	return "/GoodsChange/sup_pro_apply_one.do";
		return "success";
	}
	
	@RequestMapping(value = "/productCheck1", method = RequestMethod.POST)
	@ResponseBody
	public List<TGoodsApply> proCheck1(){
		List<TGoodsApply> list=null;
		try {
			 list=poductApplyBiz.productCheck("0");
			// System.out.println(list);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	@RequestMapping(value = "/sup_pro_checkf", method = RequestMethod.GET)
	public String ApplyCheckone(String pno,String gno,String applyDate,Model model) {
		try {
			System.out.println("pno:"+pno);
			System.out.println("gno"+gno);
			System.out.println("applyDate"+applyDate);
			String date=applyDate.split(" ")[0];
		    System.out.println("date:"+date); 
			TGoods2 tGoods2=cQueryProductBiz.getProductById(gno);
			System.out.println("tGoods2"+tGoods2);
			model.addAttribute("gno", gno);
			model.addAttribute("pno", pno);
			model.addAttribute("gname", tGoods2.getGname());
			model.addAttribute("date", date);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/provider_catalog/sup_product_check_final.jsp";
	}
	@RequestMapping(value = "/sup_pro_checksubmit", method = RequestMethod.POST)
	@ResponseBody
	public String ApplyChecktwo(String pno,String gno,String opinion,String state) {
		try {
			System.out.println("pno:"+pno);
			System.out.println("gno:"+gno);
			System.out.println("opinion:"+opinion);
			System.out.println("state:"+state);
			TGoodsApply tGoodsApply=new TGoodsApply();
			tGoodsApply.setGno(gno);
			tGoodsApply.setPno(pno);
			
			TGoodsApply tGoodsApply2=poductApplyBiz.QueryApplyB(tGoodsApply);
			System.out.println("tGoodsApply2:"+tGoodsApply2);
			TGoodsAudit GoodsAudit=new TGoodsAudit();
			//System.out.println("GoodsAudit:"+GoodsAudit);
			String date=tGoodsApply2.getApplyDate().split(" ")[0];
		    System.out.println("date:"+date); 
			GoodsAudit.setAdate(date);
			GoodsAudit.setAinfo(opinion);
			GoodsAudit.setIsagree(state);
			GoodsAudit.setPdno(tGoodsApply2.getPano());
			System.out.println("GoodsAudit:"+GoodsAudit);
			poductApplyBiz.ApplySub(GoodsAudit);
			TGoodsApply tGoodsApply3=new TGoodsApply();
			tGoodsApply3.setPano(tGoodsApply2.getPano());
			tGoodsApply3.setState("1");
			poductApplyBiz.UpdateSta(tGoodsApply3);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

}
