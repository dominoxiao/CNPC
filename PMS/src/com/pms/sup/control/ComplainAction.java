package com.pms.sup.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cnpc.mdm.service.IMasterDataManagement;
import com.pms.sup.biz.ComplainBiz;
import com.pms.sup.entity.TComplain;
import com.pms.sup.entity.TComplainDeal;
import com.pms.sup.entity.TComplainDealAudit;
import com.pms.sup.entity.TUser;
import com.pms.sup.util.Page;

/**
 * ��Ӧ��Ͷ�߹�����ģ��
 */
@Controller
public class ComplainAction {
	
	@Autowired
	private ComplainBiz complainBiz;
	
	@InitBinder    
	public void initBinder(WebDataBinder binder) {    
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");    
	    dateFormat.setLenient(false);    
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));    
	}  
	
	//����Ͷ�߹�����ҳ[Ͷ�ߴ�����Ա��]
	@RequestMapping(value="admin/complain/index", method=RequestMethod.GET)
	public String complainAdminPage(){
		return "/provider_basic/admin_complains_main.jsp";
	}
	
	//����Զ�̽ӿ�
	@RequestMapping(value="test", method=RequestMethod.GET)
	public String callInterface(Model model){
		ApplicationContext cxt = new ClassPathXmlApplicationContext("client-beans.xml");
		IMasterDataManagement masterDataManagement=(IMasterDataManagement)cxt.getBean("masterClient");
		try {
			String pno =  masterDataManagement.getSupCode("gys");
			model.addAttribute("pno", pno);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/provider_basic/admin_complains_main.jsp";
	}
	
    //��ҳ��ѯͶ�������б�[Ͷ�ߴ�����Ա��,��Ӧ��]
	@RequestMapping(value = "/admin/complain/list", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> userList(Page vo, HttpServletRequest request, HttpSession httpSession){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();
						
		String title = request.getParameter("title");
		String state = request.getParameter("status");
		String acno = request.getParameter("acno");
		String pno = request.getParameter("pno");
		
		TUser user = (TUser)httpSession.getAttribute("user");
		String role = user.getRole();
		if("1".equals(role)){
			String[] strs = user.getEmpno().split("-");
			pno = strs[1];
		}
		System.out.println(user.getEmpno());
		System.out.println(role);
		
		String startDateStr = request.getParameter("startDate");
		String endDateStr = request.getParameter("endDate");
		Date startDate = null, endDate = null;
		
		if (startDateStr != null && !"".equals(startDateStr) && endDateStr != null && !"".equals(endDateStr)){
			try {
				startDate = new SimpleDateFormat("yyyy-MM-dd").parse(startDateStr);
				endDate = new SimpleDateFormat("yyyy-MM-dd").parse(endDateStr);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (vo.getRows()!= null){
			int start = vo.getRows() * (vo.getPage()-1);
			int end = vo.getRows() * vo.getPage();
			
			map.put("offset", start);
			map.put("limit", end);
			map.put("title", title);
			map.put("state", state);
			map.put("acno", acno);
			map.put("pno", pno);
			map.put("startDate", startDate);
			map.put("endDate", endDate);

			Integer total = null;
			List<TComplain> complainList = null;
			try {
				total = complainBiz.count(map);
				complainList = complainBiz.findList(map);
				result.put("total", total);
				result.put("rows", complainList);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			
		}
		return result;
	}
	
    //��ҳ��ѯͶ�������б�[Ͷ�ߴ�����Ա��,��Ӧ��]
	@RequestMapping(value = "/provider/complain/list", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> complainList(Page vo, HttpServletRequest request, HttpSession httpSession){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();
						
		String title = request.getParameter("title");
		String state = request.getParameter("status");
		String acno = request.getParameter("acno");
		String pno = request.getParameter("pno");
		
		TUser user = (TUser)httpSession.getAttribute("user");
		pno = user.getEmpno();
		System.out.println(user.getEmpno());
		
		String startDateStr = request.getParameter("startDate");
		String endDateStr = request.getParameter("endDate");
		Date startDate = null, endDate = null;
		
		if (startDateStr != null && !"".equals(startDateStr) && endDateStr != null && !"".equals(endDateStr)){
			try {
				startDate = new SimpleDateFormat("yyyy-MM-dd").parse(startDateStr);
				endDate = new SimpleDateFormat("yyyy-MM-dd").parse(endDateStr);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if (vo.getRows()!= null){
			int start = vo.getRows() * (vo.getPage()-1);
			int end = vo.getRows() * vo.getPage();
			
			map.put("offset", start);
			map.put("limit", end);
			map.put("title", title);
			map.put("state", state);
			map.put("acno", acno);
			map.put("pno", pno);
			map.put("startDate", startDate);
			map.put("endDate", endDate);

			Integer total = null;
			List<TComplain> complainList = null;
			try {
				total = complainBiz.count(map);
				complainList = complainBiz.findList(map);
				result.put("total", total);
				result.put("rows", complainList);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			
		}
		return result;
	}
	
	//����Ͷ�ߴ����ҳ��[Ͷ�ߴ�����Ա��]
	@RequestMapping(value="/admin/worker/complain/report", method=RequestMethod.GET)
	public String complainReportPage(HttpServletRequest request, Model model){
		String acno = request.getParameter("acno");
		try {
			TComplain complain = complainBiz.getComplain(acno);
			model.addAttribute("complainDetail", complain);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/provider_basic/admin_complains_report.jsp";
	}
	
	//�ύͶ�ߴ�����[Ͷ�ߴ�����Ա��]
	@RequestMapping(value="/admin/worker/complain/saveReport", method=RequestMethod.POST)
	public String saveComplainReport(TComplainDeal complainDeal, HttpServletRequest request){
		String result = "";
		try {
			complainDeal.setAcno(request.getParameter("acno"));
			complainBiz.addComplainReport(complainDeal);
			result = "redirect:/admin/complain/index.do";
		} catch (Exception e) {
			result = "provider_basic/admin_complains_report.jsp";
			e.printStackTrace();
		}
		return result;
	}
	
    //��ҳ��ѯͶ�������б�[Ͷ�ߴ������쵼]
	@RequestMapping(value="/admin/leader/complain/audit/list", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> complainDealAuditList(Page vo, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();
		
		String acno = request.getParameter("acno");
				
		if (vo.getRows()!= null){
			int start = vo.getRows() * (vo.getPage()-1);
			int end = vo.getRows() * vo.getPage();
			
			map.put("offset", start);
			map.put("limit", end);
			map.put("acno", acno);

			Integer total = null;
			List<TComplainDealAudit> auditList = null;
			try {
				total = complainBiz.countAudit(map);
				auditList = complainBiz.findAuditList(map);
				result.put("total", total);
				result.put("rows", auditList);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			
		}
		return result;
	}
			
    //����Ͷ�ߴ�������ҳ��[Ͷ�ߴ������쵼]
	@RequestMapping(value="/admin/leader/complain/audit", method=RequestMethod.GET)
	public String complainApprovalPage(HttpServletRequest request, Model model){
		String acno = request.getParameter("acno");
		String result = "";
		model.addAttribute("acno", request.getParameter("acno"));
		try {
			TComplain complain = complainBiz.getComplain(acno);
			model.addAttribute("complainDetail", complain);
			result = "provider_basic/admin_complains_approve.jsp";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			result = "provider_basic/admin_complains_approve.jsp";
			e.printStackTrace();
		}
		return result;
	}
	
	//�ύͶ�ߴ�������[Ͷ�ߴ������쵼]
	@RequestMapping(value="/admin/leader/complain/saveAudit", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addComplainAudit(TComplainDealAudit audit, HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		String acno = request.getParameter("acno");
		try {
			audit.setAcno(acno);
			complainBiz.addComplainDealAudit(audit);
			map.put("msg", "�����ύ�ɹ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			map.put("msg", "�����ύʧ��");
			e.printStackTrace();
		}
		return map;
	}
	
		
	//����Ͷ��ҳ��[��Ӧ��]
	@RequestMapping(value="/provider/complain/index", method=RequestMethod.GET)
	public String indexComplainPage(){
		return "/provider_basic/provider_complains_info.jsp";
	}
	
    //����Ͷ�������ύҳ��[��Ӧ��]
	@RequestMapping(value="/provider/complain/add", method=RequestMethod.GET)
	public String addComplainPage(){
		return "provider_basic/provider_complains_add.jsp";
	}
	
	//�鿴Ͷ����������[��Ӧ��]
	@RequestMapping(value="/provider/complain/detail", method=RequestMethod.GET)
	public String complainDetail(HttpServletRequest request, Model model){
		String acno = request.getParameter("acno");
		try {
			TComplain complain = complainBiz.getComplain(acno);
			model.addAttribute("complainDetail", complain);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "provider_basic/provider_complains_detail.jsp";
	}
	
	//����Ͷ�߸���[��Ӧ��]
	@RequestMapping("/provider/complain/downfile")
	 public ResponseEntity<byte[]> download(String acno, HttpServletRequest request) throws IOException { 
		 byte[] file = null;
		 if(acno != null){
			 try {
				 file = complainBiz.getComplainFile(acno);
			 } catch (Exception e) {
				 e.printStackTrace();
			 }
		 }	  
		 String fileName = "Ͷ�߸���.jpg";
		 HttpHeaders headers = new HttpHeaders(); 
		 headers.setContentType(MediaType.APPLICATION_OCTET_STREAM); 
		 headers.setContentDispositionFormData("attachment", new String(fileName.getBytes("utf-8"),"iso8859-1"));
		 return new ResponseEntity<byte[]>(file, headers, HttpStatus.CREATED); 
     }
	
	 //�ύͶ������[��Ӧ��]
	@RequestMapping(value="/provider/complain/save", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addComplainOpt(TComplain complain, @RequestParam("file") MultipartFile file, Model model){
		Map<String, Object> map = new HashMap<String, Object>();

		try {
			if (!file.isEmpty()) {			
				byte[] bytes = file.getBytes();
				complain.setAttachment(bytes);
	        }
			complainBiz.addComplain(complain);
			map.put("msg", "Ͷ���ύ�ɹ�");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			map.put("msg", "Ͷ���ύʧ��");
			e.printStackTrace();
		}
		return map;
	}
	

	
}
