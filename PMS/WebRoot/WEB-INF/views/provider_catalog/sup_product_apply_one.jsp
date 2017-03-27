<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
 	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>  
	<script type="text/javascript" src="<%=basePath%>script/suppliers_product/easyuitree.js"></script>  
	
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
					<ul id="protree" initialState="'collapseAll'" data-options="checkbox:true">		
						<li>
							<span>冶金原料及铸铁管</span>
							<ul>
								<li>
									<span>黑色金属矿采选产品</span>
								</li>
							</ul>
						</li>
						
						
						<li>			
							<span>石油专用钢管</span>
							<ul>
								<li >
									<span>方钻杆</span>
									<ul>
										<li>
											<span>方钻杆</span>
											<ul>
												<li>
													<span>右旋螺纹方钻杆</span>
												</li>
												<li>
													<span>左旋螺纹方钻杆</span>
												</li>					
											</ul>
										</li>
									</ul>
								</li>
								<li >
									<span>钻杆</span>
									<ul>
										<li>
											<span>右旋螺纹钻杆</span>
											<ul>
												<li>
													<span>右旋螺纹外加厚钻杆</span>
												</li>
												<li>
													<span>右旋螺纹内外加厚钻杆</span>
												</li>											
											</ul>
										</li>
										<li>
											<span>左旋螺纹钻杆</span>
											<ul>
												<li>
													<span>左旋螺纹外加厚钻杆</span>
												</li>
												<li>
													<span>左旋螺纹内外加厚钻杆</span>
												</li>
											</ul>
										</li>
									</ul>
								</li>
								<li >
									<span>钻铤</span>
									<ul>
										<li>
											<span>钻铤</span>
											<ul>
												<li>
													<span>普通钻铤</span>
												</li>
												<li>
													<span>短钻铤</span>
												</li>
											</ul>
										</li>								
									</ul>
								</li>
								<li >
									<span>套管及接箍</span>
									<ul>
										<li>
											<span>套管</span>
											<ul>
												<li>
													<span>无缝套管</span>
												</li>
												<li>
													<span>直缝套管</span>
												</li>
												<li>
													<span>地质套管</span>
												</li>
											</ul>
										</li>
										<li>
											<span>套管接箍</span>
											<ul>
												<li>
													<span>无缝套管接箍料</span>
												</li>
												<li>
													<span>套管接箍</span>
												</li>
											</ul>
										</li>								
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<span>普通钢材</span>
							<ul>
								<li>
									<span>钢材</span>
								</li>
							</ul>
						</li>
						<li>
							<span>金属丝、金属绳</span>
							<ul>
								<li>
									<span>金属丝</span>
								</li>
								<li>
									<span>金属绳</span>
								</li>
							</ul>
						</li>
					</ul>
					
					
				</div>
				<br>
				<a style="width:80px;margin: 0 auto;display:block;" id="nextstep" class="easyui-linkbutton"> 下一步</a>
	
							
				</form>
		</div>
	</div>
	</div>
	</div>

  </body>
</html>
