// 获取绝对路径
var acno = $("#acnotd").text();
var curWwwPath = window.document.location.href;
var pathName = window.document.location.pathname;
var pos = curWwwPath.indexOf(pathName);
var localhostPath = curWwwPath.substring(0, pos);
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

$(function() {
	//自动给表单日期项填写当前日期
    var today = new Date();
    $('#apprDate').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
    $('#adate').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
    
    //转换来自服务器的日期数据
	function DateTimeFormatter(value) {
        var unixTimestamp = new Date(value); 
        return unixTimestamp.toLocaleDateString();
    }
	
	//获取页面URL的请求参数
	var acno = getArgs("acno");
	
    // 获取绝对路径
    var acno = $("#acnotd").text();
    var curWwwPath = window.document.location.href;
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf(pathName);
	var localhostPath = curWwwPath.substring(0, pos);
	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
	
	//投诉单列表
    $('#complains_list_dg').datagrid({
    	url: localhostPath+projectName+'/admin/complain/list.do',
    	singleSelect: true,
    	pagination: true,
    	autoRowHeight: true,
    	autoResize: true,
    	fitColumns: true,
    	striped: true,
    	checkOnSelect: false,
    	selectOnCheck: false,
    	collapsible: false,
    	toolbar: '#complains_list_tb',
    	pageSize: 10,
    	columns: [[{field: 'acno',title: '投诉编号', width:'10%', align: 'center'},
    		       {field: 'pno',title: '供应商编码', width:'10%', align: 'center'},
    		       {field: 'adate',title: '投诉日期', width:'10%', align: 'center', formatter: DateTimeFormatter},
    		       {field: 'title', title: '投诉标题', width: '30%', align: 'center'},
    		       {field: 'orged',title: '被投诉部门', width:'10%',align: 'center'},
    		       {field: 'astate', width: '10%', title: '处理状态', formatter: function(value,row,index){ if(row.complainDeal!=null){return row.complainDeal.astate;}else{return ""}}, align: 'center',},
    		       {field: 'aorg', width: '10%', title: '投诉处理部门', formatter: function(value,row,index){ if(row.complainDeal!=null){return row.complainDeal.aorg;}else{return ""}}, align: 'center',},
    		       {field: 'opt', width:'10%', title:'操作', formatter: function(value, row, index){return '<a href="admin/worker/complain/report.do?acno='+ row.acno +'" class="easyui-linkbutton">处理</a><a href="admin/leader/complain/audit.do?acno='+ row.acno +'" class="easyui-linkbutton">审批</a>'}, 
    		    	   align: 'center'}
    		       ]],
    	loadMsg: '数据加载中,请稍后'
    }); 
    
    // 审批列表
    $('#complains_proc_dg').datagrid({
    	url: localhostPath+projectName+'/admin/leader/complain/audit/list.do?acno='+acno,
    	singleSelect: true,
    	pagination: true,
    	autoRowHeight: true,
    	autoResize: true,
    	fitColumns: true,
    	striped: true,
    	checkOnSelect: false,
    	selectOnCheck: false,
    	collapsible: false,
    	pageSize: 10,
    	columns: [[{field: 'aid',title: '序号', width:'10%', align: 'center'},
    		       {field: 'acno',title: '投诉编号', width:'10%', align: 'center'},
    		       {field: 'aorg',title: '审批机构', width:'10%', align: 'center', },
    		       {field: 'pcno', title: '审批人', width: '30%', align: 'center'},
    		       {field: 'ainfo',title: '审批意见', width:'10%',align: 'center'},
    		       {field: 'adate', title: '审批时间', width: '20%', align: 'center', formatter: DateTimeFormatter},
    		       {field: 'isagree', width: '10%', title: '审批结果', formatter: function(value,row,index){ if(row.isagree=='1'){return "审批通过";}else{return "审批未通过"}}, align: 'center',}, 
    		       ]],
    	loadMsg: '数据加载中,请稍后'
    });
        
});

var options = {
	url: localhostPath+projectName+'/admin/leader/complain/saveAudit.do',
	type: 'post',
	dataType: 'json',
	resetForm: true,
    success: function(data){
			$.messager.alert({
				title:'审批操作',
				msg: data.msg,
				timeout:5000,
				showType:'slide'});
    },
    error: function(data){
            $.messager.alert({
				title:'审批操作',
				msg:'审批提交失败',
				timeout:5000,
				showType:'slide'});
    }
}; 
	
function submitAudit() {
	$.messager.confirm('操作确认', '是否确认提交?', function(r) {
		if (r) {
			$("#complainAuditForm").ajaxSubmit(options);
		}
	});
}

// 提交表单
function submitReport() {
	document.getElementById("complain-submit-form").submit();
}

// 重置输入项
function doReset() {
    $('#search-form').form('reset');
}

// 多条件查询按钮点击事件(从后台动态查询数据)
function queryInfo() {
	var acno = $(" input[ name='acno' ]").val();
	var pno = $(" input[ name='pno' ] ").val();
	var state = $(" input[ name='state' ]").val();
	var startDate = $(" input[ name='startDate' ]").val();
	var endDate = $(" input[ name='EndDate' ]").val();
	
    $('#complains_list_dg').datagrid('load', {
	    acno: acno,
	    pno: pno,
	    status: state,
	    startDate: startDate,
	    endDate: endDate
   });
}

// 动态添加Tab
function addTab(title, url, id) {
    if ($(id).tabs('exists', title)) {
        $(id).tabs('select', title);
    } else {
        var content = '<iframe scrolling="auto" frameborder="0" src="' + url + '" style="width:100%;height:95%;"></iframe>';
        $(id).tabs('add', {
            title: title,
            content: content,
            closable: true
        });
    }
}

// 动态添加查询Tab
function addDetail() {
    var id = '#supModifyInfo';
    var title = '查询页面';
    var url = 'adm_modify_approval.html';
    addTab(title, url, id);
}

// 动态添加投诉处理页面
function apprComplain() {
    var id = '#procComplainTabs';
    var title = '投诉审批页面';
    var url = 'adm_complains_approval.html';
    addTab(title, url, id);
}

// 动态添加投诉处理页面
function procComplain(){
    var id = '#procComplainTabs';
    var title = '投诉处理页面';
    var url = 'adm_complains_report.html';
    addTab(title, url, id);
}

// 获取当前URL的参数
function getArgs(strParame) {
	var args = new Object( );
	var query = location.search.substring(1); // Get query string
	var pairs = query.split("&"); // Break at ampersand
	for(var i = 0; i < pairs.length; i++) {
	var pos = pairs[i].indexOf('='); // Look for "name=value"
	if (pos == -1) continue; // If not found, skip
	var argname = pairs[i].substring(0,pos); // Extract the name
	var value = pairs[i].substring(pos+1); // Extract the value
	value = decodeURIComponent(value); // Decode it, if needed
	args[argname] = value; // Store as a property
	}
	return args[strParame]; // Return the object
}
