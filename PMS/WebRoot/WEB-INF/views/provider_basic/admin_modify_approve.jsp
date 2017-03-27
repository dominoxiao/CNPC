<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商信息变更审批列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商信息变更审批">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/modify_info.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/common.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_modify.js"></script>

  </head>
  
<body>
    <div id="modify-container" class="container">
        <div id="modifyApprTabs" class="easyui-tabs1" data-options="tabPosition:'top'" style="height:600px;padding:10px" fit="true">
            <div title="基本信息变更审批" style="padding:10px;">
                <table id="deal_modify_apply_dg" style="width:100%;height:100%;" title="供应商变更申请审批">
                </table>
                <div id="deal_modify_apply_tb" style="padding:0 10px;">
                    <form id="search-form">
                        <table>
                            <tr>
                                <th>供应商编码:</th>
                                <th>
                                    <input class="easyui-textbox" type="text" name="pno" style="width:200px;height:35px;line-height:35px;" />
                                </th>
                                <th></th>
                            </tr>
                            <tr>
                                <th>申请提交时间:</th>
                                <th colspan="3">
                                    <input id="startDate" name="startDate" type="text" class="easyui-datebox" style="width:200px;height:35px;line-height:35px;">到&nbsp;&nbsp;
                                    <input id="EndDate" name="EndDate" type="text" class="easyui-datebox" style="width:200px;height:35px;line-height:35px;">
                                </th>
                                <td colspan="2" style="text-align: right">
                                    <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onclick="queryInfo()">查询</a>
                                    <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onclick="doReset()">重置</a>
                                    <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onclick="openDialog()">批量审批</a>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <!--批量审批窗口-->
	            <div id="dlg" class="easyui-dialog" title="批量审批窗口" style="width:800px;height:445px;padding:10px">
	                <form style="padding-top: 10px">
	                    <table class="kv-table">
	                        <tbody>
	                            <tr>
	                                <td class="kv-label">审批结果</td>
	                                <td class="kv-content" colspan="3">
	                                    <select name="supptype" class="inputwidth">
	                                        <option value="1">通过</option>
	                                        <option value="0">拒绝</option>
	                                    </select>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="kv-label">审批意见</td>
	                                <td class="kv-content" colspan="3">
	                                    <input class="easyui-textbox" type="text" name="complainDes" data-options="multiline:true" style="width:500px;height:200px"></input>
	                                </td>
	                            </tr>
	                            <tr>
	                                <td class="kv-label">添加附件</td>
	                                <td class="kv-content" colspan="2">
	                                    <input class="easyui-filebox" type="text" name="attachFile" style="width:500px"></input>
	                                </td>
	                                <td class="kv-content" style="text-align: right">
	                                    <a href="javascript:void(0);" class="easyui-linkbutton">确定</a>
	                                </td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </form>
	            </div>
            </div>
            <div title="产品新增审批" style="padding:10px">
                <iframe class="page-iframe" src="<%=basePath%>GoodsChange/sup_pro_check.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto">
                </iframe>
            </div>
            <div title="产品减少审批" style="padding:10px">
                <iframe class="page-iframe" src="<%=basePath%>GoodsChange/adminDeleteCheck.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto">
                </iframe>
            </div>
        </div>
    </div>
</body>
</html>
