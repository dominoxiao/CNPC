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
	<title>Insert title here</title>
	<link href="<%=basePath%>/css/base.css" rel="stylesheet">
	<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>/css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>/css/icon.css" rel="stylesheet">
	<!-- <link href="<%=basePath%>/script/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"> -->
	<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
   <!--  <script type="text/javascript" charset="utf-8" src="<%=basePath%>/script/umeditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=basePath%>/script/umeditor/umeditor.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/umeditor/lang/zh-cn/zh-cn.js"></script> -->
</head>

<body>
	 
	<div class="opt-buttons" style="padding-bottom:10px">
	<!-- <a  class="easyui-linkbutton" data-options="iconCls:'icon-list'" onclick="$('#dlg').dialog('open')">业务日志</a> -->
		<a href="adm_access_plan_select.html" class="easyui-linkbutton" data-options="iconCls:'icon-back'">返回</a>
		
	</div>
	<div class="easyui-tabs1">
      <div title="方案审批" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">方案编号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">申请时间</td>
					<td class="kv-content">2016-10-15</td>
					<td class="kv-label">申请机构</td>
					<td class="kv-content">光纤采购组织</td>
				</tr>
			
				<tr>
					<td class="kv-label">审批意见</td>
					<td class="kv-content" colspan="5">
						<textarea rows="10" cols="150"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center;padding-top: 20px"> 
				<a style="margin-right: 15px;"  class="easyui-linkbutton" data-options="selected:true">通&nbsp;&nbsp;过</a>
				<a  class="easyui-linkbutton" data-options="selected:true">不通过</a>
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
</html>