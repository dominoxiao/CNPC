<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商查看投诉详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/suppliers_basic_info/complains_info.css">
    
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>

  </head>
  
<body>
    <div class="container">
        <div class="content">
            <form id="complain-submit-form">
                <div class="column"><span class="current">投诉单详情</span></div>
                <table class="kv-table" style="width: 900px; margin:0 auto;height:100%;">
                    <tbody>
                        <tr>
                            <td class="kv-label">投诉标题</td>
                            <td class="kv-content" colspan="3">${complainDetail.title}</td>
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
                            <td class="kv-content" colspan="3"><a href="<%=basePath%>provider/complain/downfile.do?acno=${complainDetail.acno}">投诉相关附件下载</a></td>
                        </tr>
                    </tbody>
                </table>
                <div class="column"><span class="current">投诉调查结果</span></div>
                <table class="kv-table" style="width: 900px; margin:0 auto;">
                    <tbody>
                        <tr>
                            <td class="kv-label">处理状态</td>
                            <td class="kv-content">${complainDetail.complainDeal==null?'待处理':complainDetail.complainDeal.astate}</td>
                            <td class="kv-label">投诉调查报告</td>
                            <td class="kv-content">${complainDetail.complainDeal==null?'暂无':'<a href="javascript:;">投诉调查报告</a>'}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理人</td>
                            <td class="kv-content">${complainDetail.complainDeal==null?'暂无':complainDetail.complainDeal.person}</td>
                            <td class="kv-label">处理时间</td>
                            <td class="kv-content">${complainDetail.complainDeal==null?'暂无':complainDetail.complainDeal.adate}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理意见</td>
                            <td class="kv-content" colspan="3" style="height: 200px;">
                      			 ${complainDetail.complainDeal==null?'暂无':complainDetail.complainDeal.ainfo}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 60px; text-align: right;">
                                <a href="#" class="easyui-linkbutton" data-options="selected:true">打印</a>
                                <a href="<%=basePath%>provider/complain/index.do" class="easyui-linkbutton">返回</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>
</html>
