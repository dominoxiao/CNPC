<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商主数据管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商主数据管理">
	
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_basic_info/main_data.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_main_data.js"></script>

  </head>
  
<body>
    <div style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="main_data_dg" style="width:100%;height:100%;display:none" title="供应商主数据管理" data-options="
                rownumbers:true,
                singleSelect:false,
                autoRowHeight:true,
                pagination:true,
                fitColumns:true,
                striped:true,
                checkOnSelect:false,
                selectOnCheck:false,
                collapsible:false,
                toolbar:'#main_data_tb',
                pageSize:10">
            <thead>
                <tr>
                    <th data-options="field:'ck',checkbox:true">选择</th>
                    <th field="suppliersName" width="160">供应商名称</th>
                    <th field="suppliersCode" width="160">供应商编码</th>
                    <th field="accessWay" width="100">准入方式</th>
                    <th field="accessDate" width="100">准入时间</th>
                    <th field="licenseNum" width="160">营业执照号码</th>
                    <th field="edit" width="60">查询</th>
                </tr>
            </thead>
        </table>
        <div id="main_data_tb" style="padding:0 10px;display:none">
            <form id="search-form">
                <table>
                    <tr>
                        <th>物资分类名称</th>
                        <th>
                            <input class="easyui-textbox" type="text" name="goodName" style="width:200px;height:35px;line-height:35px;" />
                        </th>
                        <th>物资分类编码</th>
                        <th>
                            <input class="easyui-textbox" type="text" name="goodCode" style="width:200px;height:35px;line-height:35px;" />
                        </th>
                    </tr>
                    <tr>
                        <th>供应商名称</th>
                        <th>
                            <input class="easyui-textbox" type="text" name="supName" style="width:200px;height:35px;line-height:35px;" />
                        </th>
                        <th>供应商编码</th>
                        <th>
                            <input class="easyui-textbox" type="text" name="supCode" style="width:200px;height:35px;line-height:35px;" />
                        </th>
                    </tr>
                    <tr>
                        <th>关键字</th>
                        <th>
                            <input class="easyui-textbox" type="text" name="keyWord" style="width:200px;height:35px;line-height:35px;" />
                        </th>
                        <th>准入方式</th>
                        <th>
                            <select id="accessWay" class="easyui-combobox" name="accessWay" style="width:200px;height:35px;line-height:35px;">
                                <option value="">--请选择--</option>
                                <option value="remain_deal">自荐</option>
                                <option value="excute_deal">推荐</option>
                                <option value="close_deal">特邀</option>
                            </select>
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onclick="queryInfo()">查询</a>
                            <a href="javascript:void(0);" class="easyui-linkbutton" onclick="doReset()">重置</a>
                        </th>
                        <th colspan="2">
                            <a name="applyMainData" href="javascript:void(0);" class="easyui-linkbutton">申请主数据</a>
                            <a name="extendMainData" href="javascript:void(0);" class="easyui-linkbutton">扩展主数据</a>
                        </th>
                    </tr>
                </table>
            </form>
        </div>
        <div style="margin:10px 30px;">
        </div>
    </div>
</body>

</html>
