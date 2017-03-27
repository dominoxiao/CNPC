/**
 * 
 */
$(function(){
	var myDate = new Date();
	//获取当前年
	var year=myDate.getFullYear();
	//获取当前月
	var month=myDate.getMonth()+1;
	//获取当前日
	var date=myDate.getDate(); 
	var ss=year+"-"+month+"-"+date;
	$("#getdate").html(ss);
});