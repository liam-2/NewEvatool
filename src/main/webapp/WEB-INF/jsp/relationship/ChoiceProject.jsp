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

    <style type="text/css">
        table.imagetable {
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
        }

        table.imagetable th {
            background: #b5cfd2 url('cell-blue.jpg');
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
        }

        table.imagetable td {
            background: #dcddc0 url('cell-grey.jpg');
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
        }
    </style>
    <style type="text/css">
        #outer {
            position: relative;
            top: 20%;
        }

        #inner {
            position: absolute;
            top: 40%;
            left: 30%;
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
                <li><a href="${base}">主页</a></li>
                <li><a href="${base}/relationship/relationship">关联关系提取</a></li>
                <li><a href="${base}/codesearch/codesearch">代码搜索</a></li>
                <li><a href="${base}/recommend/recommend">API推荐</a></li>
                <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
            </ul>
            <!-- /Main navigation -->

        </div>
    </nav>


    <!-- this is the area of file directories    imagetable  inner -->
    <div id="outer">
        <div id="card-body knob-chart">
            <table class="table table-bordered table-hover table-condensed">
                <tr>
                    <td>项目路径</td>
                    <td>获取关系</td>
                    <td>获取关系</td>
                </tr>
                <c:forEach var="v" items="${res}">
                    <tr>
                        <td>${v}</td>
                        <td><a href="${base}/upload/result?dir=${v}">提取代码关系</a></td>
                        <td><a href="${base}/gragh/skip?dir=${v}">点状图</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <!-- this is the end of directories end -->


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












