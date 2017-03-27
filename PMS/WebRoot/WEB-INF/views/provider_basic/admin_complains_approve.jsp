<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商投诉审批</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商投诉审批">

	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/suppliers_basic_info/complains_info.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.form.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/common.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_basic_info/adm_complains_info.js"></script>

  </head>
  
<body>
    <div class="container">
        <div class="content">
            <table id="complains_proc_dg" style="width:900px;height:200px" title="供应商变更申请审批列表" ></table>
            <form style="padding-top: 30px; width:900px; height: auto;" >
                <table class="kv-table">
                    <tbody>
                        <tr>
                            <td class="kv-label">投诉编号</td>
                            <td id="acnotd" class="kv-content">${complainDetail.acno}</td>
                            <td class="kv-label">供应商编号</td>
                            <td class="kv-content">${complainDetail.pno}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉日期</td>
                            <td class="kv-content">${complainDetail.adate}</td>
                            <td class="kv-label">投诉标题</td>
                            <td class="kv-content">${complainDetail.title}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">摘要明细信息</td>
                            <td class="kv-content" colspan="5">${complainDetail.detail}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉单位</td>
                            <td class="kv-content">${complainDetail.unit}</td>
                            <td class="kv-label">投诉部门</td>
                            <td class="kv-content">${complainDetail.org}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉人姓名</td>
                            <td class="kv-content">${complainDetail.name}</td>
                            <td class="kv-label">投诉人电话</td>
                            <td class="kv-content">${complainDetail.tel}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉人Email</td>
                            <td class="kv-content">${complainDetail.email}</td>
                            <td class="kv-label">被投诉单位</td>
                            <td class="kv-content">${complainDetail.united}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">被投诉部门</td>
                            <td class="kv-content">${complainDetail.orged}</td>
                            <td class="kv-label">被投诉人姓名</td>
                            <td class="kv-content">${complainDetail.named}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">投诉理由</td>
                            <td class="kv-content">${complainDetail.reason}</td>
                            <td class="kv-label">投诉理由说明</td>
                            <td class="kv-content">${complainDetail.explain}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">附件</td>
                            <td class="kv-content" colspan="3">
                                <a href="<%=basePath%>complain/downfile.do?acno=${complainDetail.acno}">相关附件</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <form style="padding-top: 30px; width:900px; height: auto;" >
                <table class="kv-table">
                    <tbody>
                        <tr>
                            <td class="kv-label">处理人</td>
                            <td class="kv-content">${complainDetail.complainDeal==null?'待处理':complainDetail.complainDeal.person}</td>
                            <td class="kv-label">处理机构</td>
                            <td class="kv-content">${complainDetail.complainDeal.aorg}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理时间</td>
                            <td class="kv-content" colspan=3>${complainDetail.complainDeal.adate}</td>
                        </tr>
                        <tr>
                            <td class="kv-label">处理意见</td>
                            <td class="kv-content" colspan=3>${complainDetail.complainDeal.ainfo}</td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <form id="complainAuditForm" style="padding-top: 30px; width:900px; height: auto;">
                <table class="kv-table">
                    <tbody>
                        <tr>
                            <td class="kv-label">审批时间</td>
                            <td class="kv-content">
                                <input id="adate" name="adate" class="easyui-datebox" type="text" style="width:200px;height:25px;" readonly></input>
                                <input type="hidden" name="acno" value="${complainDetail.acno}"/>
                            </td>
                            <td class="kv-label">审批机构</td>
                            <td class="kv-content">
                                <input id="aorg" name="aorg" class="easyui-textbox" type="text" style="width:200px;height:25px;"></input>
                            </td>
                        </tr>
                        <tr>
                            <td class="kv-label">审批意见</td>
                            <td class="kv-content" colspan="3">
                                <input id="ainfo" name="ainfo" class="easyui-textbox" type="text" data-options="multiline:true" style="width:500px;height:200px;"></input>
                            </td>
                        </tr>
                        <tr>
                         	<td class="kv-label">审批结果</td>
                         	<td class="kv-content">
                         	    <select id="isagree" name="isagree" class="easyui-combobox" style="width:200px;height:25px;line-height:25px;">
                                        <option value="1">--通过--</option>
                                        <option value="0">--拒绝--</option>
                                 </select>
                         	</td>
                         	<td class="kv-label">审批人</td>
                         	<td class="kv-content">
                         		<input id="pcno" name="pcno" class="easyui-textbox" value="${Provider}" type="text" style="width:200px;height:25px;"></input>
                         	</td>
                        </tr>
                        <tr>
                            <td class="kv-content" style="text-align: center" colspan="6">
                                <a href="javascript:void(0);" class="easyui-linkbutton" onclick="submitAudit()">提交</a>
                                <a href="<%=basePath%>admin/complain/index.do" class="easyui-linkbutton">返回</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</body>

</html>
