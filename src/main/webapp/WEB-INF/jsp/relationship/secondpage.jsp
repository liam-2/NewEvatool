<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript"
            src="${base}/resources/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript"
            src="${base}/resources/js/jquery.searchableSelect.js"></script>
    <script type="text/javascript" src="${base}/resources/js/Chart.js"></script>
    <script type="text/javascript"
            src="${base}/resources/js/Chart.bundle.js"></script>
    <title>SecondPage</title>
</head>
<body>

<header id="home">
    <!-- Nav  nav-transparent -->
    <nav id="nav" class="navbar">
        <div class="container">
            <div class="navbar-header">
                <!-- Collapse nav button -->
                <div class="nav-collapse">
                    <span></span>
                </div>
                <!-- /Collapse nav button -->
            </div>


            <!--  Main navigation  -->
            <ul class="main-nav nav navbar-nav navbar-right">
                <li><a href="${base}/login/home">主页</a></li>
                <li><a href="${base}/upload/filelist">关联关系提取</a></li>
                <li><a href="${base}/codesearch/codesearch">代码搜索</a></li>
                <li><a href="${base}/recommend/recommend">API推荐</a></li>
                <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
            </ul>
            <!-- /Main navigation -->

        </div>
    </nav>


    <div id="first" style="width: 1000px; height: 600px; left: 350px;"></div>

    <div id="second" style="width: 1000px; height: 400px; left: 350px;"></div>

    <div id="third" style="width: 1000px; height: 600px; left: 350px;"></div>

    <div id="fourth"
         style="margin: auto; width: 1000px; height: 400px; left: 350px;">
        <p style="color: black; font-weight: bold;">基本信息统计</p>
        <table class="table table-bordered table-hover table-condensed"
               style="margin: auto; left: 350px; color: black; font-weight: bold; text-align: center;">
            <tr>
                <td></td>
                <td>Field</td>
                <td>FieldOfMethods</td>
                <td>UselessLinesLOC</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>${fourthnumber[3]}</td>
                <td>${fourthnumber[5]}</td>
                <td>${fourthnumber[9]}</td>
            </tr>
            <tr>
                <td>PerFile</td>
                <td>${fourthper[3]}</td>
                <td>${fourthper[5]}</td>
                <td>${fourthper[9]}</td>
            </tr>
        </table>
        <p style="color: black; font-weight: bold;">代码文件关联关系统计</p>
        <table class="table table-bordered table-hover table-condensed"
               style="color: black; font-weight: bold; left: 350px; text-align: center;">
            <tr>
                <td></td>
                <td>Comments</td>
                <td>Implements</td>
                <td>Extend</td>
                <td>Call</td>
                <td>Import</td>
                <td>Coupling</td>
                <td>RelationFiles</td>
            </tr>
            <tr>
                <td>Total</td>
                <!--<c:forEach var="v" items="${fourthnumber}">
							<td>${v}</td>						
					</c:forEach>-->
                <td>${fourthnumber[7]}</td>
                <td>${fourthnumber[2]}</td>
                <td>${fourthnumber[0]}</td>
                <td>${fourthnumber[1]}</td>
                <td>${fourthnumber[6]}</td>
                <td>${fourthnumber[8]}</td>
                <td><fmt:formatNumber type="number"
                                      value="${fourthnumber[10]/2+1}" maxFractionDigits="0"/></td>
            </tr>
            <tr>
                <td>PerFile</td>
                <!--<c:forEach var="v" items="${fourthper}">
							<td>${v}</td>						
					</c:forEach>
					-->
                <td>${fourthper[7]}</td>
                <td>${fourthper[2]}</td>
                <td>${fourthper[0]}</td>
                <td>${fourthper[1]}</td>
                <td>${fourthper[6]}</td>
                <td>${fourthper[8]}</td>
                <td>${fourthper[10]/2+1}</td>
            </tr>
        </table>
    </div>
    <div id="bottom"
         style="margin: auto; width: 1000px; color: black; font-weight: bold; height: 400px; left: 350px;">
        <a href="${base}/mainpage/firstrelationgragh?dir=${dir}">
            <button style="color: black; font-weight: bold;">类关联关系图</button>
        </a> <a href="${base}/mainpage/secondrelationgragh?dir=${dir}">
        <button style="color: black; font-weight: bold;">方法关联关系图</button>
    </a> <a href="${base}/mainpage/downJsonFiles?dir=${dir}">
        <button style="color: black; font-weight: bold;">下载代码实体详细关联关系</button>
    </a>
    </div>
    <script type="text/javascript">
        var first = echarts.init(document.getElementById('first'));
        var second = echarts.init(document.getElementById('second'));
        var third = echarts.init(document.getElementById('third'));
        // 指定图表的配置项和数据
        var tem = '${second}';
        var second1 = '${second1}';
        var secondnumber = new Array();
        var sdata = new Array();
        for (var i = 1, s = 1, s1 = 1, e = 0, k = 0, j = 0, e1 = 0; i < tem.length; i++) {
            if (tem[i] == ' ') {
                s = i + 1;
            } else if (i == tem.length - 1) {
                e = i;
                sdata[j++] = tem.substring(s, e).substring(0, 6);
            } else if (tem[i] == ",") {
                e = i;
                sdata[j++] = tem.substring(s, e).substring(0, 6);
            }
            if (second1[i] == ' ') {
                s1 = i + 1;
            } else if (i == second1.length - 1) {
                e1 = i;
                secondnumber[k++] = second1.substring(s1, e1);
            } else if (second1[i] == ",") {
                e1 = i;
                secondnumber[k++] = second1.substring(s1, e1);
            }
        }
        var thirdd = '${third}';
        var third1 = '${third1}';
        var tnumber = new Array();
        var tdata = new Array();
        var ttdata = thirdd.split(',');
        for (var i = 1, i1 = 1, s = 1, s1 = 1, e = 0, k = 0, j = 0, e1 = 0; i < thirdd.length
        && tdata.length < 5
        || i1 < third1.length
        && tnumber.length < 5; i++, i1++) {
            if (third[i] == ' ') {
                s = i + 1;
            } else if (i == thirdd.length - 1) {
                e = i;
                tdata[j++] = thirdd.substring(s, e).substring(0, 6);
                s = i + 1;
            } else if (thirdd[i] == ",") {
                e = i;
                tdata[j++] = thirdd.substring(s, e).substring(0, 6);
                s = i + 1;
            }

            if (tnumber.length < 5) {
                if (third1[i1] == ' ') {
                    s1 = i1 + 1;
                } else if (i1 == third1.length - 1) {
                    e1 = i1;
                    tnumber[k++] = third1.substring(s1, e1);
                } else if (third1[i1] == ",") {
                    e1 = i1;
                    tnumber[k++] = third1.substring(s1, e1);
                }
            }
        }
        //  alert(tdata);
        //  alert(tnumber);
        //  alert(sdata);
        var option = {
            title: {
                text: '文件数量分布(横坐标为文件类型)'
            },
            tooltip: {},
            legend: {
                data: ['文件数量']
            },
            xAxis: {
                data: [".java", ".class", ".jar", ".css", ".js", ".html",
                    ".jsp"]
            },
            yAxis: {},
            series: [{
                name: '比例',
                type: 'bar',
                data: ['${firstbar[0]}', '${firstbar[1]}',
                    '${firstbar[2]}', '${firstbar[3]}',
                    '${firstbar[4]}', '${firstbar[5]}',
                    '${firstbar[6]}']
            }]

        };
        var optionsecond = {
            title: {
                text: '文件规模NLOC分布(横坐标为文件名)'
            },
            tooltip: {},
            legend: {
                data: ['文件规模分布']
            },
            xAxis: {
                data: sdata
            },
            yAxis: {},
            series: [{
                name: '比例',
                type: 'bar',
                data: secondnumber
            }]

        };
        var optionthird = {
            title: {
                text: '方法规模NLOC分布(横坐标为方法名)'
            },
            tooltip: {},
            legend: {
                data: ['方法规模分布']
            },
            xAxis: {
                data: tdata
            },
            yAxis: {},
            series: [{
                name: '比例',
                type: 'bar',
                data: tnumber
            }]

        };

        // 使用刚指定的配置项和数据显示图表。
        //  myChart.setOption(option);
        first.setOption(option);
        second.setOption(optionsecond);
        third.setOption(optionthird);
    </script>
</header>
<!-- /Header -->
</body>
</html>