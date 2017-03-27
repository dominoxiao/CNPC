<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商信息变更申请详情查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商信息变更申请详情">
	
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/modify_info.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">

  </head>
 	<body>
		<div id="modify-container" class="container">	
			<div id="basicInfo" title="基础信息" style="padding: 10px;">
				<div id="modify-info-form" class="content" style="padding: 15px 20px;">
					<form id="modifyApplyForm" enctype="multipart/form-data">
						<div class="column"><span class="current">基本信息</span></div>
						<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">供应商名称</td>
										<td class="kv-content">${apply.pname}</td>
										<td class="kv-label">供应商编号</td>
										<td class="kv-content">${apply.pno}</td>
									</tr>
									<tr>
										<td class="kv-label">供应商类型一</td>
										<td class="kv-content">${apply.ptype}</td>
										<td class="kv-label">供应商类型二</td>
										<td class="kv-content">${apply.ptype2}</td>
									</tr>
									<tr>
										<td class="kv-label">组织机构代码</td>
										<td class="kv-content">${apply.orgcode}</td>
										<td class="kv-label">工商注册号</td>
										<td class="kv-content">${apply.gsRegno}</td>
									</tr>
									<tr>
										<td class="kv-label">国税登记证号</td>
										<td class="kv-content">${apply.taxguo}</td>
										<td class="kv-label">地税登记证号</td>
										<td class="kv-content">${apply.taxdi}</td>
									</tr>
								</tbody>
						</table>
						<div class="column"><span class="current">联系人信息</span></div>
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">联系人姓名</td>
									<td class="kv-content">${apply.cname}</td>
									<td class="kv-label">移动电话</td>
									<td class="kv-content">${apply.mobile}</td>
								</tr>
								<tr>
									<td class="kv-label">固定电话</td>
									<td class="kv-content">${apply.phone}</td>
									<td class="kv-label">电子邮箱</td>
									<td class="kv-content">${apply.email}</td>
								</tr>
							</tbody>
						</table>
						<div class="column"><span class="current">详细信息</span></div>
						<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">地址</td>
										<td class="kv-content">${apply.address}</td>
										<td class="kv-label">国家</td>
										<td class="kv-content">${apply.country}</td>
									</tr>
									<tr>
										<td class="kv-label">详细地址</td>
										<td class="kv-content" colspan="3">${apply.details}</td>
									</tr>
									<tr>
										<td class="kv-label">邮编</td>
										<td class="kv-content">${apply.zipcode}</td>
										<td class="kv-label">经营范围</td>
										<td class="kv-content">${apply.bizscope}</td>
									</tr>
									<tr>
										<td class="kv-label">质量管理体系认证</td>
										<td class="kv-content">${apply.qm}</td>
										<td class="kv-label">发证机构</td>
										<td class="kv-content">${apply.qmOrg}</td>
									</tr>
									<tr>
										<td class="kv-label">产品质量认证</td>
										<td class="kv-content">${apply.qc}</td>
										<td class="kv-label">发证机构</td>
										<td class="kv-content">${apply.qcOrg}</td>
									</tr>
									<tr>
										<td class="kv-label">生产/制造许可证获证情况及编号</td>
										<td class="kv-content">${apply.mlan}</td>
										<td class="kv-label">账户金额</td>
										<td class="kv-content">${apply.amount}</td>
									</tr>
									<tr>
										<td class="kv-label">供应商等级</td>
										<td class="kv-content" colspan="3">${apply.ranke}</td>
									</tr>
									<tr>
										<td class="kv-label">获奖情况</td>
										<td class="kv-content" colspan="3" class="inputwidth">${apply.awards}</td>
									</tr>
								</tbody>
						</table>
						<div class="column"><span class="current">公司情况</span></div>
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">法人代表姓名</td>
									<td class="kv-content">${apply.fname}</td>
									<td class="kv-label">公司类型</td>
									<td class="kv-content">${apply.ctype}</td>
								</tr>
								<tr>
									<td class="kv-label">行业类别</td>
									<td class="kv-content">${apply.hytype}</td>
									<td class="kv-label">所属大类</td>
									<td class="kv-content">${apply.bigtype}</td>
								</tr>
								<tr>
									<td class="kv-label">注册资本(万元)</td>
									<td class="kv-content">${apply.zczb}</td>
									<td class="kv-label">成立时间</td>
									<td class="kv-content">${apply.begindate}</td>
								</tr>
								<tr>
									<td class="kv-label">开户银行</td>
									<td class="kv-content">${apply.bank}</td>
									<td class="kv-label">银行账号</td>
									<td class="kv-content">${apply.bankno}</td>
								</tr>
								<tr>
									<td class="kv-label">银行信用等级</td>
									<td class="kv-content">${apply.creditLevel}</td>
									<td class="kv-label">公司电话</td>
									<td class="kv-content">${apply.tel}</td>
								</tr>
								<tr>
									<td class="kv-label">传真</td>
									<td class="kv-content">${apply.fax}</td>
									<td class="kv-label">公司网址</td>
									<td class="kv-content">${apply.address2}</td>
								</tr>
							</tbody>
						</table>
						<div class="column"><span class="current">变更证明材料</span></div>
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">相关附件</td>
								</tr>
								<tr>
									<td class="kv-content"></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
	    </div>
	</body>
</html>
