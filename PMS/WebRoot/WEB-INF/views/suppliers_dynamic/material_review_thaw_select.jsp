<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>解冻信息审核</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="./css/easyui.css" rel="stylesheet">
    <link href="./css/base.css" rel="stylesheet">
    <link href="./css/suppliers_access/adm_access_plan.css" rel="stylesheet">
    <link href="./css/icon.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/suppliers_dyn_manage/frozen_submit.css">
    <script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="./script/easyui-lang-zh_CN.js"></script>

  </head>
  
  <body>
    <div style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="dg" style="width: 100%;height:100%; display:none" title="解冻信息审核" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:false,
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
                    <th field="code" width="70">供应商编号</th>
                    <th field="name" width="100">供应商名称</th>
                    <th field="level" width="50">等级</th>
                    <th field="reason" width="200">解冻原因</th>
                    <th field="subtime" width="60">申请时间</th>
                    <th field="status" width="60">审核状态</th>
                    <th field="check" width="60">操作</th>
                </tr>
            </thead>
        </table>
        <div id="tb" style="padding: 0 30px;display: none">
            <div class="conditions">
                起始日期:&nbsp&nbsp
                <input class="easyui-datebox" style="width: 166px; height: 35px; line-height: 35px;">&nbsp&nbsp&nbsp 终止日期:&nbsp&nbsp
                <input class="easyui-datebox" style="width: 166px; height: 35px; line-height: 35px;"> <a class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a> <a class="easyui-linkbutton" iconCls="icon-reload">重置</a> <a class="easyui-linkbutton">导出</a> <a class="easyui-linkbutton more" iconCls="icon-more">更多</a>
            </div>
            <div class="conditions hide">
                审核状态:&nbsp&nbsp
                <select class="combobox" name="language" style="height: 35px; width: 166px;">
                    <option>--------请选择--------</option>
                    <option>已审核</option>
                    <option>未审核</option>
                </select>&nbsp&nbsp&nbsp 供应商等级:&nbsp&nbsp
                <select class="combobox" name="language" style="height: 35px; width: 166px;">
                    <option>--------请选择--------</option>
                    <option>A</option>
                    <option>B</option>
                    <option>C</option>
                    <option>不及格</option>
                </select>
            </div>
        </div>
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
        for (var i = 1; i <= 80; i++) {
            rows.push({
                code: '10695',
                name: '南京天泽星网股份有限公司',
                level: 'A',
                reason: '考评等级上升',
                subtime: '2016-06-01',
                status: '未审核',
                check: '<a href="<%=basePath%>admin/material_review_thaw_check.do" class="easyui-linkbutton" data-options="selected:true">审核</a>'
            });
        }
        return rows;
    }

    $(function() {
        $('#dg').datagrid({
            data: getData()
        }).datagrid('clientPaging');
        $('#dg').show();
        $('#tb').show();
    });

    $(".more").click(function() {
        $(this).closest(".conditions").siblings().toggleClass("hide");
    });
    </script>
</body>
</html>
