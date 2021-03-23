<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <link rel="stylesheet" href="${base}/resources/css/style3.css"/>
    <link rel="stylesheet" href="${base}/resources/css/ace.min.css"/>
    <link rel="stylesheet" href="${base}/resources/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${base}/resources/css/codemirror.css"/>
    <link rel="stylesheet" href="${base}/resources/css/icons.css"/>
    <!--Style css-->
    <link rel="stylesheet" href="${base}/resources/css/style2.css"/>
    <!--mCustomScrollbar css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/scroll-bar/jquery.mCustomScrollbar.css"/>
    <!--Sidemenu css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/toggle-menu/sidemenu.css"/>
    <!--Morris css-->
    <link rel="stylesheet"
          href="${base}/resources/plugins/morris/morris.css"/>


    <title></title>
</head>
<body
        style="background-repeat: no-repeat; background-size: cover; background-color: #B0C4DE;">


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

<h2>注释分类统计工具</h2>
<br/>

<div class="row">
    <form action="${base}/comments/begin">
        <input type="text" name="filepath" id="filepath" class="form-control"
               style="width: 98%;" placeholder="请选择处理文件"/> <br/> <input
            type="button" class="outline-btn" onclick="select_file()"
            align="right" value="选择文件"/> <input type="file" name="file"
                                                id="file" webkitdirectory multiple onchange="fileUpload()"
                                                style="display: none"/>

        <button type="submit" class="outline-btn" align="center">开始</button>
        </a>
    </form>
    <br/>
</div>

<div class="container" style="color: black; float: center; width: 75%">
    <h2>注释分布信息表</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="60%">类别</th>
            <th width="40%">数量</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>注释总行数</td>
            <td><input disabled="disabled" value="${requestScope.number1}"
                       style="color: #000000"></input></td>
        </tr>

        <tr bgcolor="#FFFFFF">
            <td>功能注释总行数</td>
            <td><input disabled="disabled" value="${requestScope.number2}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>使用注释总行数</td>
            <td><input disabled="disabled" value="${requestScope.number3}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>结构注释总行数</td>
            <td><input disabled="disabled" value="${requestScope.number4}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>开发注释总行数</td>
            <td><input disabled="disabled" value="${requestScope.number5}"
                       style="color: #000000"></input></td>
        </tr>
        </tbody>
        <tbody>
        <tr bgcolor="#FFFFFF">
            <td>带注释方法总数</td>
            <td><input disabled="disabled" value="${requestScope.number6}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>无注释方法总数</td>
            <td><input disabled="disabled" value="${requestScope.number7}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>带功能注释方法数</td>
            <td><input disabled="disabled" value="${requestScope.number8}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>带使用注释总方法数</td>
            <td><input disabled="disabled" value="${requestScope.number9}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>带结构注释总方法数</td>
            <td><input disabled="disabled"
                       value="${requestScope.number10}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>带开发注释总方法数</td>
            <td><input disabled="disabled"
                       value="${requestScope.number11}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</div>

<br/>

<div class="row main">
    <div class="col-md-1"></div>
    <div class="col-md-5">
        <div id="f2"
             style="color: white; width: 500px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('f2'));
            option = {


                title: {
                    text: '方法注释分布图',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#000000'
                    }
                },

                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },

                visualMap: {
                    show: false,
                    min: 80,
                    max: 2000,
                    inRange: {
                        colorLightness: [0, 1]
                    }
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number6}", name: '带注释方法'},
                            {value: "${requestScope.number7}", name: '不带注释方法'},
                        ].sort(function (a, b) {
                            return a.value - b.value;
                        }),

                        label: {
                            normal: {
                                textStyle: {
                                    color: '#000000'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                lineStyle: {
                                    color: '#000000'
                                },
                                smooth: 0.2,
                                length: 10,
                                length2: 20
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#c23531',
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        },

                        animationType: 'scale',
                        animationEasing: 'elasticOut',
                        animationDelay: function (idx) {
                            return Math.random() * 200;
                        }
                    }
                ]
            };
            myChart.setOption(option);
        </script>
    </div>
    <div class="col-md-4">
        <div id="f1"
             style="color: white; width: 500px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('f1'));
            option = {


                title: {
                    text: '方法注释类别分布图',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#000000'
                    }
                },

                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },

                visualMap: {
                    show: false,
                    min: 80,
                    max: 600,
                    inRange: {
                        colorLightness: [0, 1]
                    }
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number2}", name: '功能注释'},
                            {value: "${requestScope.number3}", name: '使用注释'},
                            {value: "${requestScope.number4}", name: '结构注释'},
                            {value: "${requestScope.number5}", name: '开发注释'},
                        ].sort(function (a, b) {
                            return a.value - b.value;
                        }),

                        label: {
                            normal: {
                                textStyle: {
                                    color: '#000000'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                lineStyle: {
                                    color: '#000000'
                                },
                                smooth: 0.2,
                                length: 10,
                                length2: 20
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#c23531',
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        },

                        animationType: 'scale',
                        animationEasing: 'elasticOut',
                        animationDelay: function (idx) {
                            return Math.random() * 200;
                        }
                    }
                ]
            };
            myChart.setOption(option);

        </script>
    </div>
    <div class="col-md-2"></div>
