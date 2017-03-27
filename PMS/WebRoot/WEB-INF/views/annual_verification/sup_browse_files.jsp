<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>资质证明信息</title> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="./css/base.css" rel="stylesheet">
	<link href="./css/easyui.css" rel="stylesheet">
	<link href="./css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="./script/jquery.min.js"></script>
	<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>    
	<script type="text/javascript" src="./script/suppliers_access/sup_basicinfo.js"></script>  

  </head>
  
  <body>
	<div class="container" style="margin: 10px">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="" data-options="closable:true" class="basic-info">
				<div class="column"><span class="current">资质证明</span></div>
					<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">企业营业执照</td>
							<td class="kv-content">
								<!-- <input class="easyui-filebox" name="business_license" accept="image/*"> -->
								<a class="easyui-linkbutton">下载</a>
							</td>
							<td class="kv-label">组织机构代码证</td>
							<td class="kv-content">
								<!-- <input class="easyui-filebox" name="organization_code_certificate" accept="image/*"> -->
								<a class="easyui-linkbutton">下载</a>
							</td>
						</tr>
						<tr>
							<td class="kv-label">国税登记证明</td>
							<td class="kv-content">
								<!-- <input class="easyui-filebox" name="nt_registration_certificate" accept="image/*"> -->
								<a class="easyui-linkbutton">下载</a>
							</td>
							<td class="kv-label">地税等级证明</td>
							<td class="kv-content">
								<!-- <input class="easyui-filebox" name="lt_registration_certificate" accept="image/*"> -->
								<a class="easyui-linkbutton">下载</a>
							</td>
						</tr>
						<tr>
							<td class="kv-label">银行开户证明或银行资信证明</td>
							<td class="kv-content" colspan="3">
								<!-- <input class="easyui-filebox" name="bank_certificate" accept="image/*"> -->
								<a class="easyui-linkbutton">下载</a>
							</td>
	
						</tr>
						<tr>
					
							<td colspan="4" style="text-align:center;padding-top: 20px">
								
								<a href="<%=basePath%>admin/adm_send_notificationt.do" class="easyui-linkbutton">返回</a>
							</td>
						</tr>
					</tbody>
					</table>
			
		</div>
	</div>
	</div>
	</div>
	
</body> 
</html>
