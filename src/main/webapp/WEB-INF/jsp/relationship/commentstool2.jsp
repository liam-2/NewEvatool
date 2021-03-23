<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" href="${base}/resources/css/style3.css"/>
    <link rel="stylesheet" href="${base}/resources/css/ace.min.css"/>
    <link rel="stylesheet" href="${base}/resources/css/font-awesome.min.css"/>
    <link href="${base}/resources/css/codemirror.css" rel="stylesheet">

    <script src="${base}/resourcesjs/ace-extra.min.js"></script>
    <link rel="stylesheet" href="${base}/resources/css/icons.css">
    <!--Style css-->
    <link rel="stylesheet" href="${base}/resources/css/style2.css">
    <!--mCustomScrollbar css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/scroll-bar/jquery.mCustomScrollbar.css">
    <!--Sidemenu css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/toggle-menu/sidemenu.css">
    <!--Morris css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/morris/morris.css">


    <script src="${base}/resourcesjs/jquery.min.js"></script>
    <!-- <![endif]-->
    <script src="${base}/resources/echarts.js"></script>

    <title></title>
</head>
<body>
<!-- Background Image -->
<div class="bg-img"
     style="background-image: url('${base}/resources/img/2.jpg');height:100%;">
    <div class="overlay"></div>
</div>
<!-- /Background Image -->

<!-- Nav -->
<nav id="nav" class="navbar nav-transparent">
    <div class="container">
        <div class="navbar-header">
            <!-- Logo -->
            <div class="navbar-brand" style="margin-top: 20px;">
                <a href="index.html"> <img class="logo"
                                           src="${base}/resources/img/4.png" alt="logo"> <img
                        class="logo-alt" src="${base}/resources/img/4.png" alt="logo"></a>
            </div>
            <!-- /Logo -->

            <!-- Collapse nav button -->
            <div class="nav-collapse">
                <span></span>
            </div>
            <!-- /Collapse nav button -->
        </div>


        <!--  Main navigation  -->
        <ul class="main-nav nav navbar-nav navbar-right">
            <li><a href="${base}/login/home">主页</a></li>
            <li><a href="${base}/relationship/relationship">关联关系提取</a></li>
            <li><a href="${base}/codesearch/codesearch">代码搜索</a></li>
            <li><a href="${base}/recommend/recommend">API推荐</a></li>
            <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
        </ul>
        <!-- /Main navigation -->
        <br/>
        <br/>
    </div>
</nav>
<!-- /Nav -->
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>


<div class="container" style="color: white; float: left; width: 49%">
    <h2>表格</h2>
    <p>.active 类将悬停的颜色应用在行或者单元格上:</p>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Firstname</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Anna</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Debbie</td>
        </tr>
        <tr>
            <td>3</td>
            <td>John</td>
        </tr>
        </tbody>
    </table>
</div>
<div class="container" style="color: white; float: right; width: 49%">
    <h2>表格</h2>
    <p>.active 类将悬停的颜色应用在行或者单元格上:</p>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Firstname</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>Anna</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Debbie</td>
        </tr>
        <tr>
            <td>3</td>
            <td>John</td>
        </tr>
        </tbody>
    </table>
</div>

<div id="main" style="width: 100%; height: 400px; float: left"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '南丁格尔玫瑰图',
            subtext: '纯属虚构',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            x: 'center',
            y: 'bottom',
            data: ['rose1', 'rose2', 'rose3', 'rose4', 'rose5', 'rose6', 'rose7', 'rose8']
        },
        toolbox: {
            show: true,
            feature: {
                mark: {show: true},
                dataView: {show: true, readOnly: false},
                magicType: {
                    show: true,
                    type: ['pie', 'funnel']
                },
                restore: {show: true},
                saveAsImage: {show: true}
            }
        },
        calculable: true,
        series: [
            {
                name: '半径模式',
                type: 'pie',
                radius: [20, 110],
                center: ['25%', '50%'],
                roseType: 'radius',
                label: {
                    normal: {
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                lableLine: {
                    normal: {
                        show: false
                    },
                    emphasis: {
                        show: true
                    }
                },
                data: [
                    {value: 10, name: 'rose1'},
                    {value: 5, name: 'rose2'},
                    {value: 15, name: 'rose3'},
                    {value: 25, name: 'rose4'},
                    {value: 20, name: 'rose5'},
                    {value: 35, name: 'rose6'},
                    {value: 30, name: 'rose7'},
                    {value: 40, name: 'rose8'}
                ]
            },
            {
                name: '面积模式',
                type: 'pie',
                radius: [30, 110],
                center: ['75%', '50%'],
                roseType: 'area',
                data: [
                    {value: 10, name: 'rose1'},
                    {value: 5, name: 'rose2'},
                    {value: 15, name: 'rose3'},
                    {value: 25, name: 'rose4'},
                    {value: 20, name: 'rose5'},
                    {value: 35, name: 'rose6'},
                    {value: 30, name: 'rose7'},
                    {value: 40, name: 'rose8'}
                ]
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>


<script src="${base}/resources/js/jquery.min.js"></script>

<!--popper js-->
<script src="${base}/resources/js/popper.js"></script>

<!--Tooltip js-->
<script src="${base}/resources/js/tooltip.js"></script>

<!--Bootstrap.min js-->
<script src="${base}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>

<!--Jquery.nicescroll.min js-->
<script
        src="${base}/resources/plugins/nicescroll/jquery.nicescroll.min.js"></script>

<!--Scroll-up-bar.min js-->
<script
        src="${base}/resources/plugins/scroll-up-bar/dist/scroll-up-bar.min.js"></script>

<!--mCustomScrollbar js-->
<script
        src="${base}/resources/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

<!--Sidemenu js-->
<script src="${base}/resources/plugins/toggle-menu/sidemenu.js"></script>

<!--Jquery.knob js-->
<script src="${base}/resources/plugins/othercharts/jquery.knob.js"></script>

<!--Jquery.sparkline js-->
<script
        src="${base}/resources/plugins/othercharts/jquery.sparkline.min.js"></script>

<!--othercharts js-->
<script src="${base}/resources/js/othercharts.js"></script>

<!--Morris js-->
<script src="${base}/resources/plugins/morris/morris.min.js"></script>
<script src="${base}/resources/plugins/morris/raphael.min.js"></script>

<!--Scripts js-->
<script src="${base}/resources/js/scripts.js"></script>
<script src="${base}/resources/js/apexcharts.js"></script>
<script src="${base}/resources/js/dashboard3.js"></script>
</body>
</html>
<script type="text/javascript">
    //面包屑返回值
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.iframeAuto(index);
    $('.no-radius').on('click', function () {
        var cname = $(this).attr("title");
        var chref = $(this).attr("href");
        var cnames = parent.$('.Current_page').html();
        var herf = parent.$("#iframe").attr("src");
        parent.$('#parentIframe').html(cname);
        parent.$('#iframe').attr("src", chref).ready();
        ;
        parent.$('#parentIframe').css("display", "inline-block");
        parent.$('.Current_page').attr({"name": herf, "href": "javascript:void(0)"}).css({
            "color": "#4c8fbd",
            "cursor": "pointer"
        });
        //parent.$('.Current_page').html("<a href='javascript:void(0)' name="+herf+" class='iframeurl'>" + cnames + "</a>");
        parent.layer.close(index);

    });
    $(document).ready(function () {

        $(".t_Record").width($(window).width() - 640);
        //当文档窗口发生改变时 触发
        $(window).resize(function () {
            $(".t_Record").width($(window).width() - 640);
        });
    });