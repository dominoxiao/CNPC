<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商提交投诉</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商投诉录入">

	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/suppliers_basic_info/complains_info.css">
    
    <script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.form.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>/script/suppliers_basic_info/sup_complains_info.js"></script>
    
  </head>
  
<body>
    <div class="container">
        <div class="content">
            <form id="complain-submit-form" enctype="multipart/form-data">
                <table class="kv-table" style="width: 900px; margin:0 auto; ">
                    <tbody>
                        <tr>
                            <td class="kv-label">供应商编号</td>
                            <td class="kv-content" colspan="3">
                                <input id="pno" name="pno" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" readonly="true" value="${Provider}"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉日期</td>
                            <td class="kv-content">
                                <input id="adate" name="adate" class="easyui-datebox easyui-validatebox" type="text" style="width:300px;height:30px;" readonly></input>
                            </td>
                            <td class="kv-label">投诉标题</td>
                            <td class="kv-content">
                                <input id="title" name="title" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">摘要明细信息</td>
                            <td class="kv-content" colspan="3">
                                <input id="detail" name="detail" class="easyui-textbox easyui-validatebox" type="text" data-options="multiline:true" style="width:500px;height:100px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉单位</td>
                            <td class="kv-content">
                                <input id="unit" name="unit" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                            <td class="kv-label">投诉部门</td>
                            <td class="kv-content">
                                <input id="org" name="org" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉人姓名</td>
                            <td class="kv-content">
                                <input id="name" name="name" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                            <td class="kv-label">投诉人电话</td>
                            <td class="kv-content">
                                <input id="tel" name="tel" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉人Email</td>
                            <td class="kv-content">
                                <input id="email" name="email" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                            <td class="kv-label">被投诉单位</td>
                            <td class="kv-content">
                                <input id="united" name="united" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">被投诉部门</td>
                            <td class="kv-content">
                                <input id="orged" name="orged" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                            <td class="kv-label">被投诉人姓名</td>
                            <td class="kv-content">
                                <input id="named" name="named" class="easyui-textbox easyui-validatebox" type="text" style="width:300px;height:30px;" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉理由</td>
                            <td class="kv-content" colspan="3">
                                <input id="reason" name="reason" class="easyui-textbox easyui-validatebox" type="text" data-options="multiline:true" style="width:500px;height:200px" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉理由说明</td>
                            <td class="kv-content" colspan="3">
                                <input id="explain" name="explain" class="easyui-textbox easyui-validatebox" type="text" data-options="multiline:true" style="width:500px;height:200px" required="true"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">上传附件</td>
                            <td class="kv-content" colspan="3">
                                <input id="file" name="file" class="easyui-filebox" style="width:300px;height:30px"></input>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 60px; text-align: right;">
                                <a href="javascript:void(0);" class="easyui-linkbutton" data-options="selected:true" onClick="submitComplainApply()">提交</a>
                                <a href="javascript:void(0);" class="easyui-linkbutton" onclick="doReset()">重置</a>
                                <a href="<%=basePath%>complain/index.do" class="easyui-linkbutton">返回</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    
    <script type="text/javascript">
    $(function() {
        var today = new Date();
        $('#adate').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
    });

    function doReset() {
        $('#complain-submit-form').form('reset');
    }
    
    function submitComplain() {
		document.getElementById("complain-submit-form").submit();
	}
    
    </script>
</body>
</html>
