    // 重置输入项
    function doReset() {
        $('#search-form').form('reset');
        // tabs界面大小
        $('.easyui-tabs1').tabs({
            tabHeight: 36
        });
        $(window).resize(function() {
            $('.easyui-tabs1').tabs("resize");
        }).resize();
    }

    // 获取数据
    function getData() {
        var rows = [];
        for (var i = 1; i <= 800; i++) {
            rows.push({
                suppliersCode: 'GYS27981943',
                suppliersName: '无锡化工原料厂',
                accessWay: '推荐',
                accessDate: '2017-02-02',
                licenseNum: '',
                edit: '<a href="file:///D:/ETC/workspace/SupplierManageSystem/WebContent/suppliers_basic_info/adm_complains_report.html" class="easyui-linkbutton">查询</a>'
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

    $(function() {
        $('#main_data_dg').datagrid({
            loadFilter: pagerFilter
        });
        var today = new Date();
        $('#apprDate').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
    });

    function queryInfo() {
        $('#main_data_dg').datagrid({
            loadFilter: pagerFilter
        }).datagrid('loadData', getData());

        $('#main_data_dg').show();
        $('#main_data_tb').show();
    }
