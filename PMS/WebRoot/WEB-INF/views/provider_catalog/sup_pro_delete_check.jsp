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
	<title>产品减少审批</title>
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>  
  </head>
  
  <body>
    <div class="container" style="margin: 10px">
       <table id="dg" style="width:100%" title="产品减少审批" data-options="
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
      <div id="tb" style="padding:0 30px;">
       供应商编号: <input class="easyui-textbox" type="text" name="sno" style="width:166px;height:35px;line-height:35px;"></input>
       产品编号: <input class="easyui-textbox" type="text" name="no" style="width:166px;height:35px;line-height:35px;"></input>
      
        
         <a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
      </div> 
    </div>
    <script type="text/javascript">
           $(function(){
	    		 $("#dg").datagrid({
	    		 	title:'产品减少申请表',
	    			url:'<%=basePath%>ProviderGoods/showAllCutGoods.do',
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
	    				{field:'state',title:'审批状态',width:30},
	    				{field:'do',title:'操作',width:30,formatter: function(value,row,index){  				
	    				return '<a href="<%=basePath%>GoodsChange/adminDeleteCheckFinal.do?gno='+row.gno+'&pname='+row.pname+'&date='+row.date+'&reason='+row.reason+'">审批</a>';
	    				}}	    						    				
	    			]]
	    		});
	    		$('#tb').show();
	    	});         
    </script>
  </body>
</html>
