<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>准入审核</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/easyui.css" rel="stylesheet">
	<link href="./css/base.css" rel="stylesheet">
	<link href="./css/suppliers_access/adm_access_plan.css" rel="stylesheet">
	<link href="./css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="./script/jquery.min.js"></script>
	<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="./script/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		Date.prototype.format = function(format) {
			var o = {
				"M+" : this.getMonth() + 1, // 月
				"d+" : this.getDate(), // 天
				"h+" : this.getHours(), // 时
				"m+" : this.getMinutes(), // 分
				"s+" : this.getSeconds(), // 秒
				"q+" : Math.floor((this.getMonth() + 3) / 3), // 刻
				"S" : this.getMilliseconds() //毫秒
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
		$(function(){
	    		 $("#dg").datagrid({
	    			url:'<%=basePath%>admin/access/selectProviderApply.do',
	    			idField:'pano',
	    			title:'供应商查询',
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
	    				{field:'pano',title:'准入申请号',width:40},
	    				{field:'pname',title:'供应商名称',width:30},
	    				{field:'gsRegno',title:'工商注册号',width:30},
	    				{field:'applyDate',title:'申请时间',width:30,formatter: formatDatebox},
	    				{field:'detail',width:30,title:'详细信息',
	    					formatter: function(value,row,index){
									return '<a href="<%=basePath%>admin/provider/detail.do?pano='+row.pano+'" class="easyui-linkbutton" data-options="selected:true">查看</a>';  
							}
	    				},
	    				{field:'state',width:30,title:'审核',
	    					formatter: function(value,row,index){
	    						//alert(value);
	    							if(value=='1'||value=='2'){
	    								return '<a style="text-decoration: underline;cursor: pointer;color:blue;" onclick="agree('+row.pano+')">同意</a>&nbsp;<a style="text-decoration: underline;cursor: pointer;color:blue;" onclick="disagree('+row.pano+')">拒绝</a>';  
	    							}
	    						 	else if(value=='4'){
	    						 		return '<a style="text-decoration: underline;cursor: pointer;color:blue;" href="<%=basePath%>admin/access/selectProviderByPano.do?pano='+row.pano+'">审核</a>';
	    						 	}
	    						 		
							}
	    					
	    				
	    				}
	    			]]
	    		});
	    		$('#tb').show();
	    	});
	    	function agree(pano){
	    		$.ajax({
	    			type: 'post',
	    			//async:false,
	    			url:'<%=basePath%>admin/access/checkfirst.do?pano='+pano+'&method=pass',
	    			success: function (data){
	    				//alert("");
	    				$('#dg').datagrid('reload'); 
	    			},
	    			error:function (data){
	    				alert("lll");
	    				//$('#dg').datagrid('reload'); 
	    			}
	    		});
	    	}
	    	function disagree(pano){
	    		$.ajax({
	    			type: 'post',
	    			//async:false,
	    			url:'<%=basePath%>admin/access/checkfirst.do?pano='+pano+'&method=refuse',
	    			success: function (data){
	    				$('#dg').datagrid('reload'); 
	    			}
	    		});
	    	}
	    	function searchProvider(){
	    		var pano = $("#pano").val();
	    		var handler = "<%=basePath%>admin/access/selectProviderApply.do?pano=" + pano;
             	$('#dg').datagrid('options').url = handler;
            	$('#dg').datagrid('reload'); 
	    	}
	</script>
  </head>
  
  <body>
    <div class="container" style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
       <table id="dg" style="width:100%;height:100%;"></table>
      <div id="tb" style="padding:0 30px;display:none">
       供应商编号: <input class="easyui-textbox" type="text" id="pano" style="width:166px;height:35px;line-height:35px;"></input>
      
        
         <a class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true" onclick="searchProvider()">查询</a>
      </div>
    </div>
   
</body> 
</html>
