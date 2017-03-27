<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>投诉处理部门处理投诉单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="投诉处理部门处理投诉单">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/complains_info.css">
	
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_complains_info.js"></script>

  </head>
  
<body>
    <div class="container">
        <div class="content">
            <form id="complain-submit-form" action="<%=basePath%>admin/worker/complain/saveReport.do?acno=${complainDetail.acno}" method="post">
                <div class="column"><span class="current">投诉调查结果</span></div>
                <table class="kv-table" style="width: 900px; margin:0 auto;">
                    <tbody>
                        <tr>
                            <td class="kv-label" colspan="4" style="font-size: 14px;">投诉单详情</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉标题</td>
                            <td class="kv-content">${complainDetail.title}</td>
                            <td class="kv-label">投诉编号</td>
                            <td class="kv-content" name="acno">${complainDetail.acno}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">供应商编码</td>
                            <td class="kv-content">${complainDetail.pno}</td>
                            <td class="kv-label">投诉日期</td>
                            <td class="kv-content">${complainDetail.adate}</td>

                        </tr>
                        <tr>
                            <td class="kv-label">提交人</td>
                            <td class="kv-content">${complainDetail.name}</td>
                            <td class="kv-label">投诉单位</td>
                            <td class="kv-content">${complainDetail.unit}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉人Email</td>
                            <td class="kv-content">${complainDetail.email}</input>
                            </td>
                            <td class="kv-label">投诉部门</td>
                            <td class="kv-content">${complainDetail.org}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">被投诉人</td>
                            <td class="kv-content">${complainDetail.named}</td>
                            <td class="kv-label">被投诉单位</td>
                            <td class="kv-content">${complainDetail.united}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">被投诉部门</td>
                            <td class="kv-content">${complainDetail.orged}</td>
                            <td class="kv-label">投诉理由</td>
                            <td class="kv-content">${complainDetail.reason}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉说明</td>
                            <td class="kv-content" colspan="3" style="height: 200px;">${complainDetail.explain}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">相关附件</td>
                            <td class="kv-content" colspan="3"><a href="javascript:;"><a href="<%=basePath%>complain/downfile.do?acno=${complainDetail.acno}">投诉相关附件下载</a></a></td>
                        </tr>
                        <tr>
                            <td class="kv-label" colspan="4" style="font-size: 14px;">投诉处理</td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理人员</td>
                            <td class="kv-content">
                                <input class="easyui-textbox" type="text" name="person" data-options="required:true" style="width:180px;height:30px;"></input>
                            </td>
                            <td class="kv-label">处理机构</td>
                            <td class="kv-content">
                                <input class="easyui-textbox" type="text" name="aorg" data-options="required:true" style="width:180px;height:30px;"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理时间</td>
                            <td class="kv-content">
                                <input class="easyui-datebox" type="text" id="apprDate" name="adate" style="width:180px;height:30px;" readonly></input>
                            </td>
                            <td class="kv-label">处理状态</td>
                            <td class="kv-content">
                                <select class="easyui-combobox" name="astate" style="width:180px;height:30px;line-height:35px;">
                                    <option value="">--请选择--</option>
                                    <option value="处理中">处理中</option>
                                    <option value="关闭">关闭</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理意见</td>
                            <td class="kv-content" colspan="3">
                                <input class="easyui-textbox" type="text" name="ainfo" data-options="multiline:true" style="width:500px;height:200px"></input>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 60px; text-align: right;">
                                <a href="javascript:;" class="easyui-linkbutton" onClick="submitReport()">提交</a>
                                <a href="<%=basePath%>complain/adminIndex.do" class="easyui-linkbutton">返回</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
