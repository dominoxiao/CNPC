$(document).ready(function() {
    $('#check_process_dg').datagrid({
        loadFilter: pagerFilter
    }).datagrid('loadData', getData());

    $('#sup_apply_list_dg').datagrid({
        loadFilter: pagerFilter,
        onClickRow: function(rowIndex) {
            var row = $('#sup_apply_list_dg').datagrid('getSelected');
            if (row) {
                $("#applNum").val(row.applNum);
                $("#checker").val(row.checker);
                $("#checkDate").val(row.checkTime);
                $("#supNum").val(row.supNum);
                $("#supName").val(row.supName);
                $("#checkOrg").val(row.checkDept);
                $("#checkResult").val(row.checkResult);
                $("#checkAdvice").val(row.checkAdvice);
            }
        }
    }).datagrid('loadData', getApprData());


    $('.easyui-tabs1').tabs({
        tabHeight: 36
    });
    $(window).resize(function() {
        $('.easyui-tabs1').tabs("resize");
    }).resize();

    $('#modifyApplyStatus').dialog('close');

});

// 重置输入项
function doReset() {
    $('#search-form').form('reset');
}

// 获取数据
function getData() {
    var rows = [];
    for (var i = 1; i <= 800; i++) {
        rows.push({
            applNum: '1107491',
            applDate: '天津大桥集团电焊条供销有限公司',
            applType: '变更申请',
            checkStatus: '已审批',
            checkResult: '通过',
            sycnMDM: '已同步',
            opt: '<a href="javascript:void(0);" class="easyui-linkbutton" onclick="addAppr()">查看</a>'
        });
    }
    return rows;
}

// 获取变更申请审批信息
function getApprData() {
    var rows = [];
    for (var i = 1; i <= 1000; i++) {
        rows.push({
            applNum: 'CN10001',
            supNum: 'GYS10001',
            supName: '电子科技有限公司',
            checker: 'nkd',
            checkDept: '总部物采部',
            checkTime: '2017-02-13',
            checkResult: '通过',
            checkAdvice: '审批意见如下',
            checkStatus: '初轮审批'
        });
    }
    return rows;
}

function pagerFilter(data) {
    if (typeof data.length == 'number' && typeof data.splice == 'function') { // is array
        data = {
            total: data.length,
            rows: data
        }
    }
    var dg = $(this);
    var opts = dg.datagrid('options');
    var pager = dg.datagrid('getPager');
    pager.pagination({
        onSelectPage: function(pageNum, pageSize) {
            opts.pageNumber = pageNum;
            opts.pageSize = pageSize;
            pager.pagination('refresh', {
                pageNumber: pageNum,
                pageSize: pageSize
            });
            dg.datagrid('loadData', data);
        }
    });
    if (!data.originalRows) {
        data.originalRows = (data.rows);
    }
    var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
    var end = start + parseInt(opts.pageSize);
    data.rows = (data.originalRows.slice(start, end));
    return data;
}

function openModifyApplyDlg() {
    $('#modifyApplyStatus').dialog({
        modal: true,
        open: true
    });
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

// 获取绝对路径
var acno = $("#acnotd").text();
var curWwwPath = window.document.location.href;
var pathName = window.document.location.pathname;
var pos = curWwwPath.indexOf(pathName);
var localhostPath = curWwwPath.substring(0, pos);
var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);

// 动态添加查询Tab
function addAppr() {
    var id = '#supModifyInfo';
    var title = '变更审批详情页面';
    var url = localhostPath + projectName + '/provider/modify/process/detail.do';
    addTab(title, url, id);
}
