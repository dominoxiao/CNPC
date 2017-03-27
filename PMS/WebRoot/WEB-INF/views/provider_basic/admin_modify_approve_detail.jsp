<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>信息变更审批详情页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="信息变更审批详情">
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_basic_info/modify_info.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.form.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_modify.js"></script>

  </head>
  
<body>
    <div class="container">
        <div class="content">
            <form id="modifyApplyAuditForm" style="padding-top: 30px">
                <table class="kv-table">
                    <tbody>
                        <tr>
                            <td class="kv-label">变更申请编号</td>
                            <td class="kv-content">
                                <input name="applyno" class="easyui-textbox" type="text" value="${applyno}" data-options="readonly:true" style="width:200px;height:25px;"></input>
                            </td>
                            <td class="kv-label">审批时间</td>
                            <td class="kv-content">
                                <input id="adate" class="easyui-datebox" type="text"  style="width:200px;height:25px;" disabled></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">供应商编号</td>
                            <td class="kv-content">
                                <input class="easyui-textbox" type="text" value="${pno}" data-options="readonly:true" style="width:200px;height:25px;"></input>
                            </td>
                            <td class="kv-label">供应商名称</td>
                            <td class="kv-content">
                                <input class="easyui-textbox" type="text" value="${pname}" data-options="readonly:true" style="width:200px;height:25px;"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批机构</td>
                            <td class="kv-content">
                                <input name="aorg" class="easyui-textbox" type="text" data-options="required:true" style="width:200px;height:25px;"></input>
                            </td>
                            <td class="kv-label">审批人员</td>
                            <td class="kv-content">
                                <input name="person" class="easyui-textbox" type="text" value="${worker.empno}" data-options="required:true" style="width:200px;height:25px;" readonly></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批结果</td>
                            <td class="kv-content" colspan="3">
                                <select name="isagree" class="easyui-combobox" data-options="required:true" style="width:200px;height:25px;line-height:25px;">
                                    <option value="1">通过</option>
                                    <option value="0">拒绝</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批意见</td>
                            <td class="kv-content" colspan="3">
                                <input name="ainfo" class="easyui-textbox" type="text" data-options="multiline:true" style="width:500px;height:200px"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-content" style="text-align: center" colspan="6">
                                <a href="javascript:void(0);" class="easyui-linkbutton" onclick="submitApplyAudit()">提交</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>

</html>
