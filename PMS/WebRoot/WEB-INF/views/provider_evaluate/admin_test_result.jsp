<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>查看考评结果及分级</title> 

<link href="<%=basePath%>/css/base.css" rel="stylesheet">
<link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/icon.css">
<link rel="stylesheet" href="<%=basePath%>/css/supplier_evaluate/providers1.css">
</head> 
<body>
    <div class="container">

       <table id="dg" style="width:100%;height:529px"  data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:false,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:true,
                toolbar:'#tb',
                pageSize:10">
            <thead>
                <tr>
                    <th data-options="field:'ck',checkbox:true">全选</th>
                    <th field="code" width="15">考试安排号</th>
                    <th field="planNum" width="15">方案申请编号</th>
                    <th field="supnum" width="15">供应商编号</th>
                    <th field="name" width="25">供应商名称</th>
                    <th field="level" width="10">总分</th>
                    <th field="grade" width="10">评级结果</th>
                    <th field="status" width="15">考评结果评审状态</th>
                    <th field="year" width="10">考评年度</th>        
                </tr>
            </thead>
        </table>
      <div id="tb" style="padding:0 30px;">
        <div class="conditions">
            <span >考评安排号: </span><input class="easyui-textbox" type="text" name="code" style="width:166px;height:35px;line-height:35px;"></input>
            <span >供应商编号: </span><input class="easyui-textbox" type="text" name="name" style="width:166px;height:35px;line-height:35px;"></input>
            <a  class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查看</a>
           <!--  -->
            <a href="admin_set_param.html" class="easyui-linkbutton" iconCls="icon-add">设置评级参数</a>
        </div>
        <div class="opt-buttons">
            <a  class="easyui-linkbutton" data-options="selected:true">查看</a>
            <a  class="easyui-linkbutton">发布</a>
            <a  class="easyui-linkbutton">取消发布</a>
            <a  class="easyui-linkbutton">发考评催函</a>
            <a  class="easyui-linkbutton">导出</a>
        </div>
      </div>

    </div>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>

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
            for(var i=1; i<=80; i++){
                rows.push({
                 

                    code: '16S13710695',
                    planNum:'16S13710695',
                    supnum:'16S13710695',
                    name: '中国南洋石油采集有限公司',
                    level: '95',
                    grade: 'A级',
                    status:'待审批',
                    timestart:'2017-2-14',
                    timeend:'2017-2-14',
                    year:'2017年',
                    adjust:'<a href="admin_adjust_score.html" class="easyui-linkbutton" data-options="selected:true">调整</a>'
                });
            }
            return rows;
        }
        
        $(function(){
            $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
        });    


        $(".more").click(function(){
            $(this).closest(".conditions").siblings().toggleClass("hide");
        });
    </script>
</body> 
</html>
