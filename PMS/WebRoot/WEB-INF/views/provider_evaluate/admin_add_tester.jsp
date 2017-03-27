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
<title>考评人员筛选</title>
	<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>/css/base.css" rel="stylesheet">
	<link href="<%=basePath%>/css/suppliers_access/adm_access_plan.css" rel="stylesheet">
	<link href="<%=basePath%>/css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>    
</head>
<body>
<body>
    <div class="container" style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
       <table id="dg" style="width:100%;height:100%;"  data-options="
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
                    <th data-options="field:'ck',checkbox:true">全选</th>
                    <th field="code" width="10">供应商编码</th>
                    <th field="supcode" width="10">考评安排号</th>
                    <th field="auditDept" width="10">考评时间</th>
                    <th field="accessType" width="12">供应商名称</th>
                    <th field="recdept" width="10">人员编号</th>
                    <th field="guestDept" width="10">人员姓名</th>
                    <th field="appdate" width="10">职称</th>
                    <th field="procheck" width="13">所属单位</th>
                    <th field="del" width="10">删除</th>
                </tr>
            </thead>
        </table>
        <div id="tb" style="padding:0 30px;">
        <div class="conditions">
            <span >人员编号: </span><input class="easyui-textbox" type="text" name="code" style="width:150px;height:35px;line-height:35px;"></input>
            <span >人员名称: </span><input class="easyui-textbox" type="text" name="name" style="width:150px;height:35px;line-height:35px;"></input>
            <span >职称: </span><input class="easyui-textbox" type="text" name="name" style="width:150px;height:35px;line-height:35px;"></input>
            <span >所属单位: </span><input class="easyui-textbox" type="text" name="name" style="width:150px;height:35px;line-height:35px;"></input>
            <a  class="easyui-linkbutton" iconCls="icon-add">添加</a>  
            <a href="<%=basePath%>admin/relevdepart/proaudit/arrangeTester.do" class="easyui-linkbutton" data-options="iconCls:'icon-back'">返回</a>
        </div>
      </div>
    </div>
    <script type="text/javascript">
            (function($){
            function pagerFilter(data){
                if ($.isArray(data)){   // is array
                    data = {
                        total: data.length,
                        rows: data
                    }
                }
                var target = this;
                var dg = $(target);
                var state = dg.data('datagrid');
                var opts = dg.datagrid('options');
                if (!state.allRows){
                    state.allRows = (data.rows);
                }
                if (!opts.remoteSort && opts.sortName){
                    var names = opts.sortName.split(',');
                    var orders = opts.sortOrder.split(',');
                    state.allRows.sort(function(r1,r2){
                        var r = 0;
                        for(var i=0; i<names.length; i++){
                            var sn = names[i];
                            var so = orders[i];
                            var col = $(target).datagrid('getColumnOption', sn);
                            var sortFunc = col.sorter || function(a,b){
                                return a==b ? 0 : (a>b?1:-1);
                            };
                            r = sortFunc(r1[sn], r2[sn]) * (so=='asc'?1:-1);
                            if (r != 0){
                                return r;
                            }
                        }
                        return r;
                    });
                }
                var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
                var end = start + parseInt(opts.pageSize);
                data.rows = state.allRows.slice(start, end);
                return data;
            }

            var loadDataMethod = $.fn.datagrid.methods.loadData;
            var deleteRowMethod = $.fn.datagrid.methods.deleteRow;
            $.extend($.fn.datagrid.methods, {
                clientPaging: function(jq){
                    return jq.each(function(){
                        var dg = $(this);
                        var state = dg.data('datagrid');
                        var opts = state.options;
                        opts.loadFilter = pagerFilter;
                        var onBeforeLoad = opts.onBeforeLoad;
                        opts.onBeforeLoad = function(param){
                            state.allRows = null;
                            return onBeforeLoad.call(this, param);
                        }
                        var pager = dg.datagrid('getPager');
                        pager.pagination({
                            onSelectPage:function(pageNum, pageSize){
                                opts.pageNumber = pageNum;
                                opts.pageSize = pageSize;
                                pager.pagination('refresh',{
                                    pageNumber:pageNum,
                                    pageSize:pageSize
                                });
                                dg.datagrid('loadData',state.allRows);
                            }
                        });
                        $(this).datagrid('loadData', state.data);
                        if (opts.url){
                            $(this).datagrid('reload');
                        }
                    });
                },
                loadData: function(jq, data){
                    jq.each(function(){
                        $(this).data('datagrid').allRows = null;
                    });
                    return loadDataMethod.call($.fn.datagrid.methods, jq, data);
                },
                deleteRow: function(jq, index){
                    return jq.each(function(){
                        var row = $(this).datagrid('getRows')[index];
                        deleteRowMethod.call($.fn.datagrid.methods, $(this), index);
                        var state = $(this).data('datagrid');
                        if (state.options.loadFilter == pagerFilter){
                            for(var i=0; i<state.allRows.length; i++){
                                if (state.allRows[i] == row){
                                    state.allRows.splice(i,1);
                                    break;
                                }
                            }
                            $(this).datagrid('loadData', state.allRows);
                        }
                    });
                },
                getAllRows: function(jq){
                    return jq.data('datagrid').allRows;
                }
            })
        })(jQuery);

        function getData(){
            var rows = [];
            for(var i=1; i<=10; i++){
                rows.push({

                    code: '10695',
                    supcode:'9879',
                    auditDept:'2016-2-27',
                    accessType:'中瑞国际',
                    recdept:'72638712',
                    guestDept: '赵周马', 
                    appdate: '部门经理',
                    procheck:'中石油沈阳分公司',
                    del:'<a class="easyui-linkbutton" data-options="selected:true">删除</a>'
                   
                   
                });
            }
            return rows;
        }
        
        $(function(){
            $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
        });        
    </script>
</body> 
</body>
</html>