<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
		<link href="<%=basePath%>css/base.css" rel="stylesheet">
		<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
		<link
			href="<%=basePath%>css/suppliers_access/adm_access_plan_check.css"
			rel="stylesheet">
		<link href="<%=basePath%>css/icon.css" rel="stylesheet">
		<script type="text/javascript" src="<%=basePath%>script/jquery.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>script/jquery.easyui.min.js">
</script>
	</head>

	<body>
		<div class="easyui-tabs1" style="margin: 10px 10px">
			<div title="供应商产品审核" data-options="closable:false" class="basic-info">
				<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">
								物料编码
							</td>
							<td class="kv-content">
								${gno}
							</td>
							<td class="kv-label">
								物料名称
							</td>
							<td class="kv-content">
								${gname}
							</td>
							<td class="kv-label">
								申请时间
							</td>
							<td class="kv-content">
								${date}
							</td>
						</tr>

						<tr>
							<td class="kv-label">
								审批意见
							</td>
							<td class="kv-content" colspan="5">
								<textarea rows="10" cols="100" id="appop"></textarea>
							</td>
						</tr>
						<tr>
							<td colspan="8" style="text-align: center; height: 50px">
								<!-- colspan 单元格合并 -->
								<a href="#" class="easyui-linkbutton" id="pass"
									data-options="selected:true" style="margin-right: 20px">通&nbsp;&nbsp;过</a>
								<a href="#" class="easyui-linkbutton" id="notpass"
									data-options="selected:true">不通过</a>
								<a href="<%=basePath%>GoodsChange/sup_pro_check.do" class="easyui-linkbutton"
									style="margin-left: 20px">返&nbsp;&nbsp;回</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</body>



	<script type="text/javascript">
$('.easyui-tabs1').tabs( {
	tabHeight : 36
});

// var state = UM.getEditor('editor-state');
//state.setWidth("98%");
$(".edui-body-container").css("width", "98%");

$(window).resize(function() {
	setTimeout(function() {
		$('.easyui-tabs1').tabs("resize");
		//state.setWidth("98%");
			$(".edui-body-container").css("width", "98%");
		}, 1);
}).resize();
$(function() {
	$("#pass").click(function() {

		var opinion = $("#appop").val();
			$.ajax( {
				type : "POST",
				url : '<%=basePath%>AddProduct/sup_pro_checksubmit.do',
				data : {
					"opinion" : opinion,
					"pno" : "${pno}",
					"gno" : "${gno}",
					"state" : "1"
				},
				success : function(result) {
					$.messager.alert('提示', '审批成功');
					window.location.href ='<%=basePath%>GoodsChange/sup_pro_check.do'; 
				},
				error : function() {
					$.messager.alert('提示', '审批失败');
				}

			});

	});
	$("#notpass").click(function() {
		var opinion = $("#appop").val();
			$.ajax( {
				type : "POST",
				url : '<%=basePath%>AddProduct/sup_pro_checksubmit.do',
				data : {
					"opinion" : opinion,
					"pno" : "${pno}",
					"gno" : "${gno}",
					"state" : "0"
				},
				success : function(result) {
					$.messager.alert('提示', '审批成功');
					window.location.href ='<%=basePath%>GoodsChange/sup_pro_check.do'; 
				},
				error : function() {
					$.messager.alert('提示', '审批失败');
				}

			});

	});
});
</script>
</html>