</div>

<br/>
<br/>

<div class="container" style="color: black; float: center; width: 75%">
    <h2>组合注释统计表</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="60%">类别</th>
            <th width="40%">数量</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>功能注释&使用注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number12}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>功能注释&结构注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number13}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>功能注释&开发注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number14}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>功能注释&使用注释&开发注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number15}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>功能注释&使用注释&结构注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number16}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>功能注释&开发注释&结构注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number17}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>功能注释&使用注释&开发注释&结构注释</td>
            <td><input disabled="disabled"
                       value="${requestScope.number18}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>两类组合总数</td>
            <td><input disabled="disabled"
                       value="${requestScope.number19}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>三类组合总数</td>
            <td><input disabled="disabled"
                       value="${requestScope.number20}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>四类组合总数</td>
            <td><input disabled="disabled"
                       value="${requestScope.number21}" style="color: #000000"></input></td>
        </tr>

        <tr>
            <td></td>
            <td></td>
        </tr>

        </tbody>
    </table>
</div>


<br/>

<div class="row main">
    <div class="col-md-1"></div>
    <div class="col-md-3">
        <div id="f3"
             style="color: white; width: 500px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('f3'));
            option = {


                title: {
                    text: '两类组合分布图',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#000000'
                    }
                },

                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },

                visualMap: {
                    show: false,
                    min: 80,
                    max: 150,
                    inRange: {
                        colorLightness: [0, 1]
                    }
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number12}", name: '功能注释&使用注释'},
                            {value: "${requestScope.number13}", name: '功能注释&结构注释'},
                            {value: "${requestScope.number14}", name: '功能注释&开发注释'},
                        ].sort(function (a, b) {
                            return a.value - b.value;
                        }),

                        label: {
                            normal: {
                                textStyle: {
                                    color: '#000000'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                lineStyle: {
                                    color: '#000000'
                                },
                                smooth: 0.2,
                                length: 10,
                                length2: 20
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#000000',
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        },

                        animationType: 'scale',
                        animationEasing: 'elasticOut',
                        animationDelay: function (idx) {
                            return Math.random() * 200;
                        }
                    }
                ]
            };
            myChart.setOption(option);
        </script>
    </div>
    <div class="col-md-3">
        <div id="f4"
             style="color: white; width: 500px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('f4'));
            option = {


                title: {
                    text: '三类组合分布图',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#000000'
                    }
                },

                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },

                visualMap: {
                    show: false,
                    min: 0,
                    max: 80,
                    inRange: {
                        colorLightness: [0, 1]
                    }
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number15}", name: '功能注释&使用注释&开发注释'},
                            {value: "${requestScope.number16}", name: '功能注释&使用注释&结构注释'},
                            {value: "${requestScope.number17}", name: '功能注释&开发注释&结构注释'},
                        ].sort(function (a, b) {
                            return a.value - b.value;
                        }),

                        label: {
                            normal: {
                                textStyle: {
                                    color: '#000000'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                lineStyle: {
                                    color: '#000000'
                                },
                                smooth: 0.2,
                                length: 10,
                                length2: 20
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#ffffff',
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        },

                        animationType: 'scale',
                        animationEasing: 'elasticOut',
                        animationDelay: function (idx) {
                            return Math.random() * 200;
                        }
                    }
                ]
            };
            myChart.setOption(option);

        </script>
    </div>
    <div class="col-md-3">
        <div id="f5"
             style="color: white; width: 500px; height: 400px; margin: 0 auto"></div>
        <script type="text/javascript">
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('f5'));
            option = {


                title: {
                    text: '总组合分布图',
                    left: 'center',
                    top: 20,
                    textStyle: {
                        color: '#000000'
                    }
                },

                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },

                visualMap: {
                    show: false,
                    min: 80,
                    max: 600,
                    inRange: {
                        colorLightness: [0, 1]
                    }
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number6}", name: '一类组合总数'},
                            {value: "${requestScope.number19}", name: '两类组合总数'},
                            {value: "${requestScope.number20}", name: '三类组合总数'},
                            {value: "${requestScope.number21}", name: '四类组合总数'},
                        ].sort(function (a, b) {
                            return a.value - b.value;
                        }),

                        label: {
                            normal: {
                                textStyle: {
                                    color: '#000000'
                                }
                            }
                        },
                        labelLine: {
                            normal: {
                                lineStyle: {
                                    color: '#000000'
                                },
                                smooth: 0.2,
                                length: 10,
                                length2: 20
                            }
                        },
                        itemStyle: {
                            normal: {
                                color: '#FFFFFF',
                                shadowBlur: 200,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        },

                        animationType: 'scale',
                        animationEasing: 'elasticOut',
                        animationDelay: function (idx) {
                            return Math.random() * 200;
                        }
                    }
                ]
            };
            myChart.setOption(option);

        </script>
    </div>

    <div class="col-md-1"></div>
