// 供应商自助服务
var menuProvider = {
	menus: [{
		title: '供应商自助服务',
		icon: '&#xe620;',
		menu: [{
			title: '准入申请',
			href: 'area/selectarea.do',
			isCurrent: true
		},{
			title: '信息变更',
			href: 'provider/modify.do'
		},{
			title: '产品变更',
			href: 'GoodsChange/mainSumbit.do'
		},{
			title: '投诉管理',
			href: 'provider/complain/index.do'
		},{
			title: '进度查询',
			href: 'provider/modify/process/check.do'
		},{
			title: '年审通知',
			href: 'provider/sup_receive_notification.do'
		},{
			title: '改进方案填写',
			href: 'provider/sup_query_planstate.do'
		},{
			title: '改进计划查询',
			href: 'provider/sup_query_planstate.do'
		}]
	}]
};

// 后台管理服务
var menuAdmin = {
	menus: [{
		title: '准入管理',
		icon: '&#xe683;',
		menu: [{
			title: '准入方案申请',
			href: 'admin/adm_access_plan_apply.do',
			isCurrent: true
		},{
			title: '准入方案审核',
			href: 'admin/access_plan_select.do'
		},{
			title: '准入信息录入',
			href: 'area/selectarea.do'
		},{
			title: '准入信息审核',
			href: 'admin/sup_access_check.do'
		},]
	},{
		title: '日常管理',
		icon: '&#xe692;',
		menu: [{
			title: '变更审批',
			href: 'admin/modify/audit.do',
			isCurrent: true
		},{
			title: '投诉管理',
			href: 'admin/complain/index.do'
		},{
			title: '主数据管理',
			href: 'admin/mainData.do'
		},{
			title: '年费管理',
			href: 'amdin/yearmoney/index.do'
		},{
			title: '准入年审',
			href: 'admin/adm_send_notificationt.do'
		},{
			title: '年审材料接收',
			href: 'admin/adm_receive_material.do'
		}]
	},{
		title: '考评管理',
		icon: '&#xe6fc;',
		menu: [{
			title: '考评综合管理',
			href: 'admin/progroup/proaudit/workGroupMain.do',
			isCurrent: true
		},{
			title: '考核方案审批',
			href: 'admin/auditcommit/proaudit/proChechAudit.do'
		},{
			title: '考评结果审批',
			href: 'admin/auditcommit/proaudit/auditHandleCheck.do'
		},{
			title: '考评人员管理',
			href: 'admin/relevdepart/proaudit/arrangeTester.do'
		},{
			title: '在线考评打分',
			href: 'admin/relevdepart/proaudit/scoreOnLine.do'
		}]
	},{
		title: '持续改进',
		icon: '&#xe673;',
		menu:  [{
			title: '改进需求发布',
			href: 'progroup/improve/adm_choose_sup.do',
			isCurrent: true
		},{
			title: '改进方案审批',
			href: 'progroup/improve/adm_query_planstate.do'
		},{
			title: '改进结果录入',
			href: 'progroup/improve/adm_query_planstate.do'
		},{
			title: '改进结果评审',
			href: 'auditcommit/improve/adm2_query_planstate.do'
		},{
			title: '改进计划查询',
			href: 'progroup/improve/adm_query_planstate.do'
		}]
	},{
		title: '动态管理',
		icon: '&#xe6e5;',
		menu: [{
			title: '淘汰申请',
			href: 'admin/profess_die_submit.do',
			isCurrent: true
		},{
			title: '淘汰审批',
			href: 'admin/material_review_die_select.do'
		},{
			title: '冻结申请',
			href: 'admin/profess_frozen_submit.do'
		},{
			title: '冻结审批',
			href: 'admin/material_review_frozen_select.do'
		},{
			title: '解冻申请',
			href: 'admin/profess_thaw_submit.do'
		},{
			title: '解冻审批',
			href: 'admin/material_review_thaw_select.do'
		}]
	},{
		title: '战略供应商管理',
		icon: '&#xe6b0;',
		menu: [{
			title: '战略物资申请',
			href: 'admin/progroup/mateApply.do',
			isCurrent: true
		},{
			title: '战略物资评审',
			href: 'admin/auditcommit/reviewmate.do'
		},{
			title: '战略物资核准',
			href: 'admin/buydept/allowmate.do'
		},{
			title: '战略供应商申请',
			href: 'admin/progroup/supApply.do'
		},{
			title: '战略供应商评审',
			href: 'admin/auditcommit/reviewsup.do'
		},{
			title: '战略供应商核准',
			href: 'admin/buydept/allowsup.do'
		}]
	}]
};

