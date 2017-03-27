<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基本信息</title> 
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	 <link href="./css/base.css" rel="stylesheet">
	<link href="./css/easyui.css" rel="stylesheet">
	<link href="./css/suppliers_access/sup_access_apply.css" rel="stylesheet">
	<script type="text/javascript" src="./script/jquery.min.js"></script>
	<script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="./script/jquery.form.js"></script>	
	<script type="text/javascript">
	function chooseArea(){
	
	}
	function save(operation){		
		var flag = true;
		if($('#amount').val() == ''){
		    $('#amountSpan').html("账户金额不能为空");
		    flag = false;
		}
		$(".inpu").each(function(){
			if($(this).val() == ''){	  			
	  			var sp = $(this).next();  			
	  			$(sp).html("*必填");
	  			$(this).focus();
	  			flag = false;
			}else{
				var sp = $(this).next();			
	  			$(sp).html("");
			}
		});
		var val=$('input:radio[name="ptype2"]:checked').val();
		if(val==null){
            flag = false;
            $(".type2").html("*必填");
        }else{
        	$(".type2").html("");
        }     
        var mobile = $("#mobile").val();
       	var isMobile=/^(?:13\d|15\d|18\d)\d{5}(\d{3}|\*{3})$/;   
        if (mobile !=''&& !isMobile.test(mobile)) { 
			$("#mobilespan").html("手机号码格式不正确!"); 
			$("#mobile").focus(); 
			flag = false; 
		}
		var tel = $('#tel').val();
		var isPhone=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		if (tel !=''&& !isPhone.test(tel)) { 
			$("#telspan").html("电话号码格式不正确!"); 		
			$("#tel").focus(); 
			flag = false; 
		}
		var email = $('#email').val();
		var isemail = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		if (email !=''&& !isemail.test(email)) { 
			$("#emailspan").html("邮箱格式不正确!"); 		
			$("#email").focus(); 
			flag = false; 
		}
		if(flag&&operation=='save'){
			
    		$.ajax({
                    type: "POST",
                    dataType: "html",
                    url: '<%=basePath%>access/stepone.do',
                    data: $('#basicinfo').serialize(),
                    success: function (result) {                     
                       $.messager.alert('提示','保存成功');                       
                    },
                    error: function(data) {
                         $.messager.alert('提示','保存失败');
                     }

                });
    		
		}else if(flag&&operation=='next'){
			$("#basicinfo").attr("action", "<%=basePath%>access/steponenext.do");
			$("#basicinfo").attr("method", "post");
			$('#basicinfo').submit();
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
		      	<div class="column"><span class="current">基本信息</span></div>
		      	<form id="basicinfo">
		      	<input type="hidden" id="areano" name="applyarea" value="3">
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">供应商名称</td>
							<td class="kv-content"><input type="text" value="${tProviderApply.pname}" name="pname" class="inpu">&nbsp;<span style="color:red"></span></td>
							<td class="kv-label">供应商类型</td>
							<td class="kv-content">
								<select name="ptype" class="inpu" style="width: 160px">
									<option  value="">请选择....</option>
									<option ${tProviderApply.ptype=='1'?'selected':''} value="1">制造商</option>
									<option ${tProviderApply.ptype=='2'?'selected':''} value="2">代理商商</option>
									<option ${tProviderApply.ptype=='3'?'selected':''} value="3">贸易商</option>
									<!-- <option value="3">物流商</option> -->
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">供应商类型2</td>
							<td class="kv-content">
								<input type="radio" ${tProviderApply.ptype2=='0'?'checked':''} name="ptype2" value="0">社会供应商
								<input type="radio" ${tProviderApply.ptype2=='1'?'checked':''} name="ptype2" value="1">集团公司内部供应商
								&nbsp;<span class="type2" style="color:red"></span>
							</td>
							<td class="kv-label">供应商来源</td>
							<td class="kv-content">
								<select name="pfrom" class="inpu" style="width: 160px">
								    <option value="">请选择....</option>
									<option ${tProviderApply.pfrom=='1'?'selected':''} value="1">自荐</option>
									<option ${tProviderApply.pfrom=='2'?'selected':''} value="2">推荐</option>
									<option ${tProviderApply.pfrom=='3'?'selected':''} value="3">特邀</option>
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">组织机构代码</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.orgcode}" name="orgcode" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">工商注册号</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.gsRegno}" name="gsRegno" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						
						<tr>
							<td class="kv-label">国税登记证号</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.taxguo}" name="taxguo" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">地税登记证号</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.taxdi}" name="taxdi" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						
						<tr>
							<td class="kv-label">法定代表人</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.agent}" name="agent" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">地址</td>
							<td class="kv-content">
								<input type="text" value="${tProviderApply.address}" name="address" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						<tr>
							
							<td class="kv-label">账户金额</td>
							<td class="kv-content">
								<input type="text" class="easyui-numberbox"  precision="2" value="${tProviderApply.amount}" id="amount" name="amount">元(￥)&nbsp;<span id="amountSpan" style="color:red"></span>
							</td>	
							<td class="kv-label">供应商等级</td>
							<td class="kv-content">
								<!-- <input type="text" name="supplevel"> -->
								<select style="width: 160px"  name="ranke" class="inpu" id="suplevel" onchange="chooseArea()">
								<option value="">请选择...</option>
								<option ${tProviderApply.ranke=='1'?'selected':''} value="1">一级供应商</option>
								<option ${tProviderApply.ranke=='2'?'selected':''} value="2">二级供应商</option>								
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						</tbody>
				</table>
				
				<div class="column"><span class="current">联系人信息</span></div>
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">联系人姓名</td>
							<td class="kv-content">
								<input type="text" value="${tContacter.cname}" name="cname" class="inpu"><span style="color:red"></span>
							</td>
							<td class="kv-label">移动电话</td>
							<td class="kv-content">
								<input type="text" value="${tContacter.mobile}" id="mobile" name="mobile" class="inpu"><span id="mobilespan" style="color:red"></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">固定电话</td>
							<td class="kv-content">
								<input type="text" value="${tContacter.tel}" id="tel" name="tel" class="inpu"><span id="telspan" style="color:red"></span>
							</td>
							<td class="kv-label">电子邮箱</td>
							<td class="kv-content">
								<input type="text" value="${tContacter.email}" name="email" class="inpu" id="email"><span id="emailspan" style="color:red"></span>
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
