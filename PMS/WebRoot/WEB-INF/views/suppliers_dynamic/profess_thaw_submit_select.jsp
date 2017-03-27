<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>解冻信息</title>
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

  </head>
  
  <body>
    <div class="container">
        <div class="content">
            <div class="easyui-tabs1" style="width: 100%;">
                <div title="基本信息" data-options="closable:false" class="basic-info">
                    <div class="column">
                        <span class="current">解冻信息</span>
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
                                <td class="kv-label">供应商等级</td>
                                <td class="kv-content">A</td>
                                <td class="kv-label">供应商类型</td>
                                <td class="kv-content">一级物资供应商</td>
                                <td class="kv-label">申请时间</td>
                                <td class="kv-content">2016-10-15</td>
                            </tr>
                            <tr>
                                <td class="kv-label">解冻原因</td>
                                <td class="kv-content" style="height: 300px;" colspan="8">主动申请</td>
                            </tr>
                            <tr>
                                <td colspan="8" style="text-align: center; height: 50px">
                                    <!-- colspan 单元格合并 --><a href="<%=basePath%>admin/profess_thaw_submit.do" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
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
