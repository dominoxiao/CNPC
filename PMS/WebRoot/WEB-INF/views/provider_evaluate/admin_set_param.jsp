<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>设置评级参数</title>
	<link href="<%=basePath%>/css/base.css" rel="stylesheet">
	<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>/css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>/css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
</head>

<body>
	 
	<!--  -->
	<div class="easyui-tabs1">
      <div title="请设置评级参数" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label" style="width=80px">考评安排号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label" style="width=80px">考评时间</td>
					<td class="kv-content">2016-10-15</td>
					<td class="kv-label" style="width=80px">修改人姓名</td>
					<td class="kv-content"><input class="easyui-textbox" type="text" name="complaintTitle" style="width:200px;height:35px;line-height:35px;" /></td>
				</tr>
			
				<tr >
					<tbody>
					<table class="kv-table">
						<tr><td class="kv-label" style="width=20px" rowspan="4">设置评级参数</td>
							<td class="kv-label" style="width=30px">A级</td>
							<td class="kv-content" colspan="6">
								<input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />到&nbsp;&nbsp;<input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" /></td></tr>
						<tr><td class="kv-label" style="width=30px">B级</td>
							<td class="kv-content" colspan="6"><input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />到&nbsp;&nbsp;<input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" /></td></tr>
						<tr>
							<td class="kv-label" style="width=30px">C级</td>
							<td class="kv-content" colspan="6"><input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />到&nbsp;&nbsp;<input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" /></td></tr>
						<tr>
							<td class="kv-label" style="width=30px">D级</td>
							<td class="kv-content" colspan="6"><input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />到&nbsp;&nbsp;<input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" /></td></tr>
					</table>
					</tbody>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center;padding-top: 20px"> 
				<a style="margin-right: 15px;" href="<%=basePath%>admin/progroup/proaudit/resultSearch.do" class="easyui-linkbutton" data-options="selected:true">确&nbsp;&nbsp;定</a>
				<a href="<%=basePath%>admin/progroup/proaudit/resultSearch.do" class="easyui-linkbutton" data-options="iconCls:'icon-back'">返回</a>
				</td>
				</tr>
			</tbody>
		</table>
      </div>

</body> 


 
 <script type="text/javascript">
	$('.easyui-tabs1').tabs({
      tabHeight: 36
    });

     $(".edui-body-container").css("width", "98%");

    $(window).resize(function(){
    	setTimeout(function(){
    		$('.easyui-tabs1').tabs("resize");
	     	$(".edui-body-container").css("width", "98%");	
	     },1);
    }).resize();
</script>
</html>