package com.pms.sup.control;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pms.sup.biz.ProviderChangeBiz;
import com.pms.sup.entity.TCompany;
import com.pms.sup.entity.TContacter;
import com.pms.sup.entity.TProviderApply;
import com.pms.sup.entity.TProviderChange;
import com.pms.sup.entity.TProviderChangeAudit;
import com.pms.sup.entity.TProviderChangeData;
import com.pms.sup.entity.TProviderDetail;
import com.pms.sup.util.Page;

/**
 * ��Ӧ����Ϣ���ģ��
 */
@Controller
public class ProviderChangeAction {
	@Autowired
	private ProviderChangeBiz providerChangeBiz;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, false));
	}

	// ������Ϣ���[��Ӧ��]
	@RequestMapping(value = "provider/modify", method = RequestMethod.GET)
	public String providerModify(Model model, HttpServletRequest request) {
		String result = "provider_basic/provider_modify_info.jsp";
		String pno = (String) request.getSession().getAttribute("Provider");
		String label = (String) request.getSession().getAttribute("label");
		Map<String, Object> map = new HashMap<String, Object>();
		TProviderChange params = new TProviderChange();
		// ��Ӧ�̸���д׼�����룬��δ��ȡ��Ӧ�̱��
		if (label.equals("0")) {
			try {
				map = providerChangeBiz.getApplyRecordByID(pno);
			} catch (Exception e) {
				e.printStackTrace();
			}
			TProviderApply apply = (TProviderApply) map.get("apply");
			TContacter contacter = (TContacter) map.get("contacter");
			TCompany company = (TCompany) map.get("company");
			System.out.println(company.getFname());
			TProviderDetail detail = (TProviderDetail) map.get("detail");
			model.addAttribute("info", providerChangeBiz.transApplyToChange("",
					apply, contacter, company, detail));
		} else {
			params.setPno(pno);
			params.setState("������");
			try {// ��Ӧ���ѽ��й���Ϣ��������ͨ��
				TProviderChange providerChange = providerChangeBiz
						.getProviderChange(params);
				if (providerChange != null) {
					model.addAttribute("info", providerChange);
				} else {
					// ��Ӧ����δ������Ϣ���
					map = providerChangeBiz.getApplyRecord(pno);
					TProviderApply apply = (TProviderApply) map.get("apply");
					TContacter contacter = (TContacter) map.get("contacter");
					TCompany company = (TCompany) map.get("company");
					TProviderDetail detail = (TProviderDetail) map
							.get("detail");
					model.addAttribute("info", providerChangeBiz
							.transApplyToChange(pno, apply, contacter, company,
									detail));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	// ������Ϣ�����ѯҳ��[��Ӧ��]
	@RequestMapping(value = "provider/modify/process/check", method = RequestMethod.GET)
	public String processCheckPage() {
		String result = "provider_basic/provider_process_check.jsp";
		return result;
	}

	// ������Ϣ������������ѯҳ��[��Ӧ��]
	@RequestMapping(value = "provider/modify/process/detail", method = RequestMethod.GET)
	public String processCheckDetail() {
		String result = "provider_basic/provider_process_detail.jsp";
		return result;
	}

	// �ύ��Ϣ�������[��Ӧ��]
	@RequestMapping(value = "provider/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addComplainAudit(TProviderChange newModify,
			@RequestParam("file") MultipartFile file) {
		Map<String, Object> map = new HashMap<String, Object>();

		newModify.setApplyDate(new Date());
		newModify.setState("������");
		newModify.setAtype("0");

		TProviderChangeData changeData = new TProviderChangeData();
		if (!file.isEmpty()) {
			try {
				changeData.setFujian(file.getBytes());
				changeData.setName(file.getOriginalFilename());
				Boolean result = providerChangeBiz.submitModifyApply(newModify,
						changeData);
				if (result) {
					map.put("msg", "��Ϣ��������ύ�ɹ�");
				} else {
					map.put("msg", "���б�����������У������ύ������");
				}
			} catch (IOException e) {
				map.put("msg", "��Ϣ��������ύʧ��");
				e.printStackTrace();
			} catch (Exception e) {
				map.put("msg", "��Ϣ��������ύʧ��");
				e.printStackTrace();
			}
		}

		return map;
	}

	// ������Ϣ�������������[��ɲ�Ա��]
	@RequestMapping(value = "admin/modify/audit", method = RequestMethod.GET)
	public String modifyAuditPage() {
		String result = "/provider_basic/admin_modify_approve.jsp";
		return result;
	}

	// ��ҳ��ѯ��Ϣ����б�[��ɲ�Ա��]
	@RequestMapping(value = "admin/modify/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> modifyApplyList(Page vo,
			HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> result = new HashMap<String, Object>();

		if (vo.getRows() != null) {
			int start = vo.getRows() * (vo.getPage() - 1);
			int end = vo.getRows() * vo.getPage();

			String pno = request.getParameter("pno");

			String startDateStr = request.getParameter("startDate");
			String endDateStr = request.getParameter("endDate");
			Date startDate = null, endDate = null;

			if (startDateStr != null && !"".equals(startDateStr)
					&& endDateStr != null && !"".equals(endDateStr)) {
				try {
					startDate = new SimpleDateFormat("yyyy-MM-dd")
							.parse(startDateStr);
					endDate = new SimpleDateFormat("yyyy-MM-dd")
							.parse(endDateStr);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			map.put("offset", start);
			map.put("limit", end);
			map.put("pno", pno);
			map.put("startDate", startDate);
			map.put("endDate", endDate);

			Integer total = null;
			List<TProviderChange> list = null;
			try {
				total = providerChangeBiz.count(map);
				list = providerChangeBiz.getList(map);
				result.put("total", total);
				result.put("rows", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {

		}
		return result;
	}

	// ���뵥����Ϣ�����������[��ɲ�Ա��]
	@RequestMapping(value = "admin/modify/audit/edit", method = RequestMethod.GET)
	public String modifyApplyAuditPage(HttpServletRequest request, Model model) {
		String result = "/provider_basic/admin_modify_approve_detail.jsp";
		try {
			String applyno = request.getParameter("applyno");
			String pno = request.getParameter("pno");
			String pname = request.getParameter("pname");
			String pnameNew = new String(pname.getBytes("ISO-8859-1"), "utf-8");
			model.addAttribute("applyno", applyno);
			model.addAttribute("pno", pno);
			model.addAttribute("pname", pnameNew);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	// �ύ��Ϣ�����������[��ɲ�Ա��]
	@RequestMapping(value = "admin/modify/audit/submit", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> modifyAuditSubmit(TProviderChangeAudit changeAudit) {
		Map<String, Object> map = new HashMap<String, Object>();
		TProviderChange change = new TProviderChange();
		try {
			change.setApplyno(changeAudit.getApplyno());
			change.setState("������");
			changeAudit.setAdate(new Date());
			changeAudit.setSynchro(0);
			providerChangeBiz.submitChangeAudit(changeAudit, change);
			map.put("msg", "�����ύ�ɹ�");
		} catch (Exception e) {
			map.put("msg", "�����ύʧ��");
			e.printStackTrace();
		}
		return map;
	}

	// �鿴��Ϣ���������ϸ��Ϣ[��ɲ�Ա��]
	@RequestMapping(value = "admin/modify/detail", method = RequestMethod.GET)
	public String modifyAuditSubmit(HttpServletRequest request, Model model) {
		String applyno = request.getParameter("applyno");
		String result = "provider_basic/admin_modify_detail.jsp";
		TProviderChange params = new TProviderChange();
		TProviderChange record = new TProviderChange();
		params.setApplyno(applyno);
		try {
			record = providerChangeBiz.getProviderChange(params);
			model.addAttribute("apply", record);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	// �鿴��Ӧ��׼����Ϣ[������Ա]
	@RequestMapping(value = "admin/provider/detail", method = RequestMethod.GET)
	public String providerInfoDetail(Model model, HttpServletRequest request) {
		String result = "provider_access/provider_detail.jsp";
		String pano = request.getParameter("pano");
		Map<String, Object> map = new HashMap<String, Object>();

		try {
			map = providerChangeBiz.getApplyRecordByID(pano);
			TProviderApply apply = (TProviderApply) map.get("apply");
			TContacter contacter = (TContacter) map.get("contacter");
			TCompany company = (TCompany) map.get("company");
			TProviderDetail detail = (TProviderDetail) map.get("detail");
			model.addAttribute("info", providerChangeBiz.transApplyToChange("",
					apply, contacter, company, detail));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

}
