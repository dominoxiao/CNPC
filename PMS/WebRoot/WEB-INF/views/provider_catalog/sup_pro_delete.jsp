<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品减少申请列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css" type="text/css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_dyn_manage/frozen_submit.css">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
  </head>
  
  <body>
    <div style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="dg" style="width: 100%; height:100%; display:none;" title="淘汰供应商列表" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:false,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:false,
                toolbar:'#tb',
                pageSize:10">
        </table>
        <div id="tb" style="padding: 0 30px;display: none">
            <div class="conditions">
                <span class="con-span">供应商编码: </span>
                <input class="easyui-textbox" type="text" name="code" style="width: 166px; height: 35px; line-height: 35px;"></input> <span class="con-span">供应商名称: </span>
                <input class="easyui-textbox" type="text" name="name" style="width: 166px; height: 35px; line-height: 35px;"></input> <a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a><a href="#" class="easyui-linkbutton" iconCls="icon-reload">重置</a>
            </div>         
            <div class="opt-buttons">
                &nbsp&nbsp&nbsp <a href="<%=basePath%>GoodsChange/GoodsDeleteApplyOne.do" class="easyui-linkbutton" data-options="selected:true">申请减少产品信息</a> <a href="" class="easyui-linkbutton">导出减少产品信息</a>
            </div>
        </div>
        <script type="text/javascript">
          $(function(){
	    		 $("#dg").datagrid({
	    		 	title:'产品减少申请表',
	    			url:'<%=basePath%>ProviderGoods/showCutGoods.do',
	    			idField:'aid',
	    			width:'100%',		
	    			collapsible:false,
	    			fitColumns:true,
	    			autoRowHeight:true,
	    			striped:true,
	    			loadMsg:'processing, please wait …',
	    			pageSize:10,
	    			rownumbers:true,
	    			singleSelect:false,	
	    			pagination:true,
	    			toolbar:'#tb',
	    			columns:[[
	    				{field:'pno',title:'供应商编号',width:40},
	    				{field:'gno',title:'产品编号',width:30},
	    				{field:'pname',title:'产品名称',width:30},
	    				{field:'reason',title:'减少原因',width:30},
	    				{field:'date',title:'申请时间',width:30},
	    				{field:'state',title:'审批状态',width:30}	    						    				
	    			]]
	    		});
	    		$('#tb').show();
	    	});  
        </script>
  </body>
</html>
