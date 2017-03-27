<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>准入方案审核</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
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
			//var aorg = $("#aorg").val();
			var ainfo = $("#ainfo").val();
			//if(aorg==""||aorg==null){
    		//	$.messager.alert('提示','请填写审批机构!');
    		//	return false;
    		//}else 
    		if(ainfo==""||ainfo==null){
    			$.messager.alert('提示','请填写审批意见');
    			return false;
    		}
    		return true;
    	
		}
		function check(){
			var state = checkinfo();
			if(state){
				$("#isagree").val("1");
				$("#state").val("1");
				$("#checkPlanForm").submit();
			}
		}
		function check2(){
			var state = checkinfo();
			if(state){
				$("#isagree").val("0");
				$("#state").val("2");
				$("#checkPlanForm").submit();
			}
		}
	</script>
  </head>
  
  <body>
	 <br/>
	<div class="opt-buttons" style="padding-bottom:10px">
		<a href="<%=basePath%>admin/access/back.do" class="easyui-linkbutton" data-options="iconCls:'icon-back'">返回</a>	
	</div>
	<div class="easyui-tabs1">
      <div title="方案审批" data-options="closable:false" class="basic-info">
       	<form id="checkPlanForm" action="<%=basePath%>admin/access/checkPlan.do" method="post">
	       	<input type="hidden" name="planid" value="${tProviderPlan.planid}">
	       	<input type="hidden" id="isagree" name="isagree" value="">
	       	<input type="hidden"  name="aorg" value="物资管理部门">
	       	<input type="hidden" id="state" name="state" value="">
	      	<table class="kv-table">
				<tbody>
					<tr>
						<td class="kv-label">方案编号</td>
						<td class="kv-content">${tProviderPlan.planid}</td>
						<td class="kv-label">申请时间</td>
						<td class="kv-content">${applydate}</td>
						<td class="kv-label">申请机构</td>
						<td class="kv-content">${tProviderPlan.aorg}</td>
					</tr>
					<!--<tr>
						<td class="kv-label">审批机构</td>
						<td class="kv-content" colspan="5">
							<input id="aorg" class="easyui-textbox" name="aorg">
						</td>
					</tr>
					--><tr>
						<td class="kv-label">审批意见</td>
						<td class="kv-content" colspan="5">
							<textarea id="ainfo" name="ainfo" rows="10" cols="100"></textarea>	
						</td>
					</tr>
					<tr>
					<td colspan="6" style="text-align:center;padding-top: 20px"> 
					<a style="margin-right: 15px;"class="easyui-linkbutton" data-options="selected:true" onclick="check()">通&nbsp;&nbsp;过</a>
					<a class="easyui-linkbutton" data-options="selected:true" onclick="check2()">不通过</a>
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
