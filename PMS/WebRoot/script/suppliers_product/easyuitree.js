$(function(){
	
	
	$("#protree").tree(  
        {  
          
            onLoadSuccess:function()  
            {  
                $("#protree").tree("collapseAll");  
            }  
          }  
    );  
	$("#nextstep").click(function(){
		 var nodes = $('#protree').tree('getChecked');
                var s = '';
                for (var i = 0; i < nodes.length; i++) {
                    if (s != '') 
                        s += ',';
                  //  s += nodes[i].text;
                    if($('#protree').tree('isLeaf',nodes[i].target)){
                    	s += nodes[i].text;
                    }
                }
                if(s==''){
                	alert("请选择至少一种产品");
                }
                else{
                    alert(s);
                    window.location.href =encodeURI(encodeURI("../AddProduct/QueryProduct.do?product=" + s )); 
                }
	});

});