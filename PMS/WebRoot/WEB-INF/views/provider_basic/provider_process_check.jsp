<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商查看申请进度</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商查看申请进度">
	
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
    <div id="modify-container" class="container">
        <div id="supModifyInfo" class="easyui-tabs1" data-options="tabPosition:'top'" style="height:100%; padding:10px" fit="true">
            <div id="basicInfo" title="信息变更申请状态" style="padding:10px;">
                <!--变更信息表单Start-->
                <table id="check_process_dg" style="width:100%;height:100%;" title="变更申请列表" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:false,
                pageSize:10">
                    <thead>
                        <tr>
                            <th field="applNum" width="240">变更申请编号</th>
                            <th field="applDate" width="240">申请变更时间</th>
                            <th field="applType" width="240">信息变更类型</th>
                            <th field="checkStatus" width="120">审批状态</th>
                            <th field="checkResult" width="120">审批结果</th>
                            <th field="sycnMDM" width="120">是否同步MDM</th>
                            <th field="opt" width="120">操作</th>
                        </tr>
                    </thead>
                </table>
            </div>
            <!--变更信息表单End-->
            <div id="otherInfo" title="其他申请状态" style="padding:10px;">
                <div class="content" style="padding:15px 20px;">
                </div>
                <!--变更信息表单End-->
            </div>
        </div>
    </div>
    <div id="modifyApplyStatus" class="easyui-dialog" title="变更申请状态查看" style="width:800px;height:400px;padding:10px">
        <form>
            <table class="kv-table">
                <tbody>
                    <tr>
                        <td class="kv-label">审批人</td>
                        <td class="kv-content"></td>
                        <td class="kv-label">审批部门</td>
                        <td class="kv-content"></td>
                    </tr>
                    <tr>
                        <td class="kv-label">审批状态</td>
                        <td class="kv-content"></td>
                        <td class="kv-label">审批结果</td>
                        <td class="kv-content"></td>
                    </tr>
                    <tr>
                        <td class="kv-label">接收时间</td>
                        <td class="kv-content"></td>
                        <td class="kv-label">处理时间</td>
                        <td class="kv-content"></td>
                    </tr>
                    <tr>
                        <td class="kv-label">审批意见</td>
                        <td class="kv-content" colspan="3">
                            <input class="easyui-textbox" type="text" name="complainDes" data-options="multiline:true" style="width:500px;height:200px" readonly="true"></input>
                        </td>
                    </tr>
                    <tr>
                        <td class="kv-label">相关附件</td>
                        <td class="kv-content" colspan="3"><a href="#">附件.doc</a></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
    <!--tabs end-->
    </div>
</body>
</html>
