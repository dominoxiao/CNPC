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
    <title>查看考核方案审批状态</title>
    <link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>/css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>/css/suppliers_basic_info/complains_info.css">
</head>

<body class="easyui-layout">
    <table id="complains_info" style="width:100%;height:100%;" data-options="
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
                <th field="suppliersCode" width="10">申请编号</th>
                <th field="suppliersName" width="15">申请机构</th>
                <th field="complainant" width="20">申请时间</th>
                <th field="complaintStatus" width="10">审批状态</th>
                <th field="complaintTitle" width="20">审批时间</th>
                <th field="complaintDate" width="15">审批机构</th>   
                <th field="complaintDep" width="30">审批意见</th>
            </tr>
        </thead>
    </table>
    <div id="tb" style="padding:0 30px;">
        <form id="search-form">
            <table>
                <tr>
                    <th>方案申请编号:</th>
                    <th>
                        <input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />
                    </th>
                    <th>申请机构:</th>
                    <th>
                        <input class="easyui-textbox" type="text" name="complaintTitle" style="width:100px;height:35px;line-height:35px;" />
                    </th>
                    <th>申请时间:</th>
                    <th>
                        <input id="startDate" name="startDate" type="text" class="easyui-datebox" style="width:100px;height:35px;line-height:35px;">
                    </th>
                    <th>审批状态:</th>
                    <th>
                        <select id="complaintStatus" class="easyui-combobox" name="complaintStatus" style="width:100px;height:35px;line-height:35px;">
                            <option value="">--请选择--</option>
                            <option value="remain_deal">待审批</option>
                            <option value="excute_deal">已审批</option>
                            <option value="close_deal">关闭</option>
                        </select>
                    </th>
                    <th text-align="right" colspan="4">
                        <a class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true" onclick="queryInfo()">查询</a>
                        <a class="easyui-linkbutton" iconCls="icon-reload" onclick="doReset()">重置</a>
                    </th>
                </tr>
            </table>
        </form>
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
        for (var i = 1; i <= 100; i++) {
            rows.push({
                suppliersCode: '16S137000',
                suppliersName: '中石油大庆分公司',
                complainant: '2017-2-14',
                complaintTitle: '2017-2-14',
                complaintDate: '中石油北京总公司',
                complaintDep: '无',
                complaintStatus: '通过审核',
                opt: '<a href="file:///D:/ETC/workspace/SupplierManageSystem/WebContent/suppliers_basic_info/sup_complains_info_detail.html" class="easyui-linkbutton">查看</a>'
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
    });

    function queryInfo() {
        $('#complains_info').datagrid({
            loadFilter: pagerFilter
        }).datagrid('loadData', getData());
    }
    </script>
</body>

</html>