// 专业工作组
var menuProgroup = {
	menus: [{
		title: '准入管理',
		icon: '&#xe683;',
		menu: [{
			title: '准入方案申请',
			href: 'admin/adm_access_plan_apply.do',
			isCurrent: true
		},{
			title: '准入信息审核',
			href: 'admin/sup_access_check.do'
		}]
	},{
		title: '日常管理',
		icon: '&#xe692;',
		menu: [{
			title: '准入年审',
			href: 'admin/adm_send_notificationt.do'
		},{
			title: '年审材料接收',
			href: 'admin/adm_receive_material.do'
		}]
	},{
		title: '考评管理',
		icon: '&#xe6fc;',
		menu: [{
			title: '考评综合管理',
			href: 'admin/progroup/proaudit/workGroupMain.do',
			isCurrent: true
		}]
	},{
		title: '持续改进',
		icon: '&#xe673;',
		menu: [{
			title: '改进需求发布',
			href: 'suppliers_improve/adm_choose_sup.html',
			isCurrent: true
		},{
			title: '改进结果录入',
			href: 'suppliers_improve/adm_query_planstate.html'
		},{
			title: '改进结果评审',
			href: 'suppliers_improve/adm2_query_planstate.html'
		},{
			title: '改进计划查询',
			href: 'suppliers_improve/adm_query_planstate.html'
		}]
	},{
		title: '动态管理',
		icon: '&#xe6e5;',
		menu: [{
			title: '淘汰申请',
			href: 'admin/profess_die_submit.do',
			isCurrent: true
		},{
			title: '冻结申请',
			href: 'admin/profess_frozen_submit.do'
		},{
			title: '解冻申请',
			href: 'admin/profess_thaw_submit.do'
		}]
	},{
		title: '战略供应商管理',
		icon: '&#xe6b0;',
		menu: [{
			title: '战略物资申请',
			href: 'admin/progroup/mateApply.do',
			isCurrent: true
		},{
			title: '战略供应商申请',
			href: 'admin/progroup/supApply.do'
		}]
	}]
};

// 物采部门员工
var menuWucai = {
	menus: [{
		title: '准入管理',
		icon: '&#xe683;',
		menu: [{
			title: '准入方案审核',
			href: 'admin/access_plan_select.do'
		},{
			title: '准入信息审核',
			href: 'admin/sup_access_check.do'
		}]
	},{
		title: '日常管理',
		icon: '&#xe692;',
		menu: [{
			title: '变更审批',
			href: 'admin/modify/audit.do',
			isCurrent: true
		},{
			title: '准入年审',
			href: 'admin/adm_send_notificationt.do'
		},{
			title: '年审材料接收',
			href: 'admin/adm_receive_material.do'
		}]
	},{
		title: '考评管理',
		icon: '&#xe6fc;',
		menu: [{
			title: '考核方案审批',
			href: 'admin/auditcommit/proaudit/proChechAudit.do'
		},{
			title: '考评结果审批',
			href: 'admin/auditcommit/proaudit/auditHandleCheck.do'
		}]
	},{
		title: '动态管理',
		icon: '&#xe6e5;',
		menu: [{
			title: '淘汰审批',
			href: 'admin/material_review_die_select.do'
		},{
			title: '冻结审批',
			href: 'admin/material_review_frozen_select.do'
		},{
			title: '解冻申请',
			href: 'admin/profess_thaw_submit.do'
		},{
			title: '解冻审批',
			href: 'admin/material_review_thaw_select.do'
		}]
	},{
		title: '战略供应商管理',
		icon: '&#xe6b0;',
		menu: [{
			title: '战略物资核准',
			href: 'admin/buydept/allowmate.do'
		},{
			title: '战略供应商核准',
			href: 'admin/buydept/allowsup.do'
		}]
	}]
};

// 评审委员会
var menuPingshen = {
	menus: [{
		title: '准入管理',
		icon: '&#xe683;',
		menu: [{
			title: '准入信息审核',
			href: 'admin/sup_access_check.do'
		},]
	},{
		title: '考评管理',
		icon: '&#xe6fc;',
		menu: [{
			title: '考评综合管理',
			href: 'admin/progroup/proaudit/workGroupMain.do',
			isCurrent: true
		},{
			title: '考核方案审批',
			href: 'admin/auditcommit/proaudit/proChechAudit.do'
		},{
			title: '考评结果审批',
			href: 'admin/auditcommit/proaudit/auditHandleCheck.do'
		}]
	},{
		title: '持续改进',
		icon: '&#xe673;',
		menu: [{
			title: '改进结果评审',
			href: 'suppliers_improve/adm2_query_planstate.html'
		}]
	},{
		title: '动态管理',
		icon: '&#xe6e5;',
		menu: [{
			title: '淘汰审批',
			href: 'admin/material_review_die_select.do'
		},{
			title: '冻结审批',
			href: 'admin/material_review_frozen_select.do'
		},{
			title: '解冻审批',
			href: 'admin/material_review_thaw_select.do'
		}]
	},{
		title: '战略供应商管理',
		icon: '&#xe6b0;',
		menu: [{
			title: '战略物资评审',
			href: 'admin/auditcommit/reviewmate.do'
		},{
			title: '战略供应商申请',
			href: 'admin/progroup/supApply.do'
		}]
	}]
};

//投诉处理部门
var menuComplain = {
	menus: [{
		title: '日常管理',
		icon: '&#xe692;',
		menu: [{
			title: '投诉管理',
			href: 'admin/complain/index.do'
		}]
	}]
};

//财务部门工作人员
var menuAccount = {
	menus: [{
		title: '日常管理',
		icon: '&#xe692;',
		menu: [{
			title: '年费管理',
			href: 'amdin/yearmoney/index.do'
		}]
	}]
};
