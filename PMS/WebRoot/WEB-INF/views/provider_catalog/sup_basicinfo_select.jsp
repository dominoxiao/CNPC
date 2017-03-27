<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
                                                                                                                                                                             
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>基本信息</title> 
    <link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>   
  </head>
  
  <body>
	<div class="container">
		
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="基本信息" data-options="closable:false" class="basic-info">
		      	<div class="column"><span class="current">基本信息</span></div>
		      	
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">准入编号</td>
							<td class="kv-content"><span></span></td>
							<td class="kv-label">审批结果</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">供应商名称</td>
							<td class="kv-content"><span></span></td>
							<td class="kv-label">供应商类型</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">供应商类型2</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">供应商来源</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">组织机构代码</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">工商注册号</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">供应商等级</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">账户金额</td>
							<td class="kv-content">
								<span></span>
							</td>	
						</tr>
						<tr>
							<td class="kv-label">国税登记证号</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">地税登记证号</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">申请区域</td>
							<td class="kv-content">
								<span></span>
							</td>
							
						</tr>
					</tbody>
				</table>
				
				<div class="column"><span class="current">联系人信息</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">联系人姓名</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">移动电话</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">固定电话</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">电子邮箱</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
					</tbody>
				</table>

		      </div>
		      <div title="详细信息" data-options="closable:false" class="basic-info">
		      	<div class="column"><span class="current">供应商详细信息</span></div>
		      	
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">地址</td>
							<td class="kv-content" colspan="3">
								<span></span>&nbsp;国家&nbsp;&nbsp;
								<span></span>&nbsp;省&nbsp;&nbsp;
								<span></span>&nbsp;市(区)
							</td>
						</tr>
						<tr>
							<td class="kv-label">详细地址</td>
							<td class="kv-content" colspan="3">
								<span></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">邮编</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">经营范围</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">质量管理体系认证</td>
							<td class="kv-content" colspan="3">
								<span></span>
								&nbsp;&nbsp;
								发证机构：<span></span>
							</td>	
						</tr>
						<tr>
							<td class="kv-label">产品质量认证</td>
							<td class="kv-content" colspan="3">
								<span></span>
								&nbsp;&nbsp;
								发证机构：<span></span>
							</td>
						</tr>
						
						
						<tr>
							<td class="kv-label">生产/制造许可证获证情况及编号</td>
							<td class="kv-content" colspan="3">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">获奖情况</td>
							<td class="kv-content" colspan="3">
								<span></span>
							</td>
						</tr>
					</tbody>
				</table>
				
		      </div>
		      <div title="公司信息" data-options="closable:false" class="basic-info">
		      		<div class="column"><span class="current">公司情况</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">法人代表姓名</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">公司类型</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">行业类别</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">大类</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">注册资本(万元)</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">成立时间</td>
							<td class="kv-content">
								<span></span>
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">开户银行</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">银行账号</td>
							<td class="kv-content">
								<span></span>	
							</td>
							
							
							
						</tr>
						<tr>
							<td class="kv-label">银行信用等级</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">公司电话</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">传真</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">公司网址</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">传真</td>
							<td class="kv-content" colspan="3">
								<span></span>
							</td>
						</tr>
						
					</tbody>
				</table>

		      </div>
		      <!-- <div title="产品情况" data-options="closable:false"></div>
		      <div title="供货历史" data-options="closable:false"></div>
		      <div title="主要原材料供应商" data-options="closable:false"></div> -->
		      <div title="资质附件" data-options="closable:false" class="basic-info">
		      		<div class="column"><span class="current">资质证明</span></div>
					<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">企业营业执照</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">组织机构代码证</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">国税登记证明</td>
							<td class="kv-content">
								<span></span>
							</td>
							<td class="kv-label">地税等级证明</td>
							<td class="kv-content">
								<span></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">银行开户证明或银行资信证明</td>
							<td class="kv-content" colspan="3">
								<span></span>
							</td>
						</tr>
					</tbody>
					</table>
		      </div>		
		    </div>
		</div>
	</div>
	<div style="text-align: center; height: 50px">
		<a href="<%=basePath%>GoodsChange/adminDeleteCheck.do" class="easyui-linkbutton" style="margin-top: 20px">返&nbsp;&nbsp;回</a>
	</div>
	<script type="text/javascript" src="<%=basePath%>script/suppliers_access/sup_basicinfo.js"></script>  
</body> 
</html>
