var mainPlatform = {

    init: function(menu) {

        this.bindEvent();
        this.render(menu.menus);
                
    },

    // 添加tabs
    addTabs: function(title, href) {
        var self = this;
        var tt = $('#main_tabs');
        var tabcount = $('#main_tabs').tabs('tabs').length;
        // tt.tabs({
        //     border: false,
        //     fit: true
        // });
        if (tt.tabs('exists', title)) { //如果tab已经存在,则选中并刷新该tab          
            tt.tabs('select', title);
            self.refreshTab({ tabTitle: title, url: href });
        } else if (tabcount <= 8) {
            var content = "";
            if (href) {
                // content_title = '<div title="'+ title + '" data-options="closable:true" style="padding:10px 5px 5px 10px;">';
                content = '<iframe class="page-iframe" src="' + href + '" frameborder="no" border="no" scrolling="auto" height="100%" width="100%"></iframe>';
            } else {
                content = '未实现';
            }
            tt.tabs('add', {
                title: title,
                closable: true,
                content: content
                    // width: $('#modify-container').width() - 20,
                    // height: $('#modify-container').height() - 20
            });

        } else {
            alert('您打开的太多了，请关闭不用的窗口！');
            return false;
        }

        // $('#main_tabs').tabs('getSelected').css('height', 'auto'); 
    },

    // 刷新tabs
    refreshTab: function(cfg) {
        var refresh_tab = cfg.tabTitle ? $('#main_tabs').tabs('getTab', cfg.tabTitle) : $('#main_tabs').tabs('getSelected');
        if (refresh_tab && refresh_tab.find('iframe').length > 0) {
            var _refresh_ifram = refresh_tab.find('iframe')[0];
            var refresh_url = cfg.url ? cfg.url : _refresh_ifram.src;
            //_refresh_ifram.src = refresh_url;  
            _refresh_ifram.contentWindow.location.href = refresh_url;
        }
    },

    bindEvent: function() {
        var self = this;
        // 顶部大菜单单击事件
        $(document).on('click', '.pf-nav-item', function() {
            $('.pf-nav-item').removeClass('current');
            $(this).addClass('current');
            // 渲染对应侧边菜单
            var m = $(this).data('menu');
            self.render(menu[m]);
        });

        // 左侧菜单栏点击事件触发相应iframe
        $(document).on('click', '.sider-nav li', function() {
            $('.sider-nav li').removeClass('current');
            $(this).addClass('current');
            // $('iframe').attr('src', $(this).data('src'));
        });

        // 左侧菜单栏子菜单项点击事件触发相应iframe
        $(document).on('click', '.sider-nav-s li', function() {
            $('.sider-nav-s li').removeClass('active');
            $(this).addClass('active');
            var title = $(this).attr('title');
            var url = $(this).data('src');
            self.addTabs(title, url);
        });

        // 用户退出
        $(document).on('click', '.pf-logout', function() {
            layer.confirm('您确定要退出吗？', {
                icon: 4,
                title: '确定退出' //按钮
            }, function() {
                location.href = 'login.html';
            });
        });

        //  左侧菜单收起(全屏显示子窗口)
        $(document).on('click', '.toggle-icon', function() {
            $(this).closest("#pf-bd").toggleClass("toggle");
            setTimeout(function() {
                $(window).resize();
            }, 300)
        });

        // 用户修改密码
        $(document).on('click', '.pf-modify-pwd', function() {
            $('#pf-page').find('iframe').eq(0).attr('src', 'backend/modify_pwd.html')
        });

        // 用户接受通知
        $(document).on('click', '.pf-notice-item', function() {
            $('#pf-page').find('iframe').eq(0).attr('src', 'backend/notice.html')
        });
    },

    // 动态渲染左侧菜单栏
   	render: function(menu){
	    	//大标题
		var current, html = ['<h2 class="pf-model-name"><span class="iconfont">&#xe64a;</span>&nbsp;<span class="pf-name">供应商管理</span><span class="toggle-icon"></span></h2>'];

		for(var j = 0; j < menu.length; j++){
			var subMenu = menu[j];

			//一级标题
			html.push('<ul class="sider-nav"><li><a href="javascript:;"><span class="iconfont sider-nav-icon">'+subMenu.icon+'</span>');
			html.push('<span class="sider-nav-title">'+subMenu.title+'</span><i class="iconfont">&#xe642;</i></a>');
			
			//循环输入二级标题
			html.push('<ul class="sider-nav-s">');

			for(var i = 0, len = subMenu.menu.length; i < len; i++){
				if(subMenu.menu[i].isCurrent){
					current = subMenu.menu[i];
					html.push('<li class="current" title="'+ subMenu.menu[i].title +'" data-src="'+subMenu.menu[i].href +'"><a href="javascript:;">'+subMenu.menu[i].title+'</a></li>');
				}else{
					html.push('<li data-src="'+ subMenu.menu[i].href +'" title="'+ subMenu.menu[i].title +'"><a href="javascript:;">'+subMenu.menu[i].title+'</a></li>');
				}
			}
			html.push('</ul></li></ul>');	
		}
		
//		$('iframe').attr('src', current.href);
		$('#pf-sider').html(html.join(''));
	}
};
