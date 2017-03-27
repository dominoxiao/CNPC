<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  <title>物资评分系统</title> 
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>    
	<script type="text/javascript" src="<%=basePath%>script/suppliers_access/sup_basicinfo.js"></script>  
  </head>
  
  <body>
   <div class="container">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="注册信息" data-options="closable:true" class="basic-info">
		      	<div class="column"><span class="current">基本信息</span></div>
		      	<form action="">
		      	<table class="kv-table">
					<tbody>
						<tr>
						<td class="kv-label">申请日期</td>
							<td class="kv-label">2016-10-02</td>
							</td>
							<td class="kv-label">物资编码</td>
							<td class="kv-label">10086</td>
						</tr>
						<tr>
							<td class="kv-label">物资名称</td>
							<td class="kv-label">大庆石油</td>
							<td class="kv-label">年度支出金额</td>
							<td class="kv-label">50000</td>
						</tr>
					</tbody>
				</table>
				</form>
				<div class="column"><span class="current">各项评分</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">供应停顿影响</td>
							<td class="kv-content">
								<select name="suppsource">
								    <option value="17">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
									<option value="11">1.1</option>
									<option value="12">1.2</option>
									<option value="13">1.3</option>
									<option value="14">1.4</option>
									<option value="15">1.5</option>
									<option value="16">2</option>
								</select>
							</td>
							<td class="kv-label">技术复杂度</td>
								<td class="kv-content">
								<select name="suppsource">
								    <option value="16">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
									<option value="11">1.1</option>
									<option value="12">1.2</option>
									<option value="13">1.3</option>
									<option value="14">1.4</option>
									<option value="15">1.5</option>
									
								</select>
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">生产复杂度</td>
							<td class="kv-content">
								<select name="suppsource">
								    <option value="16">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
									<option value="11">1.1</option>
									<option value="12">1.2</option>
									<option value="13">1.3</option>
									<option value="14">1.4</option>
									<option value="15">1.5</option>
								</select>
							</td>
							<td class="kv-label">市场供应能力</td>
								<td class="kv-content">
								<select name="suppsource">
								    <option value="16">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
									<option value="11">1.1</option>
									<option value="12">1.2</option>
									<option value="13">1.3</option>
									<option value="14">1.4</option>
									<option value="15">1.5</option>
								</select>
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">竞争关系</td>
							<td class="kv-content">
								<select name="suppsource">
								    <option value="11">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
								</select>
							</td>
							<td class="kv-label">进入物资行业难易度</td>
								<td class="kv-content">
								<select name="suppsource">
								    <option value="11">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
								</select>
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">与供应市场的空间距离</td>
							<td class="kv-content">
								<select name="suppsource">
								    <option value="11">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
								</select>
							</td>
							<td class="kv-label">供应链复杂度</td>
								<td class="kv-content">
								<select name="suppsource">
								    <option value="11">请选择得分</option>
									<option value="0">0</option>
									<option value="1">0.1</option>
									<option value="2">0.2</option>
									<option value="3">0.3</option>
									<option value="4">0.4</option>
									<option value="5">0.5</option>
									<option value="6">0.6</option>
									<option value="7">0.7</option>
									<option value="8">0.8</option>
									<option value="9">0.9</option>
									<option value="10">1.0</option>
								</select>
							</td>
							
						</tr>
						<tr>
					
							<td colspan="4" style="text-align:center;padding-top: 20px">
								<!-- <input style="margin-right: 15px" class="easyui-linkbutton" type="button" value="上一步"> -->
								<a style="margin-right: 15px" class="easyui-linkbutton" href="<%=basePath%>admin/progroup/mateApply.do"> 确定</a>
								<a style="margin-right: 15px" class="easyui-linkbutton" href="<%=basePath%>admin/progroup/mateApply.do"> 返回</a>
							</td>
						</tr>
						
					</tbody>
				</table>
				<!-- <div class="column"><span class="current">联系信息</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">公司电话</td>
							<td class="kv-content">0512-69168010</td>
							<td class="kv-label">传真</td>
							<td class="kv-content">0512-69168010</td>
							<td class="kv-label">公司网站</td>
							<td class="kv-content">www.szlf.com</td>
						</tr>
						<tr>
							<td class="kv-label">联系人</td>
							<td class="kv-content">左江胜</td>
							<td class="kv-label">联系手机</td>
							<td class="kv-content">15158966547</td>
							<td class="kv-label">联系人邮箱</td>
							<td class="kv-content">zhs88@szlf.com</td>
						</tr>
					</tbody>
				</table>
				<table class="kv-table yes-not">
					<tbody>
						<tr>
							<td class="kv-label">是否有亲属在公司</td>
							<td class="kv-content" colspan="2">无</td>
							<td class="kv-label">是否与公司是竞争关系</td>
							<td class="kv-content" colspan="2">否</td>
						</tr>
					</tbody>
				</table> -->

		      </div>
		      <!-- <div title="财务信息" data-options="closable:false"></div>
		      <div title="人员情况" data-options="closable:false"></div>
		      <div title="产品情况" data-options="closable:false"></div>
		      <div title="供货历史" data-options="closable:false"></div>
		      <div title="主要原材料供应商" data-options="closable:false"></div>
		      <div title="资质附件" data-options="closable:false"></div> -->
		    </div>
		</div>
	</div>
  </body>
</html>
