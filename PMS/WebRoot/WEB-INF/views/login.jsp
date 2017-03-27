<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String uname = (String) request.getAttribute("uname");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>中石油物采系统登录</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link href="<%=basePath%>/css/base.css" rel="stylesheet">
		<link href="<%=basePath%>/css/login.css" rel="stylesheet">
		<link href="<%=basePath%>/css/platform.css" rel="stylesheet">
		<link href="<%=basePath%>/css/easyui.css" rel="stylesheet">
	</head>

	<body class="white">
		<div class="login-hd">
			<div class="left-bg"></div>
			<div class="right-bg"></div>
			<div class="hd-inner">
				<div class="pf-logo">
					<img src="images/main/main_logo_new_2.png" alt="logo">
				</div>
			</div>
		</div>

		<div class="login-bd">
			<div class="bd-inner">
				<div class="inner-wrap">
					<div class="lg-zone">
						<div class="lg-box">
							<div class="lg-label">
								<h4>
									用户登录
								</h4>
							</div>
							<div class="alert alert-error">
								<i class="iconfont">&#xe62e;</i>
								<span>${msg}</span>
							</div>
							<form id="loginForm" action="<%=basePath%>user/login.do" method="post">
								<div class="lg-username input-item clearfix">
									<i class="iconfont">&#xe60d;</i>
									<input type="text" id="uname" name="uname" placeholder="请输入用户名">
								</div>
								<div class="lg-password input-item clearfix">
									<i class="iconfont">&#xe634;</i>
									<input type="password" id="pwd" name="pwd" placeholder="请输入密码">
								</div>
								<div class="tips clearfix">
									<label>
										<input type="checkbox" checked="checked">
										记住用户名
									</label>
									<a href="<%=basePath%>register.do" class="register">立即注册</a>
									<a href="javascript:;" class="forget-pwd">忘记密码？</a>
								</div>
								<div class="enter">
									<a href="javascript:;" class="purchaser"
										onClick="checkUser()">登录</a>
								</div>
							</form>
							<div class="line line-y"></div>
							<div class="line line-g"></div>
						</div>
					</div>
					<div class="lg-poster"></div>
				</div>
			</div>
		</div>
		<div class="login-ft">
			<div class="ft-inner">
				<div class="about-us">
					<a href="javascript:;">关于我们</a>
					<a href="javascript:;">法律声明</a>
					<a href="javascript:;">服务条款</a>
					<a href="javascript:;">联系方式</a>
				</div>
			</div>
		</div>

		<script>
			function checkUser() {
				var result = document.getElementById("uname").value;
				var password = document.getElementById("pwd").value;
			
				if (result == "") {
					alert("用户名不能为空");
					return false;
				}
				if (password == "") {
					alert("密码不能为空");
					return false;
				}
				document.getElementById("loginForm").submit();
			}
		</script>
	</body>
</html>