</div>


<br/>
<br/>

<div class="container" style="color: black; float: center; width: 75%">
    <h2>注释缺失方法表</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="5%">排名</th>
            <th width="20%">方法名</th>
            <th width="20%">方法行数</th>
            <th width="5%">排名</th>
            <th width="20%">方法名</th>
            <th width="20%">方法行数</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td><input disabled="disabled" value="${requestScope.method1}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number22}" style="color: #000000"></input></td>
            <td>11</td>
            <td><input disabled="disabled"
                       value="${requestScope.method11}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number32}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>2</td>
            <td><input disabled="disabled" value="${requestScope.method2}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number23}" style="color: #000000"></input></td>
            <td>12</td>
            <td><input disabled="disabled"
                       value="${requestScope.method12}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number33}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>3</td>
            <td><input disabled="disabled" value="${requestScope.method3}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number24}" style="color: #000000"></input></td>
            <td>13</td>
            <td><input disabled="disabled"
                       value="${requestScope.method13}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number34}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>4</td>
            <td><input disabled="disabled" value="${requestScope.method4}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number25}" style="color: #000000"></input></td>
            <td>14</td>
            <td><input disabled="disabled"
                       value="${requestScope.method14}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number35}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>5</td>
            <td><input disabled="disabled" value="${requestScope.method5}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number26}" style="color: #000000"></input></td>
            <td>15</td>
            <td><input disabled="disabled"
                       value="${requestScope.method15}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number36}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>6</td>
            <td><input disabled="disabled" value="${requestScope.method6}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number27}" style="color: #000000"></input></td>
            <td>16</td>
            <td><input disabled="disabled"
                       value="${requestScope.method16}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number37}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>7</td>
            <td><input disabled="disabled" value="${requestScope.method7}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number28}" style="color: #000000"></input></td>
            <td>17</td>
            <td><input disabled="disabled"
                       value="${requestScope.method17}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number38}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>8</td>
            <td><input disabled="disabled" value="${requestScope.method8}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number29}" style="color: #000000"></input></td>
            <td>18</td>
            <td><input disabled="disabled"
                       value="${requestScope.method18}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number39}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>9</td>
            <td><input disabled="disabled" value="${requestScope.method9}"
                       style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number30}" style="color: #000000"></input></td>
            <td>19</td>
            <td><input disabled="disabled"
                       value="${requestScope.method19}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number40}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>10</td>
            <td><input disabled="disabled"
                       value="${requestScope.method10}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number31}" style="color: #000000"></input></td>
            <td>20</td>
            <td><input disabled="disabled"
                       value="${requestScope.method20}" style="color: #000000"></input></td>
            <td><input disabled="disabled"
                       value="${requestScope.number41}" style="color: #000000"></input></td>
        </tr>

        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        </tbody>
    </table>
</div>


<br/>
<br/>


<script type="text/javascript">
    function select_file() {
        $("#file").trigger("click");

    }

    function fileUpload() {
        var formData = new FormData();
        formData.append('file', $('#file')[0].files[0]);
        alert('文件上传成功，请开始分析');
        alert('解析成功');
        $.ajax({
            url: '${base}/comments/fileUpload',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            dataType: 'text',
            success: function (data) {
                alert('解析成功');
            },
            error: function (data, status, e) {
                console.error(e);
            }
        });
    }
</script>


<script src="${base}/resources/js/jquery.min.js"></script>

<script src="${base}/resources/js/echarts.js"></script>
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
<script src="${base}/resources/js/ace-extra.min.js"></script>
<!--Scripts js-->
<script src="${base}/resources/js/scripts.js"></script>
<script src="${base}/resources/js/apexcharts.js"></script>
<script src="${base}/resources/js/dashboard3.js"></script>
</body>
</html>

