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
	<title>Insert title here</title>
	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<!-- <link href="../script/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"> -->
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
  </head>
  
  <body>
    <div class="easyui-tabs1" style="margin: 10px">
      <div title="供应商产品减少审批" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">物料编码</td>
					<td class="kv-content">${gno}</td>
					<td class="kv-label">物料名称</td>
					<td class="kv-content">${pname}</td>
					<td class="kv-label">申请时间</td>
					<td class="kv-content">${date}</td>
				</tr>
				<tr>
					<td class="kv-label">减少原因</td>
					<td class="kv-content" style="height:100px;" colspan="5">${reason}</td>
				</tr>
				<tr>
					<td class="kv-label">审批意见</td>
					<td class="kv-content" colspan="5">
						<textarea rows="10" cols="100"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center; height:50px"> 
				<a href="#" class="easyui-linkbutton" style="margin-right: 20px;" data-options="selected:true">通&nbsp;&nbsp;过</a>
				<a href="#" class="easyui-linkbutton" style="margin-right: 20px;" data-options="selected:true">不通过</a>
				<a href="<%=basePath%>GoodsChange/adminDeleteCheck.do" class="easyui-linkbutton" >返&nbsp;&nbsp;回</a>
				</td>
				</tr>
			</tbody>
		</table>
      </div>
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
