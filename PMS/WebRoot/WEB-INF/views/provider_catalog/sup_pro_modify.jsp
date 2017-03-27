<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">  
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<title>供应商信息变更</title>
    <link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>css/icon.css">
    <link rel="stylesheet" href="<%=basePath%>css/suppliers_basic_info/modify_info.css">
    <script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/suppliers_product/sup_pro_modify.js"></script>
    
    <script type="text/javascript">
    function closeLoading() {
	$("#loadingDiv").fadeOut("normal", function() {
		$(this).remove();
	  });
    }
	var no;
	$.parser.onComplete = function() {
		if (no)
			clearTimeout(no);
		no = setTimeout(closeLoading, 500);
	}
    </script>
 </head>
  
  <body>
  	<div id='loadingDiv' style="position: absolute; z-index: 1000; top: 0px; left: 0px; width: 100%; height: 100%; background: white; text-align: center;">
		<h1 style="top: 48%; position: relative;">
			<font color="#1a2111">努力加载中···</font>
			<img src="<%=basePath%>images/loading.gif"/>
		</h1>
	</div>
    <div class="container">
        <!--tabs start-->
        <div id="productModifyTabs" class="easyui-tabs1" data-options="tabPosition:'top'" style="height:100%;padding: 10px">
            <div title="产品新增" style="padding:10px 5px 5px 10px;">
                <iframe class="page-iframe" src="<%=basePath%>GoodsChange/sup_pro_apply_one.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto">
                </iframe>
            </div>
            <div title="产品删除" style="padding:10px 5px 5px 10px;">
                <iframe class="page-iframe" src="<%=basePath%>GoodsChange/GoodsDeleteApply.do" frameborder="no" border="no" height="95%" width="100%" scrolling="auto">
                </iframe>
            </div>
        </div>
        <!--tabs end-->
    </div>
  </body>
</html>
