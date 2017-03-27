<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>供应商考评---专业工作组</title>
    <link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/icon.css">
    <link href="<%=basePath%>/css/supplier_evaluate/process.css" rel="stylesheet">
    <link href="<%=basePath%>/css/supplier_evaluate/umeditor.css" type="text/css" rel="stylesheet">
</head>

<body>
    <div id="easyui-tab" class="easyui-tabs1" style="width:100%height:100%;padding:10px;display:none;" fit="true">
        <div title="提交供应商考核方案" style="padding:10px">
        <form id="subProviderCheck" enctype="multipart/form-data" action="<%=basePath%>subProviderCheck.do" method="post">
                <table class="kv-table" style="width: 900px; margin:0 auto; ">
                    <tbody>
                        <tr>
                        <td class="kv-label">申请机构</td>
                        <td class="kv-content">
                            <input class="easyui-textbox" type="text" name="aorg" style="width:280px;height:35px;line-height:35px;" />
                        </td>
                    
                     <td class="kv-label">申请时间</td>
                        <td class="kv-content">
                            <input id="applydate" name="applydate2" type="text" class="easyui-datebox" style="width:280px;height:35px;line-height:35px;">
                        </td>
                 
                    </tr>
                    <tr>
                        <td class="kv-label">供应商范围</td>
                        <td class="kv-content">
                            <input class="easyui-textbox" type="text" name="scope" style="width:280px;height:35px;line-height:35px;" />
                        </td>
                     
                        <td class="kv-label">考评时间</td>
                        <td class="kv-content">
                            <input id="startDate" name="checkdate2" type="text" class="easyui-datebox" style="width:280px;height:35px;line-height:35px;">
                        </td>
                     
                    </tr>
                    <tr>
                        <td class="kv-label">评审标准</td>
                        <td class="kv-content" colspan="3">
                            <textarea name="criterion" rows="4" cols="130" style="width:96%;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="kv-label">考评分级标准</td>
                        <td class="kv-content" colspan="3">
                            <textarea name="ranke" rows="4" cols="130" style="width:96%;"></textarea>
                        </td>
                    </tr>
                   <tr>
                    <td class="kv-label">供应商考评模板</td>
                        <td class="kv-content">
                            <input class="easyui-filebox" name="template2" style="width:300px;height:30px"></input>
                        </td>
                 
                   <td class="kv-label">考评方案实体文件</td>
                        <td class="kv-content">
                            <input class="easyui-filebox" name="plandoc2" style="width:300px;height:30px"></input>
                        </td>
          
                    </tr> 
                        <tr>
                            <td colspan="2" style="height: 60px; text-align: left;">
                                <a href="javascript:;" class="easyui-linkbutton" data-options="selected:true" onClick="submitComplain()">提交</a>
                                <a href="javascript:void(0);" class="easyui-linkbutton" onclick="doReset()">重置</a>
                                <a href="<%=basePath%>admin/progroup/proaudit/workGroupMain" class="easyui-linkbutton">返回</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <div title="查看考核方案审批状态" style="padding:10px">
            <iframe class="page-iframe" src="<%=basePath%>admin/progroup/proaudit/statusSearch.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto"></iframe>
        </div>
        <!--Zhemin-->
        <div title="发送考评邀请函" style="padding:10px">
            <iframe class="page-iframe" src="<%=basePath%>admin/progroup/proaudit/sendInvitation.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto">
            </iframe>
        </div>
        <div title="考评名单筛选" style="padding:10px">
            <iframe class="page-iframe" src="<%=basePath%>admin/progroup/proaudit/evaluPerFilter.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto"></iframe>
        </div>
        <div title="查看考评结果及分级" style="padding:10px">
            <iframe class="page-iframe" src="<%=basePath%>admin/progroup/proaudit/resultSearch.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto"></iframe>
        </div>
    </div>
     <script type="text/javascript">
    $(function() {
        var today = new Date();
        $('#applydate123').datebox('setValue', today.getFullYear() + "-" + today.getMonth() + "-" + today.getDate());
    });

    function doReset() {
        $('#subProviderCheck').form('reset');
    }
    
    function submitComplain() {
		document.getElementById("subProviderCheck").submit();
	}
    
    </script>
</body>

</html>
<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>/script/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath%>/script/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/script/umeditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
$(function() {
    $('#easyui-tab').show();
});

$('.easyui-tabs1').tabs({
    tabHeight: 36
});

$(window).resize(function() {
    $('.easyui-tabs1').tabs("resize");
}).resize();

</script>
