<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理人员主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" href="<%=basePath%>/css/base.css">
    <link rel="stylesheet" href="<%=basePath%>/css/easyui.css">
    <link rel="stylesheet" href="<%=basePath%>/css/index.css">

  </head>
  
<body>
    <div class="container">
        <div id="hd">
        </div>
        <div id="bd">
            <div class="bd-content">
                <div class="right-zone">
                    <div class="inform item-box">
                        <div class="inform-hd">
                            <label>通知公告</label>
                            <a href="javascript:;">更多<span>&gt;</span></a>
                        </div>
                        <ul>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">uimaker信息管理<i></i></a>
                                <label>04-13</label>
                            </li>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">光电获土耳其最大固网<i></i></a>
                                <label>04-12</label>
                            </li>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">2015中国线缆行业最具竞争</a>
                                <label>04-11</label>
                            </li>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">2016年铝包钢绞线2016管道保温棉询</a>
                                <label>04-10</label>
                            </li>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">力缆（特种导线）再次温棉询</a>
                                <label>04-09</label>
                            </li>
                            <li>
                                <span></span>
                                <a href="javascript:;" class="ellipsis">光电获土耳其最大固网</a>
                                <label>04-08</label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="center-part">
                    <div class="center-items todo">
                        <div class="calendar-part">
                            <div class="easyui-calendar" style="width:205px;height:231px;"></div>
                        </div>
                        <ul class="work-items clearfix">
                            <li>
                                <div class="work-inner">
                                    <div class="work-item green">
                                        <i class="iconfont">&#xe61f;</i>
                                        <span class="num">14&nbsp;<span class="unit">个</span></span>
                                        <label>待办未处理</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="work-inner">
                                    <div class="work-item red">
                                        <i class="iconfont">&#xe622;</i>
                                        <span class="num">6&nbsp;<span class="unit">条</span></span>
                                        <label>预警信息未读</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="work-inner">
                                    <div class="work-item yellow">
                                        <i class="iconfont">&#xe61d;</i>
                                        <span class="num">9&nbsp;<span class="unit">封</span></span>
                                        <label>邮件未读</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="work-inner">
                                    <div class="work-item blue">
                                        <i class="iconfont">&#xe621;</i>
                                        <span title="2000,00万" class="num">2000,00&nbsp;<span class="unit">万</span></span>
                                        <label>我的询价金额</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="work-inner">
                                    <div class="work-item purple">
                                        <i class="iconfont">&#xe61e;</i>
                                        <span title="2000,00万" class="num">100,00&nbsp;<span class="unit">万</span></span>
                                        <label>已完成的合同金额</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="work-inner">
                                    <div class="work-item gray">
                                        <i class="iconfont">&#xe620;</i>
                                        <span class="num">10&nbsp;<span class="unit">个</span></span>
                                        <label>供应商开发</label>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="ft"></div>
    </div>
    <div class="todo-panel">
        <div class="todo-title">
            <i class="iconfont">&#xe61f;</i>
            <span class="num">14&nbsp;<span class="unit">个</span></span>
            <label>待办未处理</label>
        </div>
        <div class="todo-items">
            <ul>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理<i></i></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>10条</span>供应商开发申请未处理<i></i></a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>0条</span>供应商开发申请未处理，请及时审批<i></i></a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>1条</span>供应商开发申请未处理，请及时审批</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>4条</span>供应商开发申请未处理，请及时审批</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>6条</span>供应商开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，会导致失效</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批，未处理</a></a>
                    <label>04-13</label>
                </li>
                <li>
                    <span></span>
                    <a href="javascript:;" class="ellipsis">您有<span>2条</span>供应商开发申请未处理，请及时审批</a></a>
                    <label>04-13</label>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="./script/jquery.min.js"></script>
    <script type="text/javascript" src="./script/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        //我的待办点击事件
        $(document).on('click', '.work-item.green', function(event) {
            var width = (2 * $(this).width()) + 10;
            $(".todo-panel").width(width - 2).css({
                top: $(this).offset().top,
                left: $(this).offset().left
            }).show();
            event.stopPropagation();
        });
        $(".todo-panel").click(function() {
            event.stopPropagation();
        });
        $(document).click(function() {
            $(".todo-panel").hide();
        });

    });
    </script>
</body>
</html>
