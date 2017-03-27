$(function() {
	//转换来自服务器的日期数据
	function DateTimeFormatter(value) {
		var unixTimestamp = new Date(value);
		return unixTimestamp.toLocaleDateString();
	}
	
	//投诉单列表
    $('#annual_fee_dg').datagrid({
    	url: 'admin/yearmoney/list.do',
    	singleSelect: true,
    	pagination: true,
    	autoRowHeight: true,
    	autoResize: true,
    	fitColumns: true,
    	striped: true,
    	checkOnSelect: false,
    	selectOnCheck: false,
    	collapsible: false,
    	toolbar: '#annual_fee_tb',
    	pageSize: 10,
    	columns: [[{field: 'aid',title: '缴费编号', width:'20%', align: 'center'},
    		       {field: 'pno',title: '供应商编码', width:'20%', align: 'center'},
    		       {field: 'pdate',title: '缴费日期', width:'10%', align: 'center', formatter: DateTimeFormatter},
    		       {field: 'pmoney',title: '缴费金额', width:'20%', align: 'center'},
    		       {field: 'ptype', title: '缴费方式', width:'10%', align: 'center'},
    		       {field: 'empno', title: '收费员', width:'20%', align: 'center'}
    		       ]],
    	loadMsg: '数据加载中,请稍后'
    }); 

	var today = new Date();
	$('#payDate').datebox('setValue',today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());

	$('#saveRecordForm').submit(function() {
		$(this).ajaxSubmit(options);
		return false;
	});

});

// 多条件查询按钮点击事件(从后台动态查询数据)
function getPayHistory() {
	var pno = $(" input[ name='pno' ] ").val();
	console.log(pno);
    $('#annual_fee_dg').datagrid('load', {
	    pno: pno,
   });
}

// 重置查询项
function doReset() {
	$('#search-form').form('reset');
}

//提交缴费记录
var options = {
	url :'admin/yearmoney/save.do',
	type : 'post',
	success : function(data) {
		$.messager.alert( {
			title : '缴费操作',
			msg : '缴费提交成功',
			timeout : 5000,
			showType : 'slide'
		});
	},
	error : function(data) {
		$.messager.alert( {
			title : '缴费操作',
			msg : '缴费提交失败',
			timeout : 5000,
			showType : 'slide'
		});
	}
};
function confirm1() {
	$.messager.confirm('操作确认', '是否确认提交?', function(r) {
		if (r) {
			$("#saveRecordForm").ajaxSubmit(options);
		}
	});
}


