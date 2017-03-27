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
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>产品新增审核</title>
		<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
		<link href="<%=basePath%>css/base.css" rel="stylesheet">
		<link href="<%=basePath%>css/suppliers_access/adm_access_plan.css"
			rel="stylesheet">
		<link href="<%=basePath%>css/icon.css" rel="stylesheet">
		<script type="text/javascript" src="<%=basePath%>script/jquery.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>script/jquery.easyui.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>script/easyui-lang-zh_CN.js">
</script>
	</head>
	<body>
		<body>
			<div class="container" style="margin: 10px 10px">

				<table id="dg" style="width: 100%" title="产品审核">
				</table>
			</div>
			<div id="tb" style="padding: 0 30px;">
				供应商编号:
				<input class="easyui-textbox" type="text" name="pno"
					style="width: 166px; height: 35px; line-height: 35px;"></input>
				产品编号:
				<input class="easyui-textbox" type="text" name="no"
					style="width: 166px; height: 35px; line-height: 35px;"></input>

				<a href="#" class="easyui-linkbutton" iconCls="icon-search"
					data-options="selected:true">查询</a>
			</div>
			</div>
			<script type="text/javascript">
Date.prototype.format = function(format) {
	var o = {
		"M+" : this.getMonth() + 1, // 月
		"d+" : this.getDate(), // 天
		"h+" : this.getHours(), // 时
		"m+" : this.getMinutes(), // 分
		"s+" : this.getSeconds(), // 秒
		"q+" : Math.floor((this.getMonth() + 3) / 3), // 刻
		"S" : this.getMilliseconds()
	//毫秒
	// millisecond
	}
	if (/(y+)/.test(format))
		format = format.replace(RegExp.$1, (this.getFullYear() + "")
				.substr(4 - RegExp.$1.length));
	for ( var k in o)
		if (new RegExp("(" + k + ")").test(format))
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
					: ("00" + o[k]).substr(("" + o[k]).length));
	return format;
}
function formatDatebox(value) {
	if (value == null || value == '') {
		return '';
	}
	var dt;
	if (value instanceof Date) {
		dt = value;
	} else {

		dt = new Date(value);

	}

	return dt.format("yyyy-MM-dd"); //扩展的Date的format方法(上述插件实现)
}
$(function() {
	$("#dg")
			.datagrid(
					{
						url : '<%=basePath%>AddProduct/productCheck1.do',
						rownumbers : true,
						singleSelect : false,
						autoRowHeight : false,
						pagination : true,
						fitColumns : true,
						striped : true,
						checkOnSelect : false,
						selectOnCheck : false,
						collapsible : false,
						toolbar : '#tb',
						pageSize : 10,
						columns : [ [
								{
									field : 'pno',
									width : 30,
									title : '供应商编码'
								},
								{
									field : 'gno',
									width : 30,
									title : '物料编码'
								},

								{
									field : 'recdept',
									width : 60,
									title : '推荐单位'
								},
								{
									field : 'guestDept',
									width : 60,
									title : '特邀单位'
								},
								{
									field : 'applyDate',
									width : 30,
									title : '申请时间',
									formatter : formatDatebox
								},
								{
									field : 'procheck',
									width : 30,
									title : '操作',
									formatter : function(value, row, index) {
										return '<a href="<%=basePath%>GoodsChange/GoodsDeleteShowSup.do">供应商详情</a>&nbsp;&nbsp;<a href="<%=basePath%>AddProduct/sup_pro_checkf.do?pno='
												+ row.pno
												+ '&gno='
												+ row.gno
												+ '&applyDate='
												+ row.applyDate
												+ '">审核</a>';

									}
								}

						] ]

					});
	$('#tb').show();
});
</script>
		</body>
</html>