$(document).ready(function() {
    // tabs界面大小
    $('.easyui-tabs1').tabs({
        tabHeight: 36
    });
    $(window).resize(function() {
        $('.easyui-tabs1').tabs("resize");
    }).resize();
});

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

// 重置输入项
function doReset() {
    $('#search-form').form('reset');
}

// 获取数据
function getData() {
    var rows = [];
    rows = [{
        fileType: '企业营业执照',
        upload: '<input class="easyui-filebox" name="uploadFiles">',
        fileName: '营业执照.jpg',
        comments: '备注'
    }];
    return rows;
}

// 点击进入下一页
function nextPage() {
    $('#supModifyInfo').tabs('select', '资质信息');
}

// 点击返回上一页
function lastPage() {
    $('#supModifyInfo').tabs('select', '基础信息');
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
