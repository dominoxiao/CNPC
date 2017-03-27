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
    <title>考评人员打分页面</title>
    <link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>/css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>/css/suppliers_basic_info/complains_info.css">
</head>

<body>
    <div class="container" style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="complains_info" style="width:100%;height:100%;display:none" data-options="
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
                    <th field="code" width="11">供应商编号</th>
                    <th field="cdate" width="11">考评安排号</th>
                    <th field="org" width="9">考评时间</th>
                    <th field="deadline1" width="11">供应商名称</th>
                    <th field="deadline2" width="11">考评人员编号</th>
                    <th field="deadline3" width="11">考评人员名称</th>
                    <th field="plan" width="11">分数</th>
                    <th field="status" width="11">考评状态</th>
                    <th field="check" width="10">备注</th>
                </tr>
            </thead>
        </table>
        <div id="tb" style="padding:0 30px;display:none">
            <form id="search-form">
                <table>
                    <tr>
                            <th>考评安排号:</th>
                            <th>
                                <input class="easyui-textbox" type="text" name="complaintTitle" style="width:160px;height:35px;line-height:35px;" />
                            </th>
                            <th>考评状态:</th>
                            <th>
                                <select id="complaintStatus" class="easyui-combobox" name="complaintStatus" style="width:160px;height:35px;line-height:35px;">
                                    <option value="">--请选择--</option>
                                    <option value="remain_deal">待考评</option>
                                    <option value="excute_deal">已考评</option>
                                    <option value="close_deal">关闭</option>
                                </select>
                            </th>
                            <th text-align="right" colspan="4">
                                <a  class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true" onclick="queryInfo()">查询</a>
                                <a  class="easyui-linkbutton" iconCls="icon-reload" onclick="doReset()">重置</a>
                            </th>
                        </tr>
                        <tr>
                            <th>上传考评报告:</th>
                            <th><input class="easyui-filebox" name="uploadFiles" style="width:160px;height:30px"></input>
                            </th>
                            <th>填写考评问卷:</th>
                            <th><input class="easyui-filebox" name="uploadFiles" style="width:160px;height:30px"></input>
                            </th>
                             <th text-align="right">
                                 <a  class="easyui-linkbutton" data-options="selected:true">提交考评结果</a>
                            </th>
                            <th text-align="right" >
                                 <a class="easyui-linkbutton" data-options="selected:false">查看考评模板</a>
                            </th>
                        </tr>
                </table>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
    // 重置输入项
    function doReset() {
        $('#search-form').form('reset');
    }

    // 获取数据
    function getData() {
        var rows = [];
        for (var i = 1; i <= 20; i++) {
            rows.push({
                code: '1069500000000',
                cdate: '16S137000',
                org: '2017-2-14',
                deadline1: '沈阳机械制造厂',
                deadline2: '16S1370007',
                deadline3: '李刚',
                plan: '<input class="easyui-textbox"type="text"name="complaintTitle"style="width:125px;height:28px;line-height:28px;" />',
                status: '待考评',
                check: '---'
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
        $('#complains_info').datagrid({
            loadFilter: pagerFilter
        });
        // $('#complains_info').show();
        // $('#tb').show();
    });

    function queryInfo() {
        $('#complains_info').datagrid({
            loadFilter: pagerFilter
        }).datagrid('loadData', getData());
    }
    </script>
</body>

</html>
