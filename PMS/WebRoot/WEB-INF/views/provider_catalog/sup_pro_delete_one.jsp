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
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script> 
	 <script type="text/javascript">
     
         $(function(){
	    		 $("#dg").datagrid({
	    		 	title:'产品减少申请',
	    			url:'<%=basePath%>ProviderGoods/showGoods.do',
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
	    				{field:'gno',title:'物料编码',width:30},
	    				{field:'goods',title:'物料名称',width:30},
	    				{field:'do',width:30,title:'操作',width:25,formatter: function(value,row,index){  				
	    				return '<a href="<%=basePath%>GoodsChange/GoodsDeleteApplyTwo.do?gno='+row.gno+'&goods='+row.goods+'">申请</a>';
	    				}}	    						    				
	    			]]
	    		});
	    		$('#tb').show();
	    	});       
    </script>   
  </head>

  <body>
	<div class="container" style="margin: 10px">
       <table id="dg" style="width:100%">
       </table>
    </div>
	<div colspan="6" style="text-align:center; height: 50px"> 
		<a href="<%=basePath%>GoodsChange/GoodsDeleteApply.do" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
	</div>
  </body>
</html>
