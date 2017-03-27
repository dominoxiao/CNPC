<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息变更申请结果详情查看</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="信息变更申请结果详情查看">
	
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_basic_info/check_process.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/sup_check_process.js"></script>

  </head>
  
<body>
    <div class="container">
        <div class="content">
            <table id="sup_apply_list_dg" style="width:100%;height:200px" title="信息变更申请审批列表" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:true,
                pageSize:10">
                <thead>
                    <tr>
                        <th field="applNum" width="240">变更申请号</th>
                        <th field="checker" width="100">审批人员</th>
                        <th field="checkDept" width="100">审批机构</th>
                        <th field="checkTime" width="150">审批时间</th>
                        <th field="checkResult" width="100">审批结果</th>
                        <th field="checkAdvice" width="100">审批意见</th>
                        <th field="checkStatus" width="120">审批状态</th>
                    </tr>
                </thead>
            </table>
            <form style="padding-top: 30px">
                <table class="kv-table">
                    <tbody>
                        <tr>
                            <td class="kv-label">变更申请编号</td>
                            <td class="kv-content">
                                <input id="applNum" type="text" style="width:200px;height:20px;" readonly="true"></input>
                            </td>
                            <td class="kv-label">审批时间</td>
                            <td class="kv-content">
                                <input id="checkDate" type="text" name="checkDate" style="width:200px;height:20px;" readonly="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">供应商编号</td>
                            <td class="kv-content">
                                <input id="supNum" type="text" data-options="readonly:true" style="width:200px;height:20px;"></input>
                            </td>
                            <td class="kv-label">供应商名称</td>
                            <td class="kv-content">
                                <input id="supName" type="text" data-options="readonly:true" style="width:200px;height:20px;"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批机构</td>
                            <td class="kv-content">
                                <input id="checkOrg" type="text" style="width:200px;height:20px;" readonly="true"></input>
                            </td>
                            <td class="kv-label">审批人员</td>
                            <td class="kv-content">
                                <input id="checker" type="text" style="width:200px;height:20px;" readonly="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批结果</td>
                            <td class="kv-content" colspan="3">
                                <input id="checkResult" type="text" style="width:200px;height:25px;" readonly="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批意见</td>
                            <td class="kv-content" colspan="3">
                                <input id="checkAdvice" type="text" name="complainDes" data-options="multiline:true" style="width:500px;height:200px" readonly="true"></input>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
