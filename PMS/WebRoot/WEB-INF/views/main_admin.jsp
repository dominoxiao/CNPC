<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>中石油物资管理信息系统后台管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link href="<%=basePath%>/css/base.css" rel="stylesheet">
		<link href="<%=basePath%>/css/platform.css" rel="stylesheet">
		<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
		<script type="text/javascript" src="<%=basePath%>/script/jquery.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>/script/jquery.easyui.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>/script/main/main.js"></script>
        <script type="text/javascript" src="<%=basePath%>/script/main/menu.js"></script>
	</head>

	<body>
		<div class="container">
			<div id="pf-hd">
				<div class="pf-logo">
					<img src="images/main/main_logo_new_2.png" alt="logo">
				</div>
				<div class="pf-user">
					<div class="pf-user-photo">
						<img src="images/main/user.png" alt="">
					</div>
					<h4 class="pf-user-name ellipsis">${user.uname}</h4>
					<i class="iconfont xiala">&#xe607;</i>
					<div class="pf-user-panel">
						<ul class="pf-user-opt">
							<li>
								<a href="javascript:;"> <i class="iconfont">&#xe60d;</i> <span
									class="pf-opt-name">用户信息</span> </a>
							</li>
							<li class="pf-modify-pwd">
								<a href="http://www.uimaker.com"> <i class="iconfont">&#xe634;</i>
									<span class="pf-opt-name">修改密码</span> </a>
							</li>
							<li class="pf-logout">
								<a href="<%=basePath%>user/login.do"> <i class="iconfont">&#xe60e;</i> <span
									class="pf-opt-name">退出</span> </a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div id="pf-bd">
				<div id="pf-sider">
				</div>
				<div id="pf-page">
					<div id="main_tabs" class="easyui-tabs1"
						style="width: 100%; height: 100%;">
						<div title="首页" style="padding: 10px 5px 5px 10px;">
							<iframe class="page-iframe" src="<%=basePath%>user/indexAdmin.do" frameborder="no" border="no" height="100%" width="100%"
								scrolling="auto">
							</iframe>
						</div>
					</div>
				</div>
			</div>
			<div id="pf-ft">
				<div class="system-name">
					<i class="iconfont">&#xe6fe;</i>
					<span>物资管理系统-供应商管理子系统&nbsp;v1.0</span>
				</div>
				<div class="copyright-name">
					<span>CopyRight&nbsp;2016&nbsp;&nbsp;coders&nbsp;版权所有</span>
					<i class="iconfont">&#xe6ff;</i>
				</div>
			</div>
		</div>
		
    <script type="text/javascript">
    $(function() {

    $('.easyui-tabs1').tabs({
        tabHeight: 44,
        onSelect: function(title, index) {
            var currentTab = $('.easyui-tabs1').tabs("getSelected");
            if (currentTab.find("iframe") && currentTab.find("iframe").size()) {
                currentTab.find("iframe").attr("src", currentTab.find("iframe").attr("src"));
            }
        }
    })

    $(window).resize(function() {
        $('.tabs-panels').height($("#pf-page").height() - 46);
        $('.panel-body').height($("#pf-page").height() - 76)
    }).resize();
    
    //从URL获取用户角色参数
    var name,value; 
	var str=location.href; 
	var num=str.indexOf("?") 
	str=str.substr(num+1);
	var arr=str.split("&"); 
    num=arr[2].indexOf("="); 
	if(num>0){ 
		name=arr[2].substring(0,num);
		value=arr[2].substr(num+1);
		console.log(name+","+value);
		this[name]=value;
		if(value=="1"){
		   // 供应商登入
			mainPlatform.init(menuProvider);
		}
		if(value=="2")
		{  //  专业工作组
			mainPlatform.init(menuProgroup);
		}
	    if(value=="3")
	    {  //  评审委员会
	    	mainPlatform.init(menuPingshen);
	    }
	    if(value=="4")
	    {  //  物采部门
	    	mainPlatform.init(menuWucai);
	    }
	    if(value=="0")
	    {  //  高级管理员
	    	mainPlatform.init(menuAdmin);
	    }
	    if(value=="5")
	    {  //  投诉处理部门
	    	mainPlatform.init(menuComplain);
	    }
	    if(value=="6")
	    {  //  财务人员
	    	mainPlatform.init(menuAccount);
	    }

	}

	
});
    </script>
	</body>
</html>
