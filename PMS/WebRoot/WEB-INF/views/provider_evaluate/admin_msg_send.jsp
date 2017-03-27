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
	<title>信息发送页面</title>
	<link href="<%=basePath%>/css/base.css" rel="stylesheet">
	<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>/css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>/css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
</head>

<body>
	<div class="easyui-tabs1" >
      <div title="发送考评邀请函" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">供应商编号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">考评安排号</td>
					<td class="kv-content">2816040820001</td>
					<td class="kv-label">供应商名称</td>
					<td class="kv-content">洛阳拖拉机制造厂</td>
				</tr>
				<tr>
					<td class="kv-label">考评时间</td>
					<td class="kv-content"><input id="startDate" name="startDate" type="text" class="easyui-datebox" style="width:90%;height:35px;line-height:35px;"></td>
					<td class="kv-label">考评模板</td>
					<td class="kv-content"><input class="easyui-filebox" name="uploadFiles" style="width:90%;height:30px"></input></td>
					<td class="kv-label">发件人编号</td>
					<td class="kv-content"><input class="easyui-textbox" type="text" name="code" style="width:90%;height:35px;line-height:35px;"></input></td>
				</tr>
				<tr>
					<td class="kv-label">考评邀请</td>
					<td class="kv-content" colspan="5" style="width:80%">
						<textarea rows="8" cols="120"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center;padding-top: 20px"> 
				<a style="margin-right: 15px;"  class="easyui-linkbutton" data-options="selected:true">发&nbsp;&nbsp;送</a>
				<a href="<%=basePath%>admin/progroup/proaudit/sendInvitation.do" class="easyui-linkbutton" data-options="selected:true">取消</a>
				
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