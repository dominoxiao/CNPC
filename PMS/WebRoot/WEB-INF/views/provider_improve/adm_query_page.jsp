<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta charset="UTF-8">
<title>查看改进计划详情</title>
<link rel="stylesheet" href="<%=basePath%>css/base.css" >
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/basic_info.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/promote.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
</head>
<body>
	<div class="container">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="基本信息" data-options="closable:false" class="basic-info">
		      	<div class="column"><span class="current">查看详情</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">改进计划编号</td>
							<td class="kv-content">178ADGU89032</td>
							<td class="kv-label">评审日期</td>
							<td class="kv-content">2017-3-17</td>
							<td class="kv-label">专业工作组名称</td>
						    <td class="kv-content">石油一组</td>
						</tr>
						<tr>
						    <td class="kv-label">供应商名称</td>
						    <td class="kv-content">方天公司</td>
						    <td class="kv-label">产品名称</td>
						    <td class="kv-content">钢</td>
						    <td class="kv-label">限定改进日期</td>
							<td class="kv-content">2017-9-10</td>
						</tr>
						<tr>
							<td class="kv-label">发布日期</td>
							<td class="kv-content">2017-2-20</td>
							<td class="kv-label">生效日期</td>
							<td class="kv-content">2017-2-20</td>
							<td class="kv-label">改进方案填写日期</td>
							<td class="kv-content">2017-3-16</td>
						</tr>
						<tr>
							<td class="kv-label">评审结果</td>
							<td class="kv-content">通过</td>
							<td class="kv-label">评审人</td>
							<td class="kv-content">张华</td>
							<td class="kv-label">是否重新评级</td>
							<td class="kv-content">是</td>
						</tr>
						<tr>
						    <td class="kv-label">改进是否完成</td>
							<td class="kv-content">是</td>
							<td class="kv-label">改进结果填报日期</td>
							<td class="kv-content">2017-4-12</td>
							<td class="kv-label">改进结果填报人</td>
							<td class="kv-content">张华</td>
						</tr>
						<tr>
						    <td class="kv-label">审批轮次</td>
							<td class="kv-content">1</td>
						    <td class="kv-label">证明文件</td>
						    <td class="kv-content" colspan=3><a href="../images/dot.png" download="证明文件">附件下载</a></td>
						</tr>
						<tr>
						    <td class="kv-label">问题概述</td>
						    <td class="kv-content" colspan=5><div class="setscroll">质量问题</div></td>
						</tr>
						<tr>
						    <td class="kv-label">改进要求</td>
						    <td class="kv-content" colspan=5><div class="setscroll">改进质量</div></td>
						</tr>
						<tr>
						    <td class="kv-label">原因分析</td>
						    <td class="kv-content" colspan=5><div class="setscroll">材料问题</div></td>
						</tr>
						<tr>
						    <td class="kv-label">改进方案</td>
						    <td class="kv-content" colspan=5><div class="setscroll">严查材料质量</div></td>
						</tr>
						<tr>
						    <td class="kv-label">评审意见</td>
						    <td class="kv-content" colspan=5><div class="setscroll">通过</div></td>
						</tr>
						<tr>
						    <td class="kv-label">改进结果</td>
						    <td class="kv-content" colspan=5><div class="setscroll">通过</div></td>
						</tr>
						<tr>
						    <td class="kv-label">审批意见</td>
						    <td class="kv-content" colspan=5><div class="setscroll">通过</div></td>
						</tr>
						<tr>
						    <td class="kv-label">审批结果</td>
							<td class="kv-content">通过</td>
							<td class="kv-label">升级审批</td>
							<td class="kv-content">通过</td>
							<td class="kv-label">审批人</td>
							<td class="kv-content">李云</td>
						</tr>
					</tbody>
				</table>
				<div class="submit">
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

