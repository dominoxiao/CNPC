$(function() {
	// 初始页面默认关闭批量审批窗口
	$('#dlg').dialog('close');
	
    //自动给表单日期项填写当前日期
    var today = new Date();
    $('#adate').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
	
	//转换来自服务器的日期数据
	function DateTimeFormatter(value) {
		console.log(value);
        var unixTimestamp = new Date(value); 
        return unixTimestamp.toLocaleDateString();
    }
	
	//待审批的供应商信息变更申请列表
    $('#deal_modify_apply_dg').datagrid({
    	url: 'admin/modify/list.do',
    	rownumbers:true,
    	singleSelect: true,
    	pagination: true,
    	autoRowHeight: true,
    	autoResize: true,
    	fitColumns: true,
    	striped: true,
    	checkOnSelect: false,
    	selectOnCheck: false,
    	collapsible: false,
    	toolbar: '#deal_modify_apply_tb',
    	pageSize: 10,
    	columns: [[{field: 'applyno',title: '变更申请编号', width:'20%', align: 'center'},
    		       {field: 'pname',title: '供应商名称', width:'20%', align: 'center', },
    		       {field: 'pno', title: '供应商编号', width: '20%', align: 'center'},
    		       {field: 'state',title: '审批状态', width:'10%',align: 'center'},
    		       {field: 'applyDate', title: '申请提交时间', width: '15%', align: 'center', formatter: DateTimeFormatter},
    		       {field: 'opt',title: '操作', width:'10%',align: 'center',formatter: function(value, row, index){
    		    	     var str1 = "<a id='appr' href='javascript:void(0)' onclick='detail(&apos;" + row.applyno +"&apos;,&apos;" + row.pno + "&apos;,&apos;" + row.pname + "&apos;)'>查看</a>";  
    		    	     var str2 = "<a id='detail' href='javascript:void(0)' onclick='addAppr(&apos;" + row.applyno +"&apos;,&apos;" + row.pno + "&apos;,&apos;" + row.pname + "&apos;)'>审批</a>"; 
    		    	     return str1+" "+str2; }}]],
    	loadMsg: '数据加载中,请稍后'
    });
    
});

// 根据指定条件查询信息变更申请列表
function queryInfo() {
	var pno = $(" input[ name='pno' ] ").val();
	var startDate = $(" input[ name='startDate' ]").val();
	var endDate = $(" input[ name='EndDate' ]").val();
	
    $('#deal_modify_apply_dg').datagrid('load', {
	    pno: pno,
	    startDate: startDate,
	    endDate: endDate
   });
}

// 重置输入项
function doReset() {
    $('#search-form').form('reset');
}

// 动态添加Tab
function addTab(title, url, id) {
    if ($(id).tabs('exists', title)) {
        $(id).tabs('select', title);
    } else {
        var content = '<iframe frameborder="no" border="no" scrolling="auto" src="' + url + '" style="width:100%;height:95%;"></iframe>';
        $(id).tabs('add', {
            title: title,
            content: content,
            closable: true
        });
    }
}

// 动态添加查询Tab
function addAppr(applyno, pno, pname){
    var id = '#modifyApprTabs';
    var title = '审批页面';
    var url = "admin/modify/audit/edit.do?applyno="+applyno+"&pno="+pno+"&pname="+pname;
    addTab(title, url, id);
}

// 动态添加详情查询Tab
function detail(applyno, pno, pname){
	var id = '#modifyApprTabs';
	var title = '申请详情查看';
	var url = "admin/modify/detail.do?applyno="+applyno;
	addTab(title, url, id);
}

// 提交变更申请的审批意见
var curWwwPath = window.document.location.href;
var pathName = window.document.location.pathname;
var pos = curWwwPath.indexOf(pathName);
var localhostPath = curWwwPath.substring(0, pos);
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

var options = {
	url : localhostPath + projectName + '/admin/modify/audit/submit.do',
	type : 'post',
	resetForm : true,
	dataType : 'json',
	success : function(data) {
		$.messager.alert( {
			title : '信息变更审批',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	},
	error : function(data) {
		$.messager.alert( {
			title : '信息变更审批',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	}
};

function submitApplyAudit() {
	$.messager.confirm('操作确认', '是否确认提交?', function(r) {
		if (r) {
			$("#modifyApplyAuditForm").ajaxSubmit(options);
		}
	});
};


// 打开批量审批窗口
function openDialog() {
    $('#dlg').dialog({
        modal: true,
        open: true
    });
}

