<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>实体关系</title>
    <link type="text/css" rel="stylesheet"
          href="${base}/resources/css/Chart.css"/>
    <!-- <link type="text/css" rel="stylesheet" href="${base}/resources/css/Chart.min.css" /> -->
    <link type="text/css" rel="stylesheet"
          href="${base}/resources/css/jquery.searchableSelect.css"/>
    <style>
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            padding: 12px 16px;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<script type="text/javascript"
        src="${base}/resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
        src="${base}/resources/js/jquery.searchableSelect.js"></script>
<script type="text/javascript" src="${base}/resources/js/Chart.js"></script>
<script type="text/javascript"
        src="${base}/resources/js/Chart.bundle.js"></script>


<body>
<!-- Header -->
<header id="home">
    <!-- Background Image -->
    <div class="bg-img"
         style="background-image: url('${base}/resources/img/2.jpg');">
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
                            class="logo-alt" src="${base}/resources/img/4.png" alt="logo">
                    </a>
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

        </div>
    </nav>
    <!-- /Nav -->
    <div class="content">
        <select id="sel">
            <option value="代码行数">代码行数</option>
            <option value="平均代码行">平均代码行数</option>
            <option value="子类">子类</option>
            <option value="继承深度">继承深度</option>
        </select> <select id="sel1">
        <option value="柱状图">柱状图</option>
        <option value="饼状图">饼状图</option>
        <option value="折线图">折线图</option>
        <option value="梯图">梯图</option>
    </select>

        <button id="show" type="button" class="btn btn-primary" id="btn"
                value="展示">展示
        </button>


        <select id="sel2">
            <option value="JSON">柱状图</option>
            <option value="XML">饼状图</option>
        </select>
        <button type="button" class="btn btn-primary" id="btn" value="导出">导出</button>
    </div>
    <script>
        $(function () {
            $('select').searchableSelect();
        });
    </script>


    <!-- there are graphs of the data
  create by idealzhang
  begin:2019-7-9 13:22
 -->
    <div id="main" style="width: 600px; height: 400px;"></div>
    <div id="first" style="width: 600px; height: 400px;"></div>
    <!-- end -->

    <!--
this is the begin to init graph;
-->
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var first = echarts.init(document.getElementById('first'));
        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '代码解析'
            },
            tooltip: {},
            legend: {
                data: ['代码解析']
            },
            xAxis: {
                data: ["project1", "project2", "project3", "project4", "project5", "project6"]
            },
            yAxis: {},
            series: [{
                name: '比例',
                type: 'pie',
                data: [5, 20, 36, 10, 10, 20]
            }]
        };


        var optionfirst = {
            title: {
                text: '代码解析'
            },
            tooltip: {},
            legend: {
                data: ['代码解析']
            },
            xAxis: {
                data: ["project1", "project2", "project3", "project4", "project5", "project6"]
            },
            yAxis: {},
            series: [{
                name: '比例',
                type: 'bar',
                data: [5, 20, 36, 10, 10, 20]
            }]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        first.setOption(optionfirst);
    </script>

    <!-- end -->


    <!-- 		<div style="padding: 100px 100px 10px;">
<form class="bs-example bs-example-form" role="form">
    <div class="input-group input-group-lg">
        <span class="input-group-addon">@</span>
        <input type="text" class="form-control" placeholder="Twitterhandle">
    </div>
    <br>
    <div class="input-group">
        <span class="input-group-addon">@</span>
        <input type="text" class="form-control" placeholder="Twitterhandle">
    </div>
    <br>
    <div class="input-group input-group-sm">
        <span class="input-group-addon">@</span>
        <input type="text" class="form-control" placeholder="Twitterhandle">
    </div>
</form>
</div>
-->

</header>
<div class="dropdown">
    <span>鼠标移动到我这！</span>
    <div class="dropdown-content">
        <p>菜鸟教程</p>
        <p>www.runoob.com</p>
    </div>
</div>

<div style="width: 500px; height: 400px;">
    <canvas id="myChart"></canvas>
</div>

</body>

</html>