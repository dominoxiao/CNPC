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

	</head>
	<body>
		<div id="modify-container" class="container">
			<div id="supModifyInfo" class="easyui-tabs1" data-options="tabPosition:'top'" style="height: 100%; padding: 10px" fit="true">
				<div id="basicInfo" title="基础信息" style="padding: 10px;">
					<div id="modify-info-form" class="content" style="padding: 15px 20px;">
					<form id="modifyApplyForm" enctype="multipart/form-data">
						<div class="column"><span class="current">基本信息<企业性质信息></span></div>
						<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">供应商名称</td>
										<td class="kv-content" colspan="3">
											<input type="text" id="pname" name="pname" value="${info.pname}" class="inputwidth">
											
										</td>
									</tr>
									<tr>
										<td class="kv-label">供应商类型一</td>
										<td class="kv-content">
											<select id="ptype" name="ptype" class="inputwidth">
												<option value="0" ${info.ptype=='0'?'selected':''}>制造商</option>
												<option value="1" ${info.ptype=='1'?'selected':''}>代理商</option>
												<option value="2" ${info.ptype=='2'?'selected':''}>贸易商</option>
											</select>
										</td>
										<td class="kv-label">供应商类型二</td>
										<td class="kv-content">
											<select id="ptype2" name="ptype2" class="inputwidth">
												<option value="0" ${info.ptype2=='0'?'selected':''}>社会供应商</option>
												<option value="1" ${info.ptype2=='1'?'selected':''}>集团公司内部供应商</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="kv-label">组织机构代码</td>
										<td class="kv-content">
											<input id="orgcode" name="orgcode" type="text" class="inputwidth" value="${info.orgcode}">
										</td>
										<td class="kv-label">工商注册号</td>
										<td class="kv-content">
											<input id="gsRegno" name="gsRegno" type="text" class="inputwidth" value="${info.gsRegno}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">国税登记证号</td>
										<td class="kv-content">
											<input id="taxguo" name="taxguo" type="text"  class="inputwidth" value="${info.taxguo}">
										</td>
										<td class="kv-label">地税登记证号</td>
										<td class="kv-content">
											<input id="taxdi" name="taxdi" type="text" class="inputwidth" value="${info.taxdi}">
										</td>
									</tr>
									<input id="address" name="address" type="hidden"  class="inputwidth" value="${info.address}">
									<input id="pfrom" name="pfrom" type="hidden"  class="inputwidth" value="${info.pfrom}">
								</tbody>
						</table>
						<div class="column"><span class="current">联系人信息</span></div>
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">联系人姓名</td>
									<td class="kv-content">
										<input id="cname" name="cname" type="text" name="linkman" class="inputwidth" value="${info.cname}">
									</td>
									<td class="kv-label">移动电话</td>
									<td class="kv-content">
										<input id="mobile" name="mobile" type="text" name="telephone" class="inputwidth" value="${info.mobile}">
									</td>
								</tr>
								<tr>
									<td class="kv-label">
										固定电话
									</td>
									<td class="kv-content">
										<input id="phone" name="phone" type="text" class="inputwidth" value="${info.phone}">
									</td>
									<td class="kv-label">
										电子邮箱
									</td>
									<td class="kv-content">
										<input id="email" name="email" type="text" name="email" class="inputwidth" value="${info.email}">
									</td>
								</tr>
							</tbody>
						</table>
						<div class="column"><span class="current">详细信息</span></div>
						<table class="kv-table">
								<tbody>
									<tr>
										<td class="kv-label">地址</td>
										<td class="kv-content">
											<input type="text" id="paddress" name="paddress" class="inputwidth" value="${info.paddress}">
										</td>
										<td class="kv-label">国家</td>
										<td class="kv-content">
											<input type="text" id="country" name="country" class="inputwidth" value="${info.country}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">详细地址</td>
										<td class="kv-content" colspan="3">
											<input type="text" id="details" name="details" class="inputwidth" value="${info.details}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">邮编</td>
										<td class="kv-content">
											<input type="text" id="zipcode" name="zipcode" class="inputwidth" value="${info.zipcode}">
										</td>
										<td class="kv-label">经营范围</td>
										<td class="kv-content">
											<input type="text" id="bizscope" name="bizscope" class="inputwidth" value="${info.bizscope}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">质量管理体系认证</td>
										<td class="kv-content">
											<select id="qm" name="qm" class="inputwidth">
												<option>请选择类型&nbsp;&nbsp;</option>
												<option value="ISO9001" ${info.qm=='ISO9001'?'selected':''}>ISO9001</option>
												<option value="ISO14000" ${info.qm=='ISO14000'?'selected':''}>ISO14000</option>
												<option value="OHSAS18000" ${info.qm=='OHSAS18000'?'selected':''}>OHSAS18000</option>
											</select>
										</td>
										<td class="kv-label">发证机构</td>
										<td class="kv-content">
											<input type="text" id="qmOrg" name="qmOrg" class="inputwidth" value="${info.qmOrg}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">产品质量认证</td>
										<td class="kv-content">
											<select id="qc" name="qc" class="inputwidth">
												<option value="CCC认证" ${info.qc =='CCC认证'?'selected':''}>CCC认证</option>
												<option value="CE认证" ${info.qc =='CE认证'?'selected':''}>CE认证</option>
												<option value="CQC认证" ${info.qc =='CQC认证'?'selected':''}>CQC认证</option>
												<option value="CB认证" ${info.qc =='CB认证'?'selected':''}>CB认证</option>
												<option value="PCT认证" ${info.qc =='PCT认证'?'selected':''}>PCT认证</option>
											</select>
										</td>
										<td class="kv-label">发证机构</td>
										<td class="kv-content">
											<input id="qcOrg" type="text" name="qcOrg" class="inputwidth" value="${info.qcOrg}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">生产/制造许可证获证情况及编号</td>
										<td class="kv-content">
											<input id="mlan" type="text" name="mlan" class="inputwidth" value="${info.mlan}">
										</td>
										<td class="kv-label">账户金额</td>
										<td class="kv-content">
											<input type="text" class="inputwidth" value="${info.amount}" disable>
											<input id="amount" type="hidden" name="amount" class="inputwidth" value="${info.amount}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">供应商等级</td>
										<td class="kv-content" colspan="3">
										    <input type="text" class="inputwidth" value="${info.ranke}" disable>
											<input id="ranke" type="hidden" name="ranke" class="inputwidth" value="${info.ranke}">
										</td>
									</tr>
									<tr>
										<td class="kv-label">获奖情况</td>
										<td class="kv-content" colspan="3" class="inputwidth">
											<textarea rows="5" cols="80" id="awards" name="awards" value="${info.awards}"></textarea>
										</td>
									</tr>
								</tbody>
						</table>
						<div class="column"><span class="current">公司情况</span></div>
						<table class="kv-table">
							<tbody>
								<tr>
									<td class="kv-label">法人代表姓名</td>
									<td class="kv-content">
										<input type="text" id="fname" name="fanme" class="inputwidth" value="${info.fname}"/>
									</td>
									<td class="kv-label">公司类型</td>
									<td class="kv-content">
										<select id="ctype" name="ctype" class="inputwidth">
											<option>请选择类型</option>
											<option value="0" ${info.ctype=='0'?'selected':''}>内资企业</option>
											<option value="1" ${info.ctype=='1'?'selected':''}>国有企业</option>
											<option value="2" ${info.ctype=='2'?'selected':''}>集团企业</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="kv-label">行业类别</td>
									<td class="kv-content">
										<select id="hytype" name="hytype" class="inputwidth">
											<option>请选择类别</option>
											<option value="制造业" ${info.hytype=='制造业'?'selected':''}>制造业</option>
											<option value="林业" ${info.hytype=='林业'?'selected':''}>林业</option>
											<option value="渔业" ${info.hytype=='渔业'?'selected':''}>渔业</option>
										</select>
									</td>
									<td class="kv-label">所属大类</td>
									<td class="kv-content">
										<select id="bigtype" name="bigtype" class="inputwidth">
											<option>请选择类别</option>
											<option value="农副食品加工业" ${info.bigtype=='农副食品加工业'?'selected':''}>农副食品加工业</option>
											<option value="木质家具制造" ${info.bigtype=='木质家具制造'?'selected':''}>木质家具制造</option>
											<option value="麻纺织" ${info.bigtype=='麻纺织'?'selected':''}>麻纺织</option>
										</select>
									</td>
								</tr>
								<tr>
									<td class="kv-label">注册资本(万元)</td>
									<td class="kv-content">
										<input type="text" id="zczb" name="zczb" class="inputwidth" value="${info.zczb}"/>
									</td>
									<td class="kv-label">成立时间</td>
									<td class="kv-content">
									    <input id="begindate" name="begindate" value="${info.begindate}" class="easyui-datebox dateinput inputwidth" type="text"/>
									</td>
								</tr>
								<tr>
									<td class="kv-label">开户银行</td>
									<td class="kv-content">
										<input type="text" id="bank" name="bank" class="inputwidth" value="${info.bank}"/>	
									</td>
									<td class="kv-label">银行账号</td>
									<td class="kv-content">
										<input type="text" id="bankno" name="bankno" class="inputwidth" value="${info.bankno}"/>
									</td>
								</tr>
								<tr>
									<td class="kv-label">银行信用等级</td>
									<td class="kv-content">
										<select id="creditLevel" name="creditLevel" class="inputwidth">
											<option>请选择等级&nbsp;&nbsp;</option>
											<option value="AAA级" ${info.creditLevel=='AAA级'?'selected':''}>AAA级</option>
											<option value="AA级" ${info.creditLevel=='AA级'?'selected':''}>AA级</option>
											<option value="A级" ${info.creditLevel=='A级'?'selected':''}>A级</option>
											<option value="BBB级" ${info.creditLevel=='BBB级'?'selected':''}>BBB级</option>
											<option value="BB级" ${info.creditLevel=='BB级'?'selected':''}>BB级</option>
											<option value="B级" ${info.creditLevel=='B级'?'selected':''}>B级</option>
										</select>
										<input id="creditLevelCancle" type="button" value="撤销变更" style="display: none;" />
									</td>
									<td class="kv-label">公司电话</td>
									<td class="kv-content">
										<input id="tel" name="tel" type="text" class="inputwidth" value="${info.tel}">
									</td>
								</tr>
								<tr>
									<td class="kv-label">传真</td>
									<td class="kv-content">
										<input id="fax" name="fax" type="text" class="inputwidth" value="${info.fax}">
									</td>
									<td class="kv-label">公司网址</td>
									<td class="kv-content">
										<input id="address2" name="address2" type="text" class="inputwidth" value="${info.address2}">
									</td>
								</tr>
							</tbody>
						</table>
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
