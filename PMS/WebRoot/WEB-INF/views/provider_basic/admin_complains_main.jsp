<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商投诉管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商投诉管理">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/complains_info.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/common.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_complains_info.js"></script>

  </head>
  
<body>
    <div id="modify-container" class="container">
        <div id="procComplainTabs" class="easyui-tabs1" data-options="tabPosition:'top'" style="height:600px;padding:10px" fit="true">
            <div title="供应商投诉申请处理" style="padding:10px;">
                <table id="complains_list_dg" style="width:100%;height:100%;"></table>
                <div id="complains_list_tb" style="padding:0 10px;">
                    <form id="search-form">
                        <table>
                            <tr>
                                <th>投诉编号:</th>
                                <th>
                                    <input class="easyui-textbox" type="text" name="acno" style="width:180px;height:35px;line-height:35px;" />
                                </th>
                                <th>供应商编号:</th>
                                <th>
                                    <input class="easyui-textbox" type="text" name="pno" style="width:180px;height:35px;line-height:35px;" />
                                </th>
                                <th>处理状态:</th>
                                <th>
                                    <select id="complaintStatus" class="easyui-combobox" name="state" style="width:180px;height:35px;line-height:35px;">
                                        <option value="">--请选择--</option>
                                        <option value="待处理">待处理</option>
                                        <option value="处理中">处理中</option>
                                        <option value="关闭">关闭</option>
                                    </select>
                                </th>
                            </tr>
                            <tr>
                                <th>投诉日期:</th>
                                <th>
                                    <input id="startDate" name="startDate" type="text" class="easyui-datebox" style="width:180px;height:35px;line-height:35px;">
                                </th>
                                <th>到</th>
                                <th>
                                    <input id="EndDate" name="EndDate" type="text" class="easyui-datebox" style="width:180px;height:35px;line-height:35px;">
                                </th>
                                <th colspan="4">
                                    <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onclick="queryInfo()">查询</a>
                                    <a href="javascript:void(0);" class="easyui-linkbutton" onclick="doReset()">重置</a>
                                </th>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
