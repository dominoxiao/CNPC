<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>供应商预注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="供应商预注册界面">
    <!-- 样式及脚本文件加载 -->
	<link rel="stylesheet" href="./css/base.css" type="text/css">
    <link rel="stylesheet" href="./css/easyui.css" type="text/css">
    <link rel="stylesheet" href="./css/suppliers_access/sup_access_apply.css" type="text/css">
    <script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="./script/suppliers_access/sup_basicinfo.js"></script>

  </head>
  
  <body>
  	<div class="container">
        <div class="content">
            <div style="width:50%;margin:0 auto;">
                <div class="basic-info">
                    <div class="column"><span class="current">请参考《填报说明》正确填写以下信息</span></div>
                    <form id="supRegForm" action="<%=basePath%>register.do" method="post">
                        <table class="kv-table">
                            <tbody>
                                <tr>
                                    <td class="kv-label">供应商名称</td>
                                    <td class="kv-content">
                                        <input type="text" name="suppname" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">供应商类型</td>
                                    <td class="kv-content">
                                        <select name="supptype" style="width:300px">
                                            <option value="4">请选择....</option>
                                            <option value="0">制造商</option>
                                            <option value="1">代理商商</option>
                                            <option value="2">贸易商</option>
                                            <!-- <option value="3">物流商</option> -->
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">组织机构代码</td>
                                    <td class="kv-content">
                                        <input type="text" name="suppname" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">税务登记证号</td>
                                    <td class="kv-content">
                                        <input type="text" name="suppname" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">管理单位编码</td>
                                    <td class="kv-content">
                                        <select id="orgMngCode" name="orgMngCode" style="width:300px">
                                            <option value="">请选择</option>
                                            <option value="ORG00001">(ORG00001)中国石油天然气集团公司</option>
                                            <option value="ORG01">(ORG01)中国石油天然气股份有限公司大港油田分公司</option>
                                            <option value="ORG02">(ORG02)中国石油天然气股份有限公司大庆油田有限责任公司</option>
                                            <option value="ORG03">(ORG03)中国石油天然气股份有限公司吐哈油田分公司</option>
                                            <option value="ORG04">(ORG04)中国石油天然气股份有限公司塔里木油田分公司</option>
                                            <option value="ORG05">(ORG05)中国石油天然气股份有限公司长庆油田分公司</option>
                                            <option value="ORG06">(ORG06)中国石油天然气股份有限公司西南油气田分公司</option>
                                            <option value="ORG07">(ORG07)中国石油天然气股份有限公司新疆油田分公司</option>
                                            <option value="ORG08">(ORG08)中国石油天然气股份有限公司玉门油田分公司</option>
                                            <option value="ORG09">(ORG09)中国石油天然气股份有限公司浙江油田分公司</option>
                                            <option value="ORG10">(ORG10)中国石油天然气股份有限公司辽河油田分公司</option>
                                            <option value="ORG11">(ORG11)中国石油天然气股份有限公司吉林油田分公司</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">管理单位名称</td>
                                    <td class="kv-content">
                                        <input type="text" id="orgMngName" name="orgMngName" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">登录账号</td>
                                    <td class="kv-content">
                                        <input type="text" id="uname" name="uname" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">登录密码</td>
                                    <td class="kv-content">
                                        <input type="password" id="pwd" name="pwd" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">联系人</td>
                                    <td class="kv-content">
                                        <input type="text" id="contacter" name="contacter" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">邮件地址</td>
                                    <td class="kv-content">
                                        <input type="text" id="email" name="email" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">联系人电话</td>
                                    <td class="kv-content">
                                        <input type="text" id="phoneNum" name="phoneNum" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="kv-label">供应商备注</td>
                                    <td class="kv-content">
                                        <input type="text" id="comments" name="comments" style="width:300px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align:center;padding-top: 20px">
                                        <input type="submit" class="easyui-linkbutton" value="提交" />
                                        <input type="button" class="easyui-linkbutton" value="重置" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
  </body>
</html>
