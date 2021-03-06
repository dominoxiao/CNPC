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
    <title>年审通知</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="./css/easyui.css" rel="stylesheet">
    <link href="./css/base.css" rel="stylesheet">
    <link href="./css/suppliers_access/adm_access_plan.css" rel="stylesheet">
    <link href="./css/icon.css" rel="stylesheet">
    <script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="./script/easyui-lang-zh_CN.js"></script>

  </head>
  
   <body>
        <div style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
            <table id="dg" style="width:100%;height:100%" title="供应商查询" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:true,
                selectOnCheck:false,
                collapsible:false,
                toolbar:'#tb',
                pageSize:10">
                <thead>
                    <tr>
                        <th data-options="field:'ck',checkbox:true"></th>
                        <th field="code" width="100">供应商编号</th>
                        <th field="supname" width="100">供应商名称</th>
                        <th field="deadline" width="100">准入证到期时间</th>
                        <th field="firsttime" width="100">第一次准入时间</th>
                        <th field="lasttime" width="100">上次准入时间</th>
                        <th field="lastnote" width="100">上次通知时间</th>
                    </tr>
                </thead>
            </table>
            <div id="tb" style="padding:0 30px;">
                供应商编号:
                <input class="easyui-textbox" type="text" name="" style="width:166px;height:35px;line-height:35px;"></input>
                供应商名称:
                <input class="easyui-textbox" type="text" name="" style="width:166px;height:35px;line-height:35px;"></input>
                <br/>
                关键字:
                <input class="easyui-textbox" type="text" name="" style="width:166px;height:35px;line-height:35px;"></input>
                到期时间:
                <select class="easyui-combobox" name="" panelHeight="60" style="width:166px;height:35px;line-height:35px;">
                    <option>请选择时间</option>
                    <option>一周内到期</option>
                    <option>一月内到期</option>
                </select>
                <a class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
            </div>
            <div style="margin-left: 45%;margin-top: 10px">
                <a style="margin-right: 25px" class="easyui-linkbutton">发送</a>
                <a style="margin-right: 15px" class="easyui-linkbutton">取消</a>
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
                    //ck:checkbox=true,
                    code: '10695<a href="<%=basePath%>admin/sup_browse_files.do"><img src="./icons/search.png"></img></a>',
                    supname: '天津钢管厂',
                    deadline: '2018-1-23',
                    firsttime: '2000-12-21',
                    lasttime: '2017-1-23',
                    lastnote: '2017-1-1'
                });
            }
            return rows;
        }

        $(function() {
            $('#dg').datagrid({
                data: getData()
            }).datagrid('clientPaging');
        });
        </script>
    </body>
</html>
