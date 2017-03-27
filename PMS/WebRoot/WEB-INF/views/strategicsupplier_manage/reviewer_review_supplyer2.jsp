<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>战略供应商评审</title>
    
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
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<!-- <link href="<%=basePath%>script/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"> -->
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
   <!--  <script type="text/javascript" charset="utf-8" src="<%=basePath%>script/umeditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>script/umeditor/umeditor.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/umeditor/lang/zh-cn/zh-cn.js"></script> -->
  </head>
  
  <body>
   <div class="opt-buttons" style="padding-bottom:10px">
	<!-- <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-list'" onclick="$('#dlg').dialog('open')">业务日志</a> -->
		
		
	</div>
	<div class="easyui-tabs1">
      <div title="战略供应商评审" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">申请编号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">评审时间</td>
					<td class="kv-content">2016-10-2</td>
					<td class="kv-label">评审机构</td>
					<td class="kv-content">评审委员会</td>
				</tr>
			
				<tr>
					<td class="kv-label">审批意见</td>
					<td class="kv-content" colspan="5">
						<textarea rows="10" cols="150"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="8" style="text-align: center; height: 50px">
                                    <!-- colspan 单元格合并 --><a href="<%=basePath%>admin/auditcommit/backsup.do" class="easyui-linkbutton" data-options="selected:true" style="margin-right: 20px">通&nbsp;&nbsp;过</a>
                                    <a href="<%=basePath%>admin/auditcommit/backsup.do" class="easyui-linkbutton" data-options="selected:true">不通过</a> <a href="<%=basePath%>admin/auditcommit/backsup.do" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
                   </td>
				</tr>
			</tbody>
		</table>
      </div>
      <script type="text/javascript">
	$('.easyui-tabs1').tabs({
      tabHeight: 36
    });

    // var state = UM.getEditor('editor-state');
     //state.setWidth("98%");
     $(".edui-body-container").css("width", "98%");

    $(window).resize(function(){
    	setTimeout(function(){
    		$('.easyui-tabs1').tabs("resize");
	    	//state.setWidth("98%");
	     	$(".edui-body-container").css("width", "98%");	
	     },1);
    }).resize();
</script>
  </body>
</html>
