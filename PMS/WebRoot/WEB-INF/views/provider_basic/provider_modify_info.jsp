<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>供应商申请信息变更</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="供应商申请信息变更">

		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/modify_info.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">

		<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>script/jquery.form.js"></script>
		<script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
		<script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/sup_modify_info.js"></script>

<script type="text/javascript">
// 变更提示text输入框
function changed(id) {
	var inputID = "#" + id;
	var btnID = "#" + id + "Cancle";
	$(inputID).css('color', 'red');
	$(btnID).show();
}

// 撤销变更text输入框
function recover(id, preVal) {
	var inputID = "#" + id;
	var btnID = "#" + id + "Cancle";
	$(inputID).css('color', 'black');
	$(inputID).val(preVal);
	$(btnID).hide();
}

// 撤销变更select下拉框
function selectRecover(selectID, optionID) {
	$("#" + selectID).css('color', 'black');
	$("#" + selectID).val(optionID);
	var btnID = "#" + selectID + "Cancle";
	$(btnID).hide();
}

// 文件及文件名称上传
var file = document.getElementById("file");
var fileName = document.getElementById("fileName");
function handleFile() {
	fileName.value = file.value;
}


function closeLoading() {
	$("#loadingDiv").fadeOut("normal", function() {
		$(this).remove();
	});
}
var no;
$.parser.onComplete = function() {
	if (no)
		clearTimeout(no);
	no = setTimeout(closeLoading, 500);
}
</script>
</head>
	<body>
		<div id='loadingDiv' style="position: absolute; z-index: 1000; top: 0px; left: 0px; width: 100%; height: 100%; background: white; text-align: center;">
			<h1 style="top: 48%; position: relative;">
				<font color="#1a2111">努力加载中···</font>
				<img src="<%=basePath%>images/loading.gif"/>
			</h1>
		</div>
		<div id="modify-container" class="container">
			<div id="supModifyInfo" class="easyui-tabs1"
				data-options="tabPosition:'top'" style="height: 100%; padding: 10px"
				fit="true">
				<div id="basicInfo" title="基础信息" style="padding: 10px;">
					<div id="modify-info-form" class="content"
						style="padding: 15px 20px;">
						<form id="modifyApplyForm" enctype="multipart/form-data">
							<div class="column">
								<span class="current">基本信息<企业性质信息>
								</span>
							</div>
							<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">供应商名称</td>
										<td class="kv-content">
											<input type="text" id="pname" name="pname" value="${info.pname}" class="easyui-validatebox inputwidth" onchange="changed(this.id)" required="true">
											<input id="pnameCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('pname', '${info.pname}')" />
										</td>
										<td class="kv-label">
											供应商编号
										</td>
										<td class="kv-content">
											<input type="text" name="suppname" value="${Provider}" class="inputwidth" disabled>
											<input type="hidden" name="pno" value="${Provider}" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											供应商类型一
										</td>
										<td class="kv-content">
											<select id="ptype" name="ptype" class="inputwidth" onchange="changed(this.id)">
												<option value="0" ${info.ptype=='0'?'selected':''}>
													制造商
												</option>
												<option value="1" ${info.ptype=='1'?'selected':''}>
													代理商
												</option>
												<option value="2" ${info.ptype=='2'?'selected':''}>
													贸易商
												</option>
											</select>
											<input id="ptypeCancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('ptype', '${info.ptype}')" />
										</td>
										<td class="kv-label">
											供应商类型二
										</td>
										<td class="kv-content">
											<select id="ptype2" name="ptype2" class="inputwidth" onchange="changed(this.id)">
												<option value="0" ${info.ptype2=='0'?'selected':''}>
													社会供应商
												</option>
												<option value="1" ${info.ptype2=='1'?'selected':''}>
													集团公司内部供应商
												</option>
											</select>
											<input id="ptype2Cancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('ptype2', '${info.ptype2}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											组织机构代码
										</td>
										<td class="kv-content">
											<input id="orgcode" name="orgcode" type="text" class="easyui-validatebox inputwidth" value="${info.orgcode}" onchange="changed(this.id)" required="true">
											<input id="orgcodeCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('orgcode', '${info.orgcode}')" />
										</td>
										<td class="kv-label">
											工商注册号
										</td>
										<td class="kv-content">
											<input id="gsRegno" name="gsRegno" type="text" class="easyui-validatebox inputwidth" value="${info.gsRegno}" onchange="changed(this.id)" required="true">
											<input id="gsRegnoCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('gsRegno', '${info.gsRegno}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											国税登记证号
										</td>
										<td class="kv-content">
											<input id="taxguo" name="taxguo" type="text" class="easyui-validatebox inputwidth" value="${info.taxguo}" onchange="changed(this.id)" required="true">
											<input id="taxguoCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('taxguo', '${info.taxguo}')" />
										</td>
										<td class="kv-label">
											地税登记证号
										</td>
										<td class="kv-content">
											<input id="taxdi" name="taxdi" type="text" class="easyui-validatebox inputwidth" value="${info.taxdi}" onchange="changed(this.id)" required="true">
											<input id="taxdiCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('taxdi', '${info.taxdi}')" />
										</td>
									</tr>
									<input id="address" name="address" type="hidden" class="inputwidth" value="${info.address}">
									<input id="pfrom" name="pfrom" type="hidden" class="inputwidth" value="${info.pfrom}">
								</tbody>
							</table>
							<div class="column">
								<span class="current">联系人信息</span>
							</div>
							<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">
											联系人姓名
										</td>
										<td class="kv-content">
											<input id="cname" name="cname" onchange="changed(this.id)" type="text" name="linkman" class="easyui-validatebox inputwidth" value="${info.cname}" required="true">
											<input id="cnameCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('cname', '${info.cname}')" />
										</td>
										<td class="kv-label">
											移动电话
										</td>
										<td class="kv-content">
											<input id="mobile" name="mobile" type="text" name="telephone" class="easyui-validatebox inputwidth" value="${info.mobile}" onchange="changed(this.id)" required="true">
											<input id="mobileCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('mobile', '${info.mobile}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											固定电话
										</td>
										<td class="kv-content">
											<input id="phone" name="phone" type="text" class="easyui-validatebox inputwidth" value="${info.phone}" onchange="changed(this.id)" required="true">
											<input id="phoneCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('phone', '${info.phone}')" />
										</td>
										<td class="kv-label">
											电子邮箱
										</td>
										<td class="kv-content">
											<input id="email" name="email" type="text" name="email" class="easyui-validatebox inputwidth" value="${info.email}" onchange="changed(this.id)" required="true">
											<input id="emailCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('email', '${info.email}')" />
										</td>
									</tr>
								</tbody>
							</table>
							<div class="column">
								<span class="current">详细信息</span>
							</div>
							<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">地址</td>
										<td class="kv-content">
											<input type="text" id="paddress" name="paddress" class="easyui-validatebox inputwidth" value="${info.paddress}" onchange="changed(this.id)" required="true">
											<input id="paddressCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('paddress', '${info.paddress}')" />
										</td>
										<td class="kv-label">国家</td>
										<td class="kv-content">
											<input type="text" id="country" name="country" class="easyui-validatebox inputwidth" value="${info.country}" onchange="changed(this.id)" required="true">
											<input id="countryCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('country', '${info.country}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">详细地址</td>
										<td class="kv-content" colspan="3">
											<input type="text" id="details" name="details" class="easyui-validatebox inputwidth" value="${info.details}" onchange="changed(this.id)" required="true">
											<input id="detailsCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('details', '${info.details}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">邮编</td>
										<td class="kv-content">
											<input type="text" id="zipcode" name="zipcode" class="easyui-validatebox inputwidth" value="${info.zipcode}" onchange="changed(this.id)" required="true">
											<input id="zipcodeCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('zipcode', '${info.zipcode}')" />
										</td>
										<td class="kv-label">经营范围</td>
										<td class="kv-content">
											<input type="text" id="bizscope" name="bizscope" class="easyui-validatebox inputwidth" value="${info.bizscope}" onchange="changed(this.id)" required="true">
											<input id="bizscopeCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('bizscope', '${info.bizscope}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">质量管理体系认证</td>
										<td class="kv-content">
											<select id="qm" name="qm" class="inputwidth" onchange="changed(this.id)">
												<option value="ISO9001" ${info.qm=='ISO9001'?'selected':''}>ISO9001
												</option>
												<option value="ISO14000" ${info.qm=='ISO14000'?'selected':''}>ISO14000
												</option>
												<option value="OHSAS18000" ${info.qm=='OHSAS18000'?'selected':''}>OHSAS18000
												</option>
											</select>
											<input id="qmCancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('qm', '${info.qm}')" />
										</td>
										<td class="kv-label">发证机构</td>
										<td class="kv-content">
											<input type="text" id="qmOrg" name="qmOrg" class="easyui-validatebox inputwidth" value="${info.qmOrg}" onchange="changed(this.id)" required="true">
											<input id="qmOrgCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('qmOrg', '${info.qmOrg}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">产品质量认证</td>
										<td class="kv-content">
											<select id="qc" name="qc" class="inputwidth" onchange="changed(this.id)">
												<option value="CCC认证" ${info.qc=='CCC认证'?'selected':''}>
													CCC认证
												</option>
												<option value="CE认证" ${info.qc=='CE认证'?'selected':''}>
													CE认证
												</option>
												<option value="CQC认证" ${info.qc=='CQC认证'?'selected':''}>
													CQC认证
												</option>
												<option value="CB认证" ${info.qc=='CB认证'?'selected':''}>
													CB认证
												</option>
												<option value="PCT认证" ${info.qc=='PCT认证'?'selected':''}>
													PCT认证
												</option>
											</select>
											<input id="qcCancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('qc', '${info.qc}')" />
										</td>
										<td class="kv-label">
											发证机构
										</td>
										<td class="kv-content">
											<input id="qcOrg" type="text" name="qcOrg" class="easyui-validatebox inputwidth" value="${info.qcOrg}" onchange="changed(this.id)" required="true">
											<input id="qcOrgCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('qcOrg', '${info.qcOrg}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											生产/制造许可证获证情况及编号
										</td>
										<td class="kv-content">
											<input id="mlan" type="text" name="mlan" class="easyui-validatebox inputwidth" onchange="changed(this.id)" value="${info.mlan}">
											<input id="mlanCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('mlan', '${info.mlan}')" />
										</td>
										<td class="kv-label">
											账户金额
										</td>
										<td class="kv-content">
											<input type="text" class="easyui-validatebox inputwidth" value="${info.amount}" disable>
											<input id="amount" type="hidden" name="amount" class="inputwidth" value="${info.amount}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											供应商等级
										</td>
										<td class="kv-content" colspan="3">
											<input type="text" class="inputwidth" value="${info.ranke}" disable>
											<input id="ranke" type="hidden" name="ranke" class="easyui-validatebox inputwidth" value="${info.ranke}" required="true">
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											获奖情况
										</td>
										<td class="kv-content" colspan="3" class="inputwidth">
											<textarea rows="5" cols="80" id="awards" name="awards" onchange="changed(this.id)" >${info.awards}</textarea>
											<input id="awardsCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('awards', '${info.awards}')" />
										</td>
									</tr>
								</tbody>
							</table>
							<div class="column">
								<span class="current">公司情况</span>
							</div>
							<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">法人代表姓名</td>
										<td class="kv-content">
											<input type="text" id="fname" name="fanme" class="easyui-validatebox inputwidth" value="${info.fname}" onchange="changed(this.id)" required="true"/>
											<input id="fnameCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('fname', '${info.fname}')" />
										</td>
										<td class="kv-label">
											公司类型
										</td>
										<td class="kv-content">
											<select id="ctype" name="ctype" class="inputwidth" onchange="changed(this.id)">
												<option value="0" ${info.ctype=='0'?'selected':''}>
													内资企业
												</option>
												<option value="1" ${info.ctype=='1'?'selected':''}>
													国有企业
												</option>
												<option value="2" ${info.ctype=='2'?'selected':''}>
													集团企业
												</option>
											</select>
											<input id="ctypeCancle" type="button" value="撤销变更"
												style="display: none;"
												onclick="selectRecover('ctype', '${info.ctype}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">行业类别</td>
										<td class="kv-content">
											<select id="hytype" name="hytype" class="inputwidth" onchange="changed(this.id)">
												<option value="制造业" ${info.hytype=='制造业'?'selected':''}>
													制造业
												</option>
												<option value="林业" ${info.hytype=='林业'?'selected':''}>
													林业
												</option>
												<option value="渔业" ${info.hytype=='渔业'?'selected':''}>
													渔业
												</option>
											</select>
											<input id="hytypeCancle" type="button" value="撤销变更" style="display: none;"  onclick="selectRecover('hytype', '${info.hytype}')" />
										</td>
										<td class="kv-label">
											所属大类
										</td>
										<td class="kv-content">
											<select id="bigtype" name="bigtype" class="inputwidth"
												onchange="changed(this.id)">
												<option value="农副食品加工业" ${info.bigtype=='农副食品加工业'?'selected':''}>
													农副食品加工业
												</option>
												<option value="木质家具制造" ${info.bigtype=='木质家具制造'?'selected':''}>
													木质家具制造
												</option>
												<option value="麻纺织" ${info.bigtype=='麻纺织'?'selected':''}>
													麻纺织
												</option>
											</select>
											<input id="bigtypeCancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('bigtype', '${info.bigtype}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">
											注册资本(万元)
										</td>
										<td class="kv-content">
											<input type="text" id="zczb" name="zczb" class="easyui-validatebox inputwidth" value="${info.zczb}" onchange="changed(this.id)" required="true"/>
											<input id="zczbCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('zczb', '${info.zczb}')" />
										</td>
										<td class="kv-label">成立时间</td>
										<td class="kv-content">
											<input id="begindate" name="begindate" value="${info.begindate}" class="easyui-datebox dateinput inputwidth" type="text" onchange="changed(this.id)" />
											<input id="begindateCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('begindate', '${info.begindate}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">开户银行</td>
										<td class="kv-content">
											<input type="text" id="bank" name="bank" class="easyui-validatebox inputwidth" value="${info.bank}" onchange="changed(this.id)" required="true"/>
											<input id="bankCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('bank', '${info.bank}')" />
										</td>
										<td class="kv-label">银行账号</td>
										<td class="kv-content">
											<input type="text" id="bankno" name="bankno" class="easyui-validatebox inputwidth" value="${info.bankno}" onchange="changed(this.id)" required="true"/>
											<input id="banknoCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('bankno', '${info.bankno}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">银行信用等级</td>
										<td class="kv-content">
											<select id="creditLevel" name="creditLevel" class="inputwidth" onchange="changed(this.id)">
												<option value="AAA级" ${info.creditLevel=='AAA级'?'selected':''}>
													AAA级
												</option>
												<option value="AA级" ${info.creditLevel=='AA级'?'selected':''}>
													AA级
												</option>
												<option value="A级" ${info.creditLevel=='A级'?'selected':''}>
													A级
												</option>
												<option value="BBB级" ${info.creditLevel=='BBB级'?'selected':''}>
													BBB级
												</option>
												<option value="BB级" ${info.creditLevel=='BB级'?'selected':''}>
													BB级
												</option>
												<option value="B级" ${info.creditLevel=='B级'?'selected':''}>
													B级
												</option>
											</select>
											<input id="creditLevelCancle" type="button" value="撤销变更" style="display: none;" onclick="selectRecover('creditLevel', '${info.creditLevel}')" />
										</td>
										<td class="kv-label">公司电话</td>
										<td class="kv-content">
											<input id="tel" name="tel" type="text" class="easyui-validatebox inputwidth" value="${info.tel}" onchange="changed(this.id)" required="true">
											<input id="telCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('tel', '${info.tel}')" />
										</td>
									</tr>
									<tr>
										<td class="kv-label">传真</td>
										<td class="kv-content">
											<input id="fax" name="fax" type="text" class="easyui-validatebox inputwidth" value="${info.fax}" onchange="changed(this.id)" required="true">
											<input id="faxCancle" type="button" value="撤销变更" style="display: none;" onclick="recover('fax', '${info.fax}')" />
										</td>
										<td class="kv-label">公司网址</td>
										<td class="kv-content">
											<input id="address2" name="address2" type="text" class="easyui-validatebox inputwidth" value="${info.address2}" onchange="changed(this.id)" required="true">
											<input id="address2Cancle" type="button" value="撤销变更" style="display: none;" onclick="recover('address2', '${info.address2}')" />
										</td>
									</tr>
								</tbody>
							</table>
							<div class="column">
								<span class="current">变更证明材料</span>
							</div>
							<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">
											附件上传
										</td>
									</tr>
									<tr>
										<td class="kv-content">
											<input class="easyui-filebox" id="file" name="file" style="width: 70%" onchange="handleFile()" required></input>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
						<div class="opt-buttons" style="padding: 15px 30px">
							<a href="javascript:void(0);" class="easyui-linkbutton"
								onclick="submitModifyApply()">保存</a>
							<a href="javascript:void(0);" class="easyui-linkbutton">删除</a>
						</div>
					</div>
				</div>
				<!--变更信息表单End-->
				<div id="otherInfo" title="资质信息" style="padding: 10px;">
					<div class="content" style="padding: 15px 20px;">
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">
										文件类型
									</td>
									<td class="kv-label">
										选择文件并上传
									</td>
									<td class="kv-label">
										文件名
									</td>
									<td class="kv-label">
										备注
									</td>
									<td class="kv-label">
										有效期(开始-结束)
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										企业营业执照
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#">营业执照.jpg</a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										组织机构代码证
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#">营业执照.jpg</a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										税务登记证明
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#">税务登记证明.doc</a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										代理授权证明
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#"></a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										银行开户证明
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#"></a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										银行资质证明
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#"></a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
								<tr>
									<td class="kv-content">
										获奖证书
									</td>
									<td class="kv-content">
										<input class="easyui-filebox" name="uploadFiles"
											style="width: 70%"></input>
										<a href="#">上传</a>
									</td>
									<td class="kv-content">
										<a href="#"></a>
									</td>
									<td class="kv-content">
										<input class="easyui-textbox" name="comments"
											style="width: 90%"></input>
									</td>
									<td class="kv-content">
										从
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
										<br />
										至
										<input class="easyui-datebox" type="text" style="width: 80%"></input>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="opt-buttons" style="padding: 15px 30px">
							<a href="#" class="easyui-linkbutton" onclick="lastPage('基础信息')">上一步</a>
							<a href="#" class="easyui-linkbutton" onclick="nextPage('变更证明')">下一步</a>
							<a href="#" class="easyui-linkbutton">删除</a>
						</div>
					</div>
					<!--变更信息表单End-->
				</div>
			</div>
			<!--tabs end-->
		</div>
	</body>
</html>
