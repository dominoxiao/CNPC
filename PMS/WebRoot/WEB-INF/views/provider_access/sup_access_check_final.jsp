<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>物采部门审核</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/base.css" rel="stylesheet">
	<link href="./css/easyui.css" rel="stylesheet">
	<link href="./css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="./css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="./script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
    	function checkinfo(){
			var ainfo = $("#ainfo").val();
    		if(ainfo==""||ainfo==null){
    			$.messager.alert('提示','请填写审批意见');
    			return false;
    		}
    		return true;	
		}
		function check(){
			var state = checkinfo();
			if(state){
				$("#isagree").val("1");//通过
				$("#checkForm").submit();
			}
		}
		function check2(){
			var state = checkinfo();
			if(state){
				$("#isagree").val("0");		
				$("#checkForm").submit();
			}
		}
    </script>
  </head>
  
 <body>
	 
	<div class="opt-buttons" style="padding-bottom:10px">
		<a href="<%=basePath%>access/back.do" class="easyui-linkbutton" data-options="iconCls:'icon-back'">返回</a>
		
	</div>
	<div class="easyui-tabs1">
      <div title="供应商审核" data-options="closable:false" class="basic-info">
      <form id="checkForm" action="<%=basePath%>admin/access/checkfinal.do" method="post">
      	<input type="hidden" name="pano" value="${tProviderApply.pano}">
      	<input type="hidden" id="isagree" name="isagree" value="">
      	<input type="hidden" id="pname" name="pname" value="${tProviderApply.pname}">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">供应商编号</td>
					<td class="kv-content">${tProviderApply.pano}</td>
					<td class="kv-label">供应商名称</td>
					<td class="kv-content">${tProviderApply.pname}</td>
					<td class="kv-label">申请时间</td>
					<td class="kv-content">${applydate}</td>
				</tr>
			
				<tr>
					<td class="kv-label">审批意见</td>
					<td class="kv-content" colspan="5">
						<textarea rows="10" cols="100" id="ainfo" name="ainfo"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center;padding-top: 20px"> 
				<a style="margin-right: 15px;" class="easyui-linkbutton" data-options="selected:true" onclick="check()">通&nbsp;&nbsp;过</a>
				<a  class="easyui-linkbutton" data-options="selected:true" onclick="check2()">不通过</a>
				</td>
				</tr>
			</tbody>
		</table>
	</form>
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
