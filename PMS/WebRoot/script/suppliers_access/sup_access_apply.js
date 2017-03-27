$('.easyui-tabs1').tabs({
      tabHeight: 36
    });
    $(window).resize(function(){
    	$('.easyui-tabs1').tabs("resize");
    }).resize();