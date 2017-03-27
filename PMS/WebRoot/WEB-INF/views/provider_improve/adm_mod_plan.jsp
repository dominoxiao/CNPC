<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta charset="UTF-8">
<title>工作组发布改进需求</title>
<link rel="stylesheet" href="<%=basePath%>css/base.css" >
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/basic_info.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/promote.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_improve/suppliers_improve_date.js"></script>
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="基本信息" data-options="closable:false" class="basic-info">
		      	<div class="column"><span class="current">发布改进需求</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">改进计划编号</td>
							<td class="kv-content">178ADGU89032</td>
							<td class="kv-label">发布日期</td>
							<td class="kv-content" id="getdate"></td>
						</tr>
						<tr>
						<td class="kv-label">专业工作组名称</td>
						<td class="kv-content">石油一组</td>
						<td class="kv-label">操作员</td>
						<td class="kv-content">张华</td>
						</tr>
						<tr>
							<td class="kv-label">供应商名称</td>
							<td class="kv-content">方天公司</td>
							<td class="kv-label">产品名称</td>
							<td class="kv-content">钢</td>
						</tr>
						<tr>
							<td class="kv-label">供应商分级</td>
							<td class="kv-content">C</td>
							<td class="kv-label">限定改进日期</td>
							<td class="kv-content"><input id="date" type="text" class="easyui-datebox" ></input> </td>
						</tr>
						<tr>
						    <td class="kv-label">问题概述</td>
						    <td class="kv-content" colspan=5><textarea class="write">质量问题</textarea></td>
						</tr>
						<tr>
						    <td class="kv-label">改进要求</td>
						    <td class="kv-content" colspan=5><textarea class="write">改进质量</textarea></td>
						</tr>
					</tbody>
				</table>
				<div class="query"><a href="#" class="easyui-linkbutton"  data-options="selected:true">查看考评情况</a></div>
				<div class="submit">
				    <a href="#" class="easyui-linkbutton"  data-options="selected:true">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;
			        <a href="<%=basePath%>progroup/improve/adm_query_planstate.do" class="easyui-linkbutton"  data-options="selected:true">返回</a>
			    </div>
		      

		      </div>
		    </div>
		</div>
	</div>
	
</body> 
</html>
<!-- <script type="text/javascript">
	$('.easyui-tabs1').tabs({
      tabHeight: 36
    });
    $(window).resize(function(){
    	$('.easyui-tabs1').tabs("resize");
    }).resize();
</script> -->

