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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>Insert title here</title>
	<link href="<%=basePath%>css/base.css" rel="stylesheet">
	<link href="<%=basePath%>css/easyui.css" rel="stylesheet">
	<link href="<%=basePath%>css/suppliers_access/adm_access_plan_check.css" rel="stylesheet">
	<link href="<%=basePath%>css/icon.css" rel="stylesheet">
	<!-- <link href="../script/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet"> -->
	<script type="text/javascript" src="<%=basePath%>script/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>script/jquery.easyui.min.js"></script>
    <!--  <script type="text/javascript" charset="utf-8" src="../script/umeditor/umeditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../script/umeditor/umeditor.min.js"></script>
    <script type="text/javascript" src="../script/umeditor/lang/zh-cn/zh-cn.js"></script> -->
  </head>
  
  <body style="margin: 10px">
	<div class="easyui-tabs1">
      <div title="产品减少申请" data-options="closable:false" class="basic-info">
      	<table class="kv-table">
			<tbody>
				<tr>
					<td class="kv-label">物料编码</td>
					<td class="kv-content" id="no">${gno}</td>
					<td class="kv-label">物料名称</td>
					<td class="kv-content" id="name">${gname}</td>
					
				</tr>
			
				<tr>
					<td class="kv-label">减少原因</td>
					<td class="kv-content" colspan="5">
						<textarea rows="10" cols="120" id="reason"></textarea>	
					</td>
				</tr>
				<tr>
				<td colspan="6" style="text-align:center; height: 50px"> 
					<a style="margin-right: 15px;" class="easyui-linkbutton"  id="submit" data-options="selected:true">提&nbsp;&nbsp;交</a>
					<a href="<%=basePath%>GoodsChange/GoodsDeleteApplyOne.do" class="easyui-linkbutton" style="margin-left: 20px">返&nbsp;&nbsp;回</a>
				</td>
				</tr>
			</tbody>
		</table>
      </div>
    </div>
    <script type="text/javascript">
    $(function(){
    	$("#submit").click(function(){
          
            var opinion=$("#reason").val();
            $.ajax( {
					type : "POST",
					url : '<%=basePath%>ProviderGoods/insertCutGoods.do',
					data :{  
                        "reason" :opinion ,
                        "gno":"${gno}"
                         },
					success : function(result) {
					     $.messager.alert('提示', '提交成功');
 
		            },
				    error : function() {
					     $.messager.alert('提示', '提交失败');
				    }
				});         
       });
    }); 
	</script>
 </body> 
</html>
