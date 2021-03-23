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

    <title>API推荐系统评估</title>


</head>

<body style="background: #B0C4DE">
<!-- Header -->
<header id="home">
    <!-- Background Image -->
    <div class="bg-img" style="background: #B0C4DE"></div>
    <!-- /Background Image -->

    <!-- Nav -->
    <nav id="nav" class="navbar nav-transparent">
        <div class="container">
            <div class="navbar-header">
                <!-- Logo -->
                <%-- <div class="navbar-brand" style="margin-top: 20px;">
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
            <ul class="main-nav nav navbar-nav navbar-right">
                <!-- 				<ul class="nav nav-pills nav-justified"> -->
                <%-- 					<li><a href="${base}/login/home">主页</a></li> --%>
                <%-- 					<li><a href="${base}/relationship/relationship">关联关系提取</a></li> --%>
                <%-- 					<li><a href="${base}/codesearch/codesearch">代码搜索</a></li> --%>
                <li><a href="${base}/login/home">主页</a></li>
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

            <!-- home wrapper -->
            <div class="row">
                <form action="${base}/assessment/doAssess" method="POST">
                    <input type="text" name="toolName" id="toolName"
                           class="form-control" placeholder="推荐工具名称">

                    <!-- <button id="fat-btn" data-loading-text="loading"
                class="btn btn-primary">上传日志文件</button> -->
                    <input type="button" class="btn btn-primary"
                           onclick="select_file()" style="margin-top: 10px" value="上传日志文件">
                    <input type="file" name="file" id="file" onchange="fileUpload()"
                           style="display: none"> <a href="">
                    <sapn>&emsp;&emsp;</sapn>
                    <button type="submit" class="btn  btn-warning"
                            style="margin-top: 10px">&emsp;开始评估&emsp;
                    </button>
                </a>

                </form>
                <sapn>&emsp;&emsp;</sapn>
                <a style="float: right" href="#theeva"> <input type="button"
                                                               class="btn btn-success" onclick="gethistory()"
                                                               id="getallhistorytable" value="历史评估数据">
                </a>

                <%-- 		<a style="float:right" href="${base}/assessment/history"> --%>
                <!-- 		<button class="btn  btn-info" >查看历史评估数据</button> -->
                <!-- 		</a> -->

            </div>
            <br/>
            <br/>
            <!-- 	<div class="row"> -->
            <!-- 		<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12" > -->
            <!-- 			<div class="card" > -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->

            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.accuracy}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#31c92e"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">Accuracy</small> -->
            <!-- 								<h2 class="text-dark mb-0">准确率</h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->
            <!-- 		<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12"> -->
            <!-- 			<div class="card"> -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->
            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.precision}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#5d61bf"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">Precision</small> -->
            <!-- 								<h2 class="text-dark mb-0">精确度</h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->
            <!-- 		<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12"> -->
            <!-- 			<div class="card"> -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->
            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.recall}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#3ebaef"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">Recall</small> -->
            <!-- 								<h2 class="text-dark mb-0">召回率</h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->
            <!-- 		<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12"> -->
            <!-- 			<div class="card"> -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->
            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.f1}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#f47b25"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">F1</small> -->
            <!-- 								<h2 class="text-dark mb-0">F1值</h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->


            <!-- 	<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12"> -->
            <!-- 			<div class="card"> -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->
            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.newCorrect}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#3ebaef"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">Correctness</small> -->
            <!-- 								<h2 class="text-dark mb-0"><a onclick="javascript:correct_func();">正确性</a></h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->
            <!-- 		<div class="col-xl-3 col-lg-6 col-sm-6 col-md-12"> -->
            <!-- 			<div class="card"> -->
            <!-- 				<div class="card-body knob-chart"> -->
            <!-- 					<div class="row mb-0"> -->
            <!-- 						<div class="col-6"> -->
            <!-- 							<div style="float:left ; width:50%;"> -->
            <%-- 								<input type="text" class="knob" disabled="disabled" value="${requestScope.utility}" data-thickness="0.2" data-width="80" data-height="80" data-fgColor="#f47b25"> --%>
            <!-- 							</div> -->
            <!-- 							<div style="float:right ; width:50%;"> -->
            <!-- 								<small class="text-muted mt-0">Usability</small> -->
            <!-- 								<h2 class="text-dark mb-0"><a onclick="javascript:utility_func();">可用性</a></h2> -->
            <!-- 							</div> -->
            <!-- 						</div> -->
            <!-- 					</div> -->
            <!-- 				</div> -->
            <!-- 			</div> -->
            <!-- 		</div> -->
            <!-- 	</div> -->
            <div class="row">
                <div class="col-lg-12 col-sm-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>推荐情况</h4>
                        </div>
                        <div class="card-body">
                            <label for="user" style="display: inline;">共推荐次数：</label> <input
                                type="text" class="form-control" id="user"
                                style="display: inline; width: 200px;" autocomplete="off"
                                disabled="disabled" value="${requestScope.sum}"/> <label
                                for="user" style="display: inline;">推荐正确次数：</label> <input
                                type="text" class="form-control" id="user"
                                style="display: inline; width: 200px;" autocomplete="off"
                                disabled="disabled" value="${requestScope.correct}"/>

                        </div>
                    </div>
                </div>
            </div>
            <div id="main2"
                 style="color: white; width: 80%; height: 400px; margin: 0 auto"></div>
            <script type="text/javascript">
                var evalist = [];
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main2'));
                // data = "${method1}";

                //console.log("${method1}");

                // 指定图表的配置项和数据
                var option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    legend: {
                        data: ['正确推荐次数']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: [
                        {
                            type: 'category',
                            //'axisLabel':{'interval':0,},
                            data: ["准确率", "精度", "召回率", "F1值", "正确性", "可用性"],
                            splitLine: {show: false},
//         	            axisTick:{
//         	            	alignWithLable: true
//         	            },
//         	            axisLable:{
//         	            	formatter: function(value,index){

//         	            		var v=value.substring(0,4)+'...'
//         	            		return value.length>7?v:value

//         	            	}

//         	            }
                            axisLabel: {
                                textStyle: {
                                    color: '#CD5C5C'
                                    // baseline: 'middle'
                                },
                                interval: 0,     //文字全部显示


                            }
                            /* data : ['周六','周日','周六','周日','周六','周六','周日'] */
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        }
                    ],
                    series: [
                        {
                            name: '百分比',
                            type: 'bar',
                            stack: '推荐',
                            data: ["${requestScope.accuracy }", "${requestScope.precision}", "${requestScope.recall}", "${requestScope.f1}", "${requestScope.newCorrect}", "${requestScope.utility}"],
                            itemStyle: {
                                normal: {
                                    color: function (params) {
                                        if (params.value > 0 && params.value < 25) {
                                            return "#D2691E";
                                        } else if (params.value >= 25 && params.value <= 50) {
                                            return "#DAA520";
                                        } else if (params.value >= 50 && params.value <= 75) {
                                            return "#7FFF00";
                                        }
                                        return "#6B8E23";
                                    }
                                }
                            }
                        }


                    ]
                };
                myChart.setOption(option);
            </script>


            <div></div>

            <div id="main"
                 style="color: white; width: 80%; height: 400px; margin: 0 auto"></div>
            <script type="text/javascript">
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main'));
                data = "${method1}";

                console.log("${method1}");

                // 指定图表的配置项和数据
                var option = {
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    legend: {
                        data: ['正确推荐次数', '错误推荐次数']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: [
                        {
                            type: 'category',
                            //'axisLabel':{'interval':0,},
                            data: ["${method1}", "${method2}", "${method3}", "${method4}", "${method5}", "${method6}", "${method7}", "${method8}", "${method9}", "${method10}"],
                            splitLine: {show: false},
//         	            axisTick:{
//         	            	alignWithLable: true
//         	            },
//         	            axisLable:{
//         	            	formatter: function(value,index){

//         	            		var v=value.substring(0,4)+'...'
//         	            		return value.length>7?v:value

//         	            	}

//         	            }
                            axisLabel: {
                                textStyle: {
                                    color: '#CD853F'
                                    // baseline: 'middle'
                                },
                                interval: 0,     //文字全部显示
                                formatter: function (val) {
                                    if (val.length > 8) {
                                        return val.substring(0, 7) + '...';
                                    } else {
                                        return val;
                                    }
                                }

                            }
                            /* data : ['周六','周日','周六','周日','周六','周六','周日'] */
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value'
                        }
                    ],
                    series: [
                        {
                            name: '正确推荐次数',
                            type: 'bar',
                            stack: '推荐',
                            data: ["${method1c}", "${method2c}", "${method3c}", "${method4c}", "${method5c}", "${method6c}", "${method7c}", "${method8c}", "${method9c}", "${method10c}"]
                        },
                        {
                            name: '错误推荐次数',
                            type: 'bar',
                            stack: '推荐',
                            data: ["${method1b}", "${method2b}", "${method3b}", "${method4b}", "${method5b}", "${method6b}", "${method7b}", "${method8b}", "${method9b}", "${method10b}"]
                        }
                    ]
                };
                myChart.setOption(option);
            </script>

            <div style="margin-left: 5%;margin-top: 5%;">
                <ul class="nav nav-list">
                    <li class="divider"></li>
                </ul>
                <table class="table table-striped table-bordered table-hover"
                       style="color: red; display: none;" id="theeva">
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
                    <%-- 	<c:forEach items="${evalist}" var="eva"> --%>
                    <!-- 	<tr> -->
                    <%-- 		<td>${eva.toolName}</td> --%>
                    <%-- 		<td>${eva.type}</td> --%>
                    <%-- 		<td>${eva.precision}</td> --%>
                    <%-- 		<td>${eva.accuracy}</td> --%>
                    <%-- 		<td>${eva.f}</td> --%>
                    <%-- 		<td>${eva.recall}</td> --%>
                    <%-- 		<td>${eva.acc}</td> --%>
                    <%-- 		<td>${eva.utility}</td> --%>
                    <!-- 	</tr> -->
                    <%-- 	</c:forEach> --%>


                </table>
                <div id="main3"
                     style="color: white; width: 1000%; height: 400px; margin: 0 auto; display: none;"></div>
                <script type="text/javascript">
                    // 基于准备好的dom，初始化echarts实例
                    var myChart = echarts.init(document.getElementById('main3'));

                    // 指定图表的配置项和数据
                    var option = {
                        legend: {textStyle: {color: "black"}},
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
                                    color: 'black',
                                }
                            },
                        },
                        yAxis: {
                            axisLine: {
                                lineStyle: {
                                    color: 'black',
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
        </div>
        <!-- /home wrapper -->
    </div>
    </div>
</header>
<!-- /Header -->
<script type="text/javascript">
    function select_file() {
        $("#file").trigger("click");

    }

    function fileUpload() {
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        alert('文件上传成功，请开始评估');
        $.ajax({
            url: '${base}/assessment/fileUpload',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            dataType: 'text',
            success: function (data) {
                alert('上传成功');
            },
            error: function (data, status, e) {
                console.error(e);
            }
        });
    }


    function gethistory() {
        document.getElementById("theeva").style.display = '';
        document.getElementById("main3").style.display = '';
        $.post("/assessment/gethistory", {}, function (data) {
            //从后台传过来的数据
            //alert("666");
            for (i = 0; i < data.length; i++) {
                evalist.push(data[i]);

                var str = "<tr><td value=" + 1 + ">" + data[i].toolName + "</td>";
                // $("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].utilType + "</td>";
                var str = str + "<td value=" + 1 + ">" + data[i].evaPrecision + "</td>";
                //$("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].evaAccuracy + "</td>";
                // $("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].evaFvalue + "</td>";
                //$("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].evaRecall + "</td>";
                //$("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].evaAcc + "</td>";
                // $("#theeva").append(str);
                var str = str + "<td value=" + 1 + ">" + data[i].evaUtility + "</td></tr>";
                $("#theeva").append(str);

            }
            //alert(evalist[0].accuracy);

        });
    }


    // 	$(function() {


    //         $('#gethistory').click(function() {

    //             $.post("${base}/assessment/gethistory", {

    //             }, function(data) {

    //                 alert("666");
    //             });
    //         });

    //     });
    /* 	function assess(){
            $.ajax({
                        url : '${base}/assessment/doAssess',
	                type : 'POST',
	                contentType: false,
	                processData: false,
	                dataType: 'text',
	                
	                success: function(data) { 
	                	
	                    alert("ss");
	                },
	                error: function(data, status, e) {  
	                    console.error(e);
	                }
	            });
	} */
</script>
<script type="text/javascript">
    function correct_func() {
        layer.open({
            type: 2,
            area: ['80%', '60%'],
            shadeClose: true, //点击遮罩关闭
            content: '${base}/assessment/newCorrectness'
        });
    }

    function utility_func() {
        layer.open({
            type: 2,
            area: ['80%', '60%'],
            shadeClose: true, //点击遮罩关闭
            content: '${base}/assessment/utility'
        });
    }
</script>
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
