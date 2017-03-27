<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公司信息以及资质证明</title>
    
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
	<!--<script type="text/javascript" src="./script/suppliers_access/sup_basicinfo.js"></script> -->
	<script type="text/javascript">
	function sub(){
		var flag = true;
		if($('#zczb').val() == ''){
		    $('#zczbSpan').html("注册资本不能为空");
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
		$(".dateinput").each(function(){
			var v = $(this).datebox('getValue');
			//alert(v);
			if(v == ''||v==null){	  			
	  			var sp = $(this).next().next();  			
	  			$(sp).html("*必填");
	  			$(this).focus();
	  			flag = false;
			}else{
				var sp = $(this).next().next();			
	  			$(sp).html("");
			}
		});
		$(".fileinput").each(function(){
			var v = $(this).filebox('getValue');
			//alert(v);
			if(v == ''||v==null){	  			
	  			var sp = $(this).next().next();  			
	  			$(sp).html("*必填");
	  			$(this).focus();
	  			flag = false;
			}else{
				var sp = $(this).next().next();	
				var fileAccept = $(this).filebox('getValue').split(".")[1];//获取上传文件的后缀  
				//alert(fileAccept);
				if( fileAccept!="jpg" && fileAccept!="png" ){  
    				$(sp).html("只能上传.jpg和.png的文件！");
    				flag = false;  
				} else{
					$(sp).html("");
				}
						
	  			
			}
		});
		//验证电话
		var tel = $('#tel').val();
		var isPhone=/^((0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		if (tel !=''&& !isPhone.test(tel)) { 
			$("#telspan").html("电话号码格式不正确!"); 		
			$("#tel").focus(); 
			flag = false; 
		}
		//验证网址
		var address = $('#address').val();
		var pattern=/^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
		if (address !=''&& !pattern.test(address)) { 
			$("#addressspan").html("网址格式不正确!"); 		
			$("#address").focus(); 
			flag = false; 
		}
		//验证传真
		var fax = $('#fax').val();
		var isfax= /^(\d{3,4}-)?\d{7,8}$/;
		if (fax !=''&& !isfax.test(fax)) { 
			$("#faxspan").html("传真格式不正确!"); 		
			$("#fax").focus(); 
			flag = false; 
		}
		if(flag){
			$("#stepthreeForm").submit();
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
		      	<div class="column"><span class="current">公司情况</span></div>
		      	<form id="stepthreeForm" action="<%=basePath%>access/stepthree.do" method="post" encType="multipart/form-data">
		      	<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">法人代表姓名</td>
							<td class="kv-content">
								<input type="text" name="fname" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">公司类型</td>
							<td class="kv-content">
								<select name="ctype" class="inpu" style="width: 160px">
									<option value="" selected="selected">请选择类型</option>
									<option value="内资企业">内资企业</option>
									<option value="国有企业">国有企业</option>
									<option value="集团企业">集团企业</option>
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						<tr>
							<td class="kv-label">行业类别</td>
							<td class="kv-content">
								<select name="hytype" class="inpu" style="width: 160px">
									<option value="" selected="selected">请选择类别</option>
									<option value="制造业">制造业</option>
									<option value="林业">林业</option>
									<option value="渔业">渔业</option>
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">大类</td>
							<td class="kv-content">
								<select name="bigtype" class="inpu">
									<option value="" selected="selected">请选择类别</option>
									<option value="农副食品加工业">农副食品加工业</option>
									<option value="木质家具制造">木质家具制造</option>
									<option value="麻纺织">麻纺织 </option>
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
						</tr>
						 <tr>
							<td class="kv-label">注册资本(万元)</td>
							<td class="kv-content">
								<input type="text" id="zczb" name="zczb" class="easyui-numberbox" precision="2" value="0">￥&nbsp;<span id="zczbSpan" style="color:red"></span>
							</td>
							<td class="kv-label">成立时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="begindate">&nbsp;<span style="color:red"></span>								
							</td>							
						</tr>
						<tr>
							<td class="kv-label">开户银行</td>
							<td class="kv-content">
								<input type="text" name="bank" class="inpu">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">银行账号</td>
							<td class="kv-content">
								<input type="text" name="bankno" class="inpu">	&nbsp;<span style="color:red"></span>
							</td>							
						</tr>
						<tr>
							<td class="kv-label">银行信用等级</td>
							<td class="kv-content">
								<select name="creditLevel" class="inpu" style="width: 160px">
									<option value="" selected="selected">请选择等级&nbsp;&nbsp;</option>
									<option value="AAA级">AAA级</option>
									<option value="AA级">AA级</option>
									<option value="A级">A级</option>
									<option value="BBB级">BBB级</option>
									<option value="BB级">BB级</option>
									<option value="B级">B级</option>
								</select>
								&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">公司电话</td>
							<td class="kv-content">
								<input type="text" id="tel" name="tel" class="inpu">&nbsp;<span id="telspan" style="color:red"></span>
							</td>
						</tr>					
						<tr>
							<td class="kv-label">传真</td>
							<td class="kv-content">
								<input type="text" id="fax" name="fax" class="inpu">&nbsp;<span id="faxspan" style="color:red"></span>
							</td>
							<td class="kv-label">公司网址</td>
							<td class="kv-content">
								<input type="text" id="address" name="address" class="inpu">&nbsp;<span id="addressspan" style="color:red"></span>
							</td>
						</tr>
					</tbody>
				</table>
			
				<div class="column"><span class="current">资质证明</span></div>
					<table class="kv-table">
					<tbody>
						<tr>
							<td class="kv-label">企业营业执照</td>
							<td class="kv-content">
								<input class="easyui-filebox fileinput" name="files">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">到期时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="bizlicenseFdate">&nbsp;<span style="color:red"></span>								
							</td>
						</tr>
						<tr>
							<td class="kv-label">组织机构代码证</td>
							<td class="kv-content">
								<input class="easyui-filebox fileinput" name="files">&nbsp;<span style="color:red"></span>
								
							</td>
							<td class="kv-label">到期时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="organizeFdate">&nbsp;<span style="color:red"></span>								
							</td>
						</tr>
						<tr>
							<td class="kv-label">国税登记证明</td>
							<td class="kv-content">
								<input class="easyui-filebox fileinput" name="files">&nbsp;<span style="color:red"></span>
								
							</td>
							<td class="kv-label">到期时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="taxguoFdate">	&nbsp;<span style="color:red"></span>							
							</td>
						</tr>
						<tr>
							<td class="kv-label">地税等级证明</td>
							<td class="kv-content">
								<input class="easyui-filebox fileinput" name="files">	&nbsp;<span style="color:red"></span>					
							</td>
							<td class="kv-label">到期时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="ltaxdiFdate">	&nbsp;<span style="color:red"></span>							
							</td>
							
						</tr>
						<tr>
							<td class="kv-label">银行开户证明或银行资信证明</td>
							<td class="kv-content">
								<input class="easyui-filebox fileinput" name="files">&nbsp;<span style="color:red"></span>
							</td>
							<td class="kv-label">到期时间</td>
							<td class="kv-content">
								<input class="easyui-datebox dateinput" type="text" name="bankcertificateFdate">&nbsp;<span style="color:red"></span>								
							</td>
	
						</tr>
						<tr>
					
							<td colspan="4" style="text-align:center;padding-top: 20px">
								<a style="margin-right: 15px" class="easyui-linkbutton" onclick="sub()">提交</a>								
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
