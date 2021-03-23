<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<!--Icons css-->
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
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>东南大学软件工程研究所</title>


</head>

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
                <%-- <!-- Logo -->
                <div class="navbar-brand" style="margin-top: 20px;">
                    <a href="index.html">
                        <img class="logo" src="${base}/resources/img/4.png" alt="logo">
                        <img class="logo-alt" src="${base}/resources/img/4.png" alt="logo">
                    </a>
                </div> --%>
                <!-- /Logo -->

                <!-- Collapse nav button -->
                <div class="nav-collapse">
                    <span></span>
                </div>
                <!-- /Collapse nav button -->
            </div>


            <!--  Main navigation  -->
            <ul class="nav nav-pills nav-justified">
                <li><a href="${base}/login/home">主页</a></li>
                <%-- 					<li><a href="${base}/relationship/relationship">关联关系提取</a></li> --%>
                <%-- 					<li><a href="${base}/codesearch/codesearch">代码搜索</a></li> --%>
                <li><a href="${base}/recommend/recommend">API推荐</a></li>
                <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
                <li><a
                        style="color: green; font-size: 16px; display: block; text-align: left;">当前用户：${sessionScope.user.userName}</a>
                </li>
            </ul>
            <!-- /Main navigation -->
            <br/>
            <br/>
        </div>
    </nav>
    <!-- /Nav -->
    <!-- home wrapper -->
    <div id="pricing" class="section md-padding">
        <!-- Container -->
        <div class="container">
            <table class="table table-bordered" style="color: white;">
                <tr>
                    <td>工具名</td>
                    <td>工具类型</td>
                    <td>精确度</td>
                    <td>准确率</td>
                    <td>F1</td>
                    <td>召回率</td>
                    <td>正确性</td>
                    <td>可用性</td>
                </tr>
                <c:forEach items="${evaLists}" var="eva">
                    <tr>
                        <td>${eva.toolName}</td>
                        <td>${eva.type}</td>
                        <td>${eva.precision}</td>
                        <td>${eva.accuracy}</td>
                        <td>${eva.f}</td>
                        <td>${eva.recall}</td>
                        <td>${eva.acc}</td>
                        <td>${eva.utility}</td>
                    </tr>
                </c:forEach>

            </table>
        </div>
        </br>
        </br>
        <div id="main"
             style="color: white; width: 80%; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            // 指定图表的配置项和数据
            var option = {
                legend: {textStyle: {color: "white"}},
                tooltip: {},
                dataset: {
                    source: [
                        ['product', '2015', '2016', '2017'],
                        ['精确度', 43.3, 85.8, 93.7],
                        ['准确率', 83.1, 73.4, 55.1],
                        ['F1', 86.4, 65.2, 82.5],
                        ['召回率', 72.4, 53.9, 39.1]
                        /* ['准确性', 72.4, 53.9, 39.1]
                        ['实用性', 72.4, 53.9, 39.1] */
                    ]
                },
                xAxis: {
                    type: 'category',
                    axisLine: {
                        lineStyle: {
                            color: 'white',
                        }
                    },
                },
                yAxis: {
                    axisLine: {
                        lineStyle: {
                            color: 'white',
                        }
                    },
                },
                // Declare several bar series, each will be mapped
                // to a column of dataset.source by default.
                series: [
                    {type: 'bar'},
                    {type: 'bar'},
                    {type: 'bar'}
                ]
            };
            myChart.setOption(option);
        </script>

    </div>
    <!-- /home wrapper -->

</header>
<!-- /Header -->

<!--Jquery.min js-->
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
