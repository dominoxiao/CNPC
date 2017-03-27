$(function() {
	//转换来自服务器的日期数据
	function DateTimeFormatter(value) {
        var unixTimestamp = new Date(value); 
        return unixTimestamp.toLocaleDateString();
    }
	
	// 获取绝对路径
    var curWwwPath = window.document.location.href;
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf(pathName);
	var localhostPath = curWwwPath.substring(0, pos);
	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
	
	//初始化Datagrid
    $('#complains_info').datagrid({
    	url: localhostPath+projectName+'/provider/complain/list.do',
    	singleSelect: true,
    	pagination: true,
    	autoRowHeight: true,
    	autoResize: true,
    	fitColumns: true,
    	striped: true,
    	checkOnSelect: false,
    	selectOnCheck: false,
    	collapsible: false,
    	toolbar: '#tb',
    	pageSize: 10,
    	columns: [[{field: 'acno',title: '投诉编号', width:'10%', align: 'center'},
    		       {field: 'pno',title: '供应商编码', width:'10%', align: 'center'},
    		       {field: 'adate',title: '投诉日期', width:'10%', align: 'center', formatter: DateTimeFormatter},
    		       {field: 'title', title: '投诉标题', width: '30%', align: 'center'},
    		       {field: 'orged',title: '被投诉部门', width:'10%',align: 'center'},
    		       {field: 'astate', width: '10%', title: '处理状态', formatter: function(value,row,index){ if(row.complainDeal!=null){return row.complainDeal.astate;}else{return ""}}, align: 'center',},
    		       {field: 'aorg', width: '10%', title: '投诉处理部门', formatter: function(value,row,index){ if(row.complainDeal!=null){return row.complainDeal.aorg;}else{return ""}}, align: 'center',},
    		       {field: 'opt', width:'10%', title:'操作', formatter: function(value, row, index){return '<a href="provider/complain/detail.do?acno='+ row.acno +'" class="easyui-linkbutton">查看</a>'}, align: 'center'}
    		       ]],
    	loadMsg: '数据加载中,请稍后'
    }); 
    
});


// 重置输入项
function doReset() {
    $('#search-form').form('reset');
}

// 多条件查询按钮点击事件(从后台动态查询数据)
function queryInfo() {
	var title = $(" input[ name='complainTitle' ] ").val();
	var status = $(" input[ name='complainStatus' ]").val();
	var startDate = $(" input[ name='startDate' ]").val();
	var endDate = $(" input[ name='EndDate' ]").val();
	
    $('#complains_info').datagrid('load', {
	    title: title,
	    status: status,
	    startDate: startDate,
	    endDate: endDate
   });
}

// 提交信息变更申请
var curWwwPath = window.document.location.href;
var pathName = window.document.location.pathname;
var pos = curWwwPath.indexOf(pathName);
var localhostPath = curWwwPath.substring(0, pos);
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

var options = {
	url : localhostPath + projectName + '/provider/complain/save.do',
	type : 'post',
	resetForm : true,
	dataType : 'json',
	success : function(data) {
		$.messager.alert( {
			title : '投诉申请',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	},
	error : function(data) {
		$.messager.alert( {
			title : '投诉申请',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	}
};

function submitComplainApply() {
	if($("#complain-submit-form").form('validate')){
		$.messager.confirm('操作确认', '是否确认提交?', function(r) {
			if (r) {
				$("#complain-submit-form").ajaxSubmit(options);
			}
	    });
	}else{
		$.messager.alert('Info', '请正确填写信息', 'info');
	}

};

