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
	<title>考评结果调整页面</title>
	<link href="<%=basePath%>/css/base.css" rel="stylesheet">
	<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>/css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>/css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
</head>

<body>
	<div class="easyui-tabs1" >
      <div title="调整考评结果" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">考评安排号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">方案申请编号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">供应商编号</td>
					<td class="kv-content">2816040820001</td>
				</tr>
				<tr>
					<td class="kv-label">总分</td>
					<td class="kv-content">95</td>
					<td class="kv-label">评级结果</td>
					<td class="kv-content">A级</td>
					<td class="kv-label">考评年度</td>
					<td class="kv-content">2017-5-23</td>
				</tr>
				
				<tr>
					<td class="kv-label">考评意见</td>
					<td class="kv-content" colspan="5" style="width:80%">
						<textarea rows="6" cols="120"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center;padding-top: 20px"> 
				<a style="margin-right: 15px;" href="<%=basePath%>admin/progroup/proaudit/resultSearch.do" class="easyui-linkbutton" data-options="selected:true">确&nbsp;&nbsp;定</a>
				<a href="<%=basePath%>admin/progroup/proaudit/resultSearch.do" class="easyui-linkbutton" data-options="selected:true">取消</a>
				
				</td>
				</tr>
			</tbody>
		</table>
     </div>
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