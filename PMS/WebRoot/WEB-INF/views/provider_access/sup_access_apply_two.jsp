<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基本信息</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    
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
	<!--<script type="text/javascript" src="./script/suppliers_access/sup_basicinfo.js"></script>
  -->
  <script type="text/javascript">
  function save(operation){
  		var flag = true;
		$(".inpu").each(function(){
			if($(this).val() == ''){	  			
	  			var sp = $(this).next();
	  			$(sp).html("");  			
	  			$(sp).html("*必填");
	  			$(this).focus();
	  			flag = false;
			}else{
				var sp = $(this).next();			
	  			$(sp).html("");
			}
		});
		var country = $('#country').val();
		var province = $('#province').val();
		var city = $('#city').val();
		if(country==''||province==''||city==''){
			$('#addressspan').html("*必填");
			flag = false;
		}else{
			$('#addressspan').html("");
		}
		//验证邮编
		var zipcode = $('#zipcode').val();
		var isZipcode = /^[0-9][0-9]{5}$/;
		if (zipcode !=''&& !isZipcode.test(zipcode)) { 
			$("#zipcodespan").html("邮编格式不正确!"); 
			$("#zipcode").focus(); 
			flag = false; 
		}
		if(flag&&operation=='save'){
			
    		$.ajax({
                    type: "POST",
                    dataType: "html",
                    url: '<%=basePath%>access/steptwo.do',
                    data: $('#detailForm').serialize(),
                    success: function (result) {
                       // var strresult=result;
                       $.messager.alert('提示','保存成功'); 
                       // alert("chenggong");
                        //加载最大可退金额
                       // $("#spanMaxAmount").html(strresult);
                    },
                    error: function(data) {
                         $.messager.alert('提示','保存失败');
                     }

                });
		}else if(flag&&operation=='next'){
			$("#detailForm").attr("action", "<%=basePath%>access/steptwonext.do");
			$("#detailForm").attr("method", "post");
			$('#detailForm').submit();
		}else{
			$.messager.alert('提示','请完善并正确填写所有信息');
		}
  }
  </script>
  </head>
  
 <body>
	<div class="container">
		<div class="content">
			<div class="easyui-tabs1" style="width:100%;">
		      <div title="" data-options="closable:true" class="basic-info">
		      	<div class="column"><span class="current">供应商详细信息</span></div>
		      	<form id="detailForm">
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">地址</td>
							<td class="kv-content" colspan="3">
								<input type="text" value="${tProviderDetail.country}" id="country" name="country">&nbsp;国家&nbsp;&nbsp;
								<input type="text" value="${province}" id="province" name="province">&nbsp;省&nbsp;&nbsp;
								<input type="text" value="${city}" id="city" name="city">&nbsp;市(区)
								&nbsp;<span id="addressspan" style="color:red"></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">详细地址</td>
							<td class="kv-content" colspan="3">
								<input type="text" value="${tProviderDetail.details}" name="details" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">邮编</td>
							<td class="kv-content">
								<input type="text" value="${tProviderDetail.zipcode}" id="zipcode" name="zipcode" class="inpu">&nbsp;<span id="zipcodespan" style="color:red"></span>
							</td>
							<td class="kv-label">经营范围</td>
							<td class="kv-content">
								<input type="text" value="${tProviderDetail.bizscope}" name="bizscope" class="inpu">&nbsp;<span style="color:red"></span>
								
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">质量管理体系认证</td>
							<td class="kv-content" colspan="3">
								<select name="qm" class="inpu" style="width: 160px">
									<option>请选择类型&nbsp;&nbsp;</option>
									<option ${tProviderDetail.qm=='ISO9001'?'selected':''} value="ISO9001">ISO9001</option>
									<option ${tProviderDetail.qm=='ISO14000'?'selected':''} value="ISO14000">ISO14000</option>
									<option ${tProviderDetail.qm=='OHSAS18000'?'selected':''} value="OHSAS18000">OHSAS18000</option>
									<option ${tProviderDetail.qm=='ISO22000'?'selected':''} value="ISO22000">ISO22000</option>
									
								</select>
								&nbsp;<span style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;
								发证机构：<input value="${tProviderDetail.qmOrg}" type="text" name="qmOrg" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							
							
							
						</tr>
						<tr>
							<td class="kv-label">产品质量认证</td>
							<td class="kv-content" colspan="3">
								<select name="qc" class="inpu" style="width: 160px">
									<option value="">请选择类型&nbsp;&nbsp;</option>
									<option ${tProviderDetail.qc=='CCC认证'?'selected':''} value="CCC认证">CCC认证</option>
									<option ${tProviderDetail.qc=='CE认证'?'selected':''} value="CE认证">CE认证</option>
									<option ${tProviderDetail.qc=='CQC认证'?'selected':''} value="CQC认证">CQC认证</option>
									<option ${tProviderDetail.qc=='CB认证'?'selected':''} value="CB认证">CB认证</option>
									<option ${tProviderDetail.qc=='PCT认证'?'selected':''} value="PCT认证">PCT认证</option>
									<option ${tProviderDetail.qc=='其它'?'selected':''} value="其它">其它</option>
								</select>
								&nbsp;<span style="color:red">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;
								发证机构：<input type="text" value="${tProviderDetail.qcOrg}" name="qcOrg" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						
						
						<tr>
							<td class="kv-label">生产/制造许可证获证情况及编号</td>
							<td class="kv-content" colspan="3">
								<input type="text" value="${tProviderDetail.mlan}" name="mlan" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">获奖情况</td>
							<td class="kv-content" colspan="3">
							 	
								<textarea name="awards"  rows="5" cols="80" class="inpu">${tProviderDetail.awards}</textarea>&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						<tr>
					
							<td colspan="4" style="text-align:center;padding-top: 20px">
								<a style="margin-right: 15px" class="easyui-linkbutton" onclick="save('next')"> 下一步</a>
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
