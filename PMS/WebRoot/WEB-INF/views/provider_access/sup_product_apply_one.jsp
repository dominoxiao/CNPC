<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>产品申请</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/base.css" rel="stylesheet">
	<link href="./css/easyui.css" rel="stylesheet">
	<link href="./css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="./script/jquery.min.js"></script>
	<script type="text/javascript" src="./script/jquery.easyui.min.js"></script> 

  </head>
  
  <body>
<div class="container">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="" data-options="closable:true" class="basic-info">
		      	<div class="column"><span class="current">添加产品</span></div>
		      	<form action="">
		      	<div style="margin:20px 0;"></div>
				<div class="easyui-panel" style="padding:5px">
					<ul class="easyui-tree" data-options="checkbox:true">
						<li>
							
							<span>石油专用钢管</span>
							<ul>
								<li >
									<span>钻杆</span>
									<ul>
										<li>
											<span>右旋螺纹钻杆</span>
										</li>
										<li>
											<span>右旋螺纹外加厚钻杆</span>
										</li>
										<li>
											<span>右旋螺纹内外加厚钻杆</span>
										</li>
										<li>
											<span>右旋螺纹内加厚钻杆</span>
										</li>
										<li>
											<span>右旋螺纹斜坡钻杆</span>
										</li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>普通钢材</span>
									<ul>
										<li>钢材</li>
										<li>钢材</li>
										<li>钢材 </li>
										<li>钢材</li>
									</ul>
								</li>
								<li data-options="state:'closed'">
									<span>金属丝，金属绳</span>
									<ul>
										<li>金属丝</li>
										<li>金属丝</li>
										<li>金属绳</li>
										<li>金属绳</li>
									</ul>
								</li>
								<li>煤炭</li>
								<li>水泥</li>
							</ul>
						</li>
					</ul>
					
					
				</div>
				<br>
				<a style="width:80px;margin: 0 auto;display:block;" class="easyui-linkbutton" href="sup_product_apply_two.html"> 下一步</a>
	
							
				</form>
		</div>
	</div>
	</div>
	</div>
	
</body>
</html>
