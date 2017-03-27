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
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href="<%=basePath%>css/base.css" rel="stylesheet">
		<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
		<link href="<%=basePath%>css/suppliers_access/sup_access_apply.css"
			rel="stylesheet">
		<link href="<%=basePath%>css/suppliers_access/adm_access_plan.css"
			rel="stylesheet">
		<script type="text/javascript" src="<%=basePath%>script/jquery.min.js">
</script>
		<script type="text/javascript"
			src="<%=basePath%>script/jquery.easyui.min.js">
</script>

	</head>
	<body>
		<div class="container">
			<div class="content">
				<div class="easyui-tabs1" style="width: 100%;">
					<div title="" data-options="closable:true" class="basic-info">
						<div class="column">
							<span class="current">选择准入方式</span>
						</div>
						<table id="dg" style="width: 100%">

						</table>
						<!--  <div id="tb" style="padding:0 30px;">
       方案编号: <input class="easyui-textbox" type="text" name="" style="width:166px;height:35px;line-height:35px;"></input>
      
        
         <a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
      </div> -->
					</div>
					<div style="margin-left: 40%;">
						<a class="easyui-linkbutton" href="#">临时保存</a>
						<a class="easyui-linkbutton" href="<%=basePath%>GoodsChange/sup_pro_apply_one.do">上一步</a>
						<a class="easyui-linkbutton" id="apply"> 提交</a>
					</div>
					<script type="text/javascript">

$(function() {
	$("#dg")
			.datagrid(
					{
						url : '<%=basePath%>AddProduct/InputData.do?product=${product}',
						idField : 'aid',
						width : '100%',
						collapsible : false,
						fitColumns : true,
						autoRowHeight : true,
						striped : true,
						loadMsg : 'processing, please wait …',
						pageSize : 10,
						rownumbers : true,
						singleSelect : false,
						pagination : true,
						toolbar : '#tb',
						columns : [ [
								{
									field : 'big',
									title : '大类',
									width : 30,
									formatter : function(value, row, index) {
										var val = row.gno.substr(0, 2);
										//alert(val);
									return val;
								}
								},
								{
									field : 'middle',
									title : '中类',
									width : 30,
									formatter : function(value, row, index) {
										var val = row.gno.substr(2, 2);
										//alert(val);
									return val;
								}
								},
								{
									field : 'small',
									title : '小类',
									width : 30,
									formatter : function(value, row, index) {
										var val = row.gno.substr(4, 2);
										//alert(val);
									return val;
								}
								},
								{
									field : 'gno',
									width : 30,
									title : '物料编码'
								},
								{
									field : 'gname',
									width : 60,
									title : '物料名称'
								},

								{
									field : 'recdept',
									width : 60,
									title : '推荐单位',
									formatter : function(value, row, index) {
										return '<input style="width:100px" type="textbox"></input>';

									}
								},
								{
									field : 'guestDept',
									width : 60,
									title : '特邀单位',
									formatter : function(value, row, index) {

										return '<input style="width:100px" type="textbox"></input>';
									}
								}

						] ]
					});
	$('#tb').show();

	$('#apply').click(function() {
		   var data= $('#dg').datagrid('getRows')//获取当前的数据行
	
			console.log(data);
			for ( var i = 0; i < data.length; i++) {
				if (i == 0)
					totaldata = data[i];
				else
					totaldata += data[i];
				console.log(data[i]);
			}
  
				$.ajax( {
					type : "POST",
					url : '<%=basePath%>AddProduct/ProductApplytwo.do',
					data :{  
                        "product" : "${product}" },
					success : function(result) {
					     $.messager.alert('提示', '提交成功');
		            },
				    error : function() {
					     $.messager.alert('提示', '提交失败');
				    }

				});
		});

});
</script>


				</div>
			</div>
		</div>


	</body>
</html>