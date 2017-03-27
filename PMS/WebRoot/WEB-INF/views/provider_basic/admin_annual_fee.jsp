<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商年费录入</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商年费录入">
	<link rel="stylesheet" href="<%=basePath%>css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_basic_info/annual_fee.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.form.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript " src="<%=basePath%>script/suppliers_basic_info/adm_annual_fee.js "></script>
	
  </head>
  
  <body>
    <div style="position:absolute;padding:10px;width:98%;height:94%;overflow:hidden">
        <table id="annual_fee_dg" style="width:100%;height:100%" title="该供应商往年缴费情况">
        </table>
        <div id="annual_fee_tb" style="padding:0 10px;">
            <form id="saveRecordForm">
                <table>
                	<tr>
                		<td style="padding-right: 20px">供应商</td>
	                    <td>
	                    	<input class="easyui-textbox" type="text" id="pno" name="pno" data-options="prompt:'请输入供应商编号...',required:true" style="width:200px;height:30px; line-height: 35px"></input>
	                    </td>
	                    <td></td>
	                    <td style="padding-right: 20px">收费员</td>
	                    <td>
	                        <input class="easyui-textbox" type="text" name="empno" data-options="required:true" value="${Provider}" style="width:200px;height:30px;" readonly="true"></input>
	                    </td>
	               </tr>
	               <tr>
	                    <td>缴费金额</td>
	                    <td>
	                        <input class="easyui-textbox" type="text" name="pmoney" data-options="prompt:'请输入缴费金额(元)...',required:true" style="width:200px;height:30px;"></input>
	                    </td>
	                    <td></td>
	                    <td>缴费方式</td>
	                    <td>
	                        <select class="easyui-combobox" name="ptype" panelHeight="auto" style="width:200px;height:30px;line-height:30px;">
	                        	<option value="">--请选择--</option>
	                            <option value="现金">现金</option>
	                            <option value="网银">网银</option>
	                            <option value="刷卡">刷卡</option>
	                        </select>
	                    </td>
	                </tr>
	                <tr>
	                    <td>缴费时间</td>
	                    <td>
	                        <input id="payDate" class="easyui-datebox" type="text" name="pdate" style="width:200px;height:30px;" readonly></input>
	                    </td>
	                    <td width="50px"></td>
	                    <td colspan="2" text-align="right">
	                    	<a href="javascript:void(0);" class="easyui-linkbutton" onclick="confirm1()">保存</a>
	                    	<a href="javascript:void(0);" class="easyui-linkbutton" onclick="getPayHistory()">历史缴费</a>
	                    </td>
	                </tr>
                </table>
            </form>
        </div>
    </div>
  </body>

</html>
