<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta charset="UTF-8">
<title>工作组选择改进供应商</title>
    <link rel="stylesheet" href="<%=basePath%>css/base.css" >
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/basic_info.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_improve/promote.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    
</head>
<body>
    <div class="container" style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
       <table id="dg" style="width:100%;height:100%;display:none" title="选择供应商" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:true,
                selectOnCheck:true,
                collapsible:false,
                toolbar:'#tb',
                pageSize:10">
            <thead>
                <tr>
                    <th field="ck" checkbox="true"></th>
                    <th field="suppliercode" width="110">供应商编码</th>
                    <th field="suppliername" width="226">供应商名称</th>
                    <th field="productname" width="112">物资编码</th>
                    <th field="productcode" width="170">物资名称</th>
                    <th field="level" width="130">供应商等级</th>
                    <th field="approve" width="50">审批轮次</th>
                    <th field="details" width="136" formatter="operation">详情</th>
                </tr>
            </thead>
        </table>
      <div id="tb" style="padding:0 30px;display:none">
        <div class="conditions">
            <input type="radio" name="supquery" value="supcode"><span class="con-span">供应商编码</span>
            <input type="radio" name="supquery" value="supname"><span class="con-span">供应商名称</span>
            <input class="easyui-textbox" type="text" name="name" style="width:166px;height:35px;line-height:35px;"></input>
            <span class="con-span">供应商分级</span><select class="easyui-combobox" type="text" name="code" panelHeight="80" style="width:120px;height:35px;line-height:35px;">
            <option selected>请选择</option>
            <option>C</option>
            <option>不及格</option></select>
            <a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
        </div>
        <div class="conditions">
            <input type="radio" name="proquery" value="procode"><span class="con-span">物资编码</span>
            <input type="radio" name="proquery" value="proname"><span class="con-span">物资名称</span>
            <input class="easyui-textbox" name="language" style="height:35px;width:166px;"></input>
            <span class="con-span">考评时间</span><input class="easyui-datebox" id="makedate" style="width:120px;height:35px;line-height:35px;">
        </div>
        <div class="opt-buttons">
            <a href="<%=basePath%>progroup/improve/adm_edit_plan.do" class="easyui-linkbutton" data-options="selected:true">填写改进需求</a>
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
           for(var i=1; i<=20; i++){
                rows.push({
                	suppliercode: '10695',
                    suppliername: '南京天泽星网股份有限公司',
                    productcode: '正式',
                    productname: '光纤通信设备配件',
                    level: 'C',
                  
                });
            }
            return rows;
        }
        
        $(function(){
            $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
            $('#dg').show();
            $('#tb').show();
           
        });    

        $(function () {
            $('#makedate').datebox({
                onShowPanel: function () {//显示日趋选择对象后再触发弹出月份层的事件，初始化时没有生成月份层
                    span.trigger('click'); //触发click事件弹出月份层
                    if (!tds) setTimeout(function () {//延时触发获取月份对象，因为上面的事件触发和对象生成有时间间隔
                        tds = p.find('div.calendar-menu-month-inner td');
                        tds.click(function (e) {
                            e.stopPropagation(); //禁止冒泡执行easyui给月份绑定的事件
                            var year = /\d{4}/.exec(span.html())[0]//得到年份
                            , month = parseInt($(this).attr('abbr'), 10); //月份，这里不需要+1
                            $('#makedate').datebox('hidePanel')//隐藏日期对象
                            .datebox('setValue', year + '-' + month); //设置日期的值
                        });
                    }, 0);
                    yearIpt.unbind();//解绑年份输入框中任何事件
                },
                parser: function (s) {
                    if (!s) return new Date();
                    var arr = s.split('-');
                    return new Date(parseInt(arr[0], 10), parseInt(arr[1], 10) - 1, 1);
                },
                formatter: function (d) {
                var a = parseInt(d.getMonth())<parseInt('9')?'0'+parseInt(d.getMonth()+ 1):d.getMonth() + 1;
                return d.getFullYear() + '-' +a; }
            });
            var p = $('#makedate').datebox('panel'), //日期选择对象
                tds = false, //日期选择对象中月份
                yearIpt = p.find('input.calendar-menu-year'),//年份输入框
                span = p.find('span.calendar-text'); //显示月份层的触发控件
            console.log(yearIpt)
           
        });
        $(".more").click(function(){
            $(this).closest(".conditions").siblings().toggleClass("hide");
        });
        function operation(value, row, index)
        {
          return "<a href='<%=basePath%>admin/progroup/proaudit/resultSearch.do'>详情</a>";
        }
    </script>
</body> 
</html>

