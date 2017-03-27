<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
   <title>战略供应商管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>    
  </head>
  
  <body>
      <div class="container">
      <table id="dg" style="width:100%;height:554px"  title="《中国石油天然气集团公司战略供应商确认表》" data-options="
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
            		<th field="ck" checkbox="true"></th>
                    <th field="code" width="12%">申请编号</th>
                    <th field="scode" width="12%">供应商编号</th>
                    <th field="sname" width="12%">供应商名称</th>
                    <th field="wcode" width="12%">产品编号</th>
                    <th field="judge" width="12%">是否战略物资</th>
                    <th field="result" width="11%">最后一次考评结果</th>
                    <th field="date" width="11%">申请日期</th>
                    <th field="sstate" width="12%">审核状态</th>
                </tr>
            </thead>
        </table>
     <div id="tb" style="padding:0 30px;">
      <table>
	      <tr>
	      <td>专业工作组名</td>
	      <td><input type="text" name="suppname"></td>
	      <td>申请人</td>
	      <td><input type="text" name="suppname"></td>
	      <td width="100"></td>
	      <td class="kv-label">是否是战略物资</td>
							<td class="kv-content">
								<select name="category">
									<option value="3">请选择..</option>
									<option value="0">是</option>
									<option value="1">否</option>
									<option value="2">全部</option>
								</select>
							</td>
   				 <td class="kv-label">考评结果</td>
							<td class="kv-content">
								<select name="category">
									<option value="3">请选择等级</option>
									<option value="0">A</option>
									<option value="1">B</option>
									<option value="2">C</option>
								</select>
				</td>
				<td>
           			<a href="#" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true">查询</a>
               </td>
	      </tr>
      </table>


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
            for(var i=1; i<=800; i++){
                rows.push({
                   	ck:'<input name="ck" type="checkbox" value=""/>',
                	code: '10695',
                    scode: '10086',
                    sname:'大庆石油',
                    wcode: '10086',
                    judge: '是',
                    result:'A',
                    date:'2016-10-02',
                    sstate:'评审中'
                });
            }
            return rows;
        }
        
        $(function(){
            $('#dg').datagrid({data:getData()}).datagrid('clientPaging');
        }); 
    </script>
     	<center>
		
 							<tr>
                                <td colspan="8" style="text-align: center; height: 50px">
                                    <!-- colspan 单元格合并 --><a href="<%=basePath%>admin/progroup/supApply/sub.do" method="GET" class="easyui-linkbutton" data-options="selected:true">提&nbsp;&nbsp;交</a> <a href="" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
                                </td>
                            </tr>
		</center>
</body>
</html>
