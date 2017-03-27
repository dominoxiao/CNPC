$(document).ready(function() {
    // tabs界面大小
    $('.easyui-tabs1').tabs({
        tabHeight: 36
    });
    $(window).resize(function() {
        $('.easyui-tabs1').tabs("resize");
    }).resize();
    
});

// 提交信息变更申请
var curWwwPath = window.document.location.href;
var pathName = window.document.location.pathname;
var pos = curWwwPath.indexOf(pathName);
var localhostPath = curWwwPath.substring(0, pos);
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

var options = {
	url : localhostPath + projectName + '/provider/save.do',
	type : 'post',
	resetForm : true,
	dataType : 'json',
	success : function(data) {
		$.messager.alert( {
			title : '信息变更申请',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	},
	error : function(data) {
		$.messager.alert( {
			title : '信息变更申请',
			msg : data.msg,
			timeout : 5000,
			showType : 'slide'
		});
	}
};

function submitModifyApply() {
	if($("#modifyApplyForm").form('validate')){
		$.messager.confirm('操作确认', '是否确认提交?', function(r) {
			if (r) {
				$("#modifyApplyForm").ajaxSubmit(options);
			}
	    });
	}else{
		$.messager.alert('Info', '请正确填写信息', 'info');
	}

};




