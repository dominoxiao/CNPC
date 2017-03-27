<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>准入方案查询</title>
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
	    			url:'<%=basePath%>admin/access/adm_access_plan_select.do',
	    			idField:'planid',
	    			title:'准入方案查询',
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
	    				{field:'planid',title:'方案申请编号',width:30},
	    				{field:'applydate',title:'申请时间',formatter: formatDatebox,width:30},
	    				{field:'aorg',title:'申请机构',width:30},
	    				{field:'download',width:30,title:'申请方案',
	    					formatter: function(value,row,index){
									return '<a href="<%=basePath%>admin/access/downfile.do?planid='+row.planid+'">下载</a>';  
							}
	    				},
	    				{field:'state',width:30,title:'审核',
	    					formatter: function(value,row,index){
	    						//	alert(value);
	    							if(value=='0'){
	    								return '<a href="<%=basePath%>admin/access/checkfirst.do?planid='+row.planid+'">审核</a>';  
	    							}
	    						 	if(value=='1'||value=='2'){
	    						 		return '已审核';
	    						 	}				
							}
	    					
	    				
	    				}
	    			]]
	    		});
	    		$('#tb').show();
	    	});
	    	function searchPlan(){
	    		var planid = $("#planid").val();
	    		var handler = "<%=basePath%>admin/access/adm_access_plan_select.do?planid=" + planid;
             	$('#dg').datagrid('options').url = handler;
            	$('#dg').datagrid('reload'); 
	    		
	    	}
		</script>

  </head>
  
 <body>

    <div class="container" style="position:absolute;padding:10px;width:98%;height:93%;overflow:hidden">
        <table id="dg" style="width:100%;height:100%;"></table>
      <div id="tb" style="padding:0 30px;display:none">
       方案编号: <input class="easyui-textbox" id="planid" type="text" name="planid" style="width:166px;height:35px;line-height:35px;"></input>
      
        
         <a class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true" onclick="searchPlan()">查询</a>
      </div>
    </div>
    
</body> 
</html>
