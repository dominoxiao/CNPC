<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提交冻结信息</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link href="./css/base.css" rel="stylesheet">
    <link href="./css/easyui.css" rel="stylesheet">
    <link href="./css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
    <link href="./css/icon.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/suppliers_improve/basic_info.css">
    <script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="./script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="./script/suppliers_dynamic/jquery.1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/suppliers_dyn_manage/jquery-ui.css" />
    <script type="text/javascript" src="./script/suppliers_dynamic/jquery-ui.min.js"></script>
    <script type="text/javascript" src="./script/suppliers_dynamic/jquery.multiselect.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/suppliers_dyn_manage/jquery.multiselect.css" />

  </head>
  
  <body>
    <div class="container">
        <div class="content">
            <div class="easyui-tabs1" style="width: 100%;">
                <div title="基本信息" data-options="closable:false" class="basic-info">
                    <div class="column">
                        <span class="current">提交冻结信息</span>
                    </div>
                    <table class="kv-table">
                        <tbody>
                            <tr>
                                <td class="kv-label">供应商编号</td>
                                <td class="kv-content">2816040820001</td>
                                <td class="kv-label">供应商名称</td>
                                <td class="kv-content">南京天泽星网股份有限公司</td>
                                <td class="kv-label">供应商状态</td>
                                <td class="kv-content">正常</td>
                            </tr>
                            <tr>
                                <td class="kv-label">冻结区域</td>
                                <td class="kv-content">
                                    <select name="company" id="company">
                                        <option value="华北公司" selected="selected">华北公司</option>
                                        <option value="西南公司">西南公司</option>
                                    </select>
                                </td>
                                <td class="kv-label">供应商类型</td>
                                <td class="kv-content">一级物资供应商</td>
                                <td class="kv-label">供应商等级</td>
                                <td class="kv-content">A</td>
                            </tr>
                            <tr>
                                <td class="kv-label">申请单位</td>
                                <td class="kv-content">总部专业工作组</td>
                                <td class="kv-label">申请人</td>
                                <td class="kv-content">张三</td>
                                <td class="kv-label">申请时间</td>
                                <td class="kv-content">2016-10-15</td>
                            </tr>
                            <tr>
                                <td class="kv-label">冻结原因</td>
                                <td class="kv-content" style="height: 150px;" colspan="8">主动申请</td>
                            </tr>
                            <tr>
                                <td class="kv-label">备注</td>
                                <td class="kv-content" colspan="8">
                                    <textarea rows="6" cols="100"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" style="text-align: center; height: 50px">
                                    <!-- colspan 单元格合并 --><a href="<%=basePath%>admin/profess_frozen_submit.do" class="easyui-linkbutton" data-options="selected:true">提&nbsp;&nbsp;交</a>
                                    <a href="<%=basePath%>admin/profess_frozen_submit.do" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
