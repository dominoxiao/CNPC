<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>供应商考核方案审批页面</title>
    <link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
    <link href="<%=basePath%>/css/base.css" rel="stylesheet">
    <link href="<%=basePath%>/css/suppliers_access/adm_access_plan.css" rel="stylesheet">
    <link href="<%=basePath%>/css/icon.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>
</head>

<body>
    <div class="container" style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="dg" style="width:100%;height:100%;display:none" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:false,
                toolbar:'#tb',
                pageSize:10">
            <thead>
                <tr>
                    <th data-options="field:'ck',checkbox:true">全选</th>
                    <th field="code" width="10">申请编号</th>
                    <th field="cdate" width="11">申请时间</th>
                    <th field="org" width="14">申请机构</th>
                    <th field="plan" width="10">考评方案文件</th>
                    <th field="suggestion" width="14">审批意见</th>
                    <th field="department" width="14">审批机构</th>
                    <th field="deadline3" width="12">审批状态</th>
                    <th field="deadline2" width="10">审批时间</th>
                </tr>
            </thead>
        </table>
        <div id="tb" style="padding:0 30px;display:none">
            方案编号:
            <input class="easyui-textbox" type="text" name="" style="width:166px;height:35px;line-height:35px;"></input>
            <a  class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
            <a  class="easyui-linkbutton">批量审核通过</a>
            <a  class="easyui-linkbutton">批量拒绝审核</a>
        </div>
        <script type="text/javascript">
        (function($) {
            function pagerFilter(data) {
                if ($.isArray(data)) { // is array
                    data = {
                        total: data.length,
                        rows: data
                    }
                }
                var target = this;
                var dg = $(target);
                var state = dg.data('datagrid');
                var opts = dg.datagrid('options');
                if (!state.allRows) {
                    state.allRows = (data.rows);
                }
                if (!opts.remoteSort && opts.sortName) {
                    var names = opts.sortName.split(',');
                    var orders = opts.sortOrder.split(',');
                    state.allRows.sort(function(r1, r2) {
                        var r = 0;
                        for (var i = 0; i < names.length; i++) {
                            var sn = names[i];
                            var so = orders[i];
                            var col = $(target).datagrid('getColumnOption', sn);
                            var sortFunc = col.sorter || function(a, b) {
                                return a == b ? 0 : (a > b ? 1 : -1);
                            };
                            r = sortFunc(r1[sn], r2[sn]) * (so == 'asc' ? 1 : -1);
                            if (r != 0) {
                                return r;
                            }
                        }
                        return r;
                    });
                }
                var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
                var end = start + parseInt(opts.pageSize);
                data.rows = state.allRows.slice(start, end);
                return data;
            }

            var loadDataMethod = $.fn.datagrid.methods.loadData;
            var deleteRowMethod = $.fn.datagrid.methods.deleteRow;
            $.extend($.fn.datagrid.methods, {
                clientPaging: function(jq) {
                    return jq.each(function() {
                        var dg = $(this);
                        var state = dg.data('datagrid');
                        var opts = state.options;
                        opts.loadFilter = pagerFilter;
                        var onBeforeLoad = opts.onBeforeLoad;
                        opts.onBeforeLoad = function(param) {
                            state.allRows = null;
                            return onBeforeLoad.call(this, param);
                        }
                        var pager = dg.datagrid('getPager');
                        pager.pagination({
                            onSelectPage: function(pageNum, pageSize) {
                                opts.pageNumber = pageNum;
                                opts.pageSize = pageSize;
                                pager.pagination('refresh', {
                                    pageNumber: pageNum,
                                    pageSize: pageSize
                                });
                                dg.datagrid('loadData', state.allRows);
                            }
                        });
                        $(this).datagrid('loadData', state.data);
                        if (opts.url) {
                            $(this).datagrid('reload');
                        }
                    });
                },
                loadData: function(jq, data) {
                    jq.each(function() {
                        $(this).data('datagrid').allRows = null;
                    });
                    return loadDataMethod.call($.fn.datagrid.methods, jq, data);
                },
                deleteRow: function(jq, index) {
                    return jq.each(function() {
                        var row = $(this).datagrid('getRows')[index];
                        deleteRowMethod.call($.fn.datagrid.methods, $(this), index);
                        var state = $(this).data('datagrid');
                        if (state.options.loadFilter == pagerFilter) {
                            for (var i = 0; i < state.allRows.length; i++) {
                                if (state.allRows[i] == row) {
                                    state.allRows.splice(i, 1);
                                    break;
                                }
                            }
                            $(this).datagrid('loadData', state.allRows);
                        }
                    });
                },
                getAllRows: function(jq) {
                    return jq.data('datagrid').allRows;
                }
            })
        })(jQuery);

        function getData() {
            var rows = [];
            for (var i = 1; i <= 20; i++) {
                rows.push({

                    code: '16S10695',
                    cdate: '2016-10-15',
                    org: '中石油大连分公司',

                    deadline2: '2016-10-15',
                    plan: '<a  class="easyui-linkbutton" data-options="selected:true">下载</a>',
                    department: '<select id="complaintStatus" class="easyui-combobox" name="complaintStatus" style="width:100%;height:35px;line-height:35px;"><option value=""></option><option value="remain_deal">评审委员会</option><option value="excute_deal">总部物采部</option></select>',
                    deadline3: '<select id="complaintStatus" class="easyui-combobox" name="complaintStatus" style="width:100%;height:35px;line-height:35px;"><option value=""></option><option value="remain_deal">审批通过</option><option value="excute_deal">审批不通过</option></select>',
                    suggestion: '<input class="easyui-textbox" type="text" name="" style="width:98%;height:35px;line-height:35px;"></input>'


                });
            }
            return rows;
        }

        $(function() {
            $('#dg').datagrid({
                data: getData()
            }).datagrid('clientPaging');
            // $('#dg').show();
            // $('#tb').show();
        });
        </script>
</body>

</html>
