<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商自助服务投诉管理界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>/css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>/css/suppliers_basic_info/complains_info.css">
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/suppliers_basic_info/sup_complains_info.js"></script>

  </head>
  
<body class="easyui-layout" style="margin:10px">
    <table id="complains_info" style="width:100%;height:100%;padding:20px" title="投诉操作">
    </table>
    <div id="tb" style="padding:0 30px;">
        <form id="search-form">
            <table>
                <tr>
                    <th>投诉标题:</th>
                    <th>
                        <input id="complainTitle" class="easyui-textbox" type="text" name="complainTitle" style="width:180px;height:35px;line-height:35px;" />
                    </th>
                    <th>处理状态:</th>
                    <th>
                        <select id="complainStatus" class="easyui-combobox" name="complainStatus" style="width:180px;height:35px;line-height:35px;">
                            <option value="">--全部--</option>
                            <option value="待处理">待处理</option>
                            <option value="处理中">处理中</option>
                            <option value="已处理">关闭</option>
                        </select>
                    </th>
                    <th></th>
                </tr>
                <tr>
                    <th>投诉时间:</th>
                    <th>
                        <input id="startDate" name="startDate" type="text" class="easyui-datebox" style="width:180px;height:35px;line-height:35px;">
                    </th>
                    <th>到</th>
                    <th>
                        <input id="EndDate" name="EndDate" type="text" class="easyui-datebox" style="width:180px;height:35px;line-height:35px;">
                    </th>
                    <th text-align="right">
                        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-search" data-options="selected:true" onclick="queryInfo()">查询</a>
                        <a href="javascript:void(0);" class="easyui-linkbutton" iconCls="icon-reload" onclick="doReset()">重置</a>
                        <a href="<%=basePath%>provider/complain/add.do" class="easyui-linkbutton" iconCls="icon-add">创建</a>
                    </th>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
