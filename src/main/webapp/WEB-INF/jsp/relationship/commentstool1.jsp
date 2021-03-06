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
            <li><a href="${base}/login/home">??????</a></li>
            <li><a href="${base}/relationship/relationship">??????????????????</a></li>
            <li><a href="${base}/codesearch/codesearch">????????????</a></li>
            <li><a href="${base}/recommend/recommend">API??????</a></li>
            <li><a href="${base}/assessment/assessment">??????????????????</a></li>
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

<h2>????????????????????????</h2>
<br/>

<div class="row">
    <form action="${base}/comments/begin">
        <input type="text" name="filepath" id="filepath" class="form-control"
               style="width: 98%;" placeholder="?????????????????????"/> <br/> <input
            type="button" class="outline-btn" onclick="select_file()"
            align="right" value="????????????"/> <input type="file" name="file"
                                                id="file" webkitdirectory multiple onchange="fileUpload()"
                                                style="display: none"/>

        <button type="submit" class="outline-btn" align="center">??????</button>
        </a>
    </form>
    <br/>
</div>

<div class="container" style="color: black; float: center; width: 75%">
    <h2>?????????????????????</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="60%">??????</th>
            <th width="40%">??????</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>???????????????</td>
            <td><input disabled="disabled" value="${requestScope.number1}"
                       style="color: #000000"></input></td>
        </tr>

        <tr bgcolor="#FFFFFF">
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number2}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number3}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number4}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number5}"
                       style="color: #000000"></input></td>
        </tr>
        </tbody>
        <tbody>
        <tr bgcolor="#FFFFFF">
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number6}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>?????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number7}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>????????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number8}"
                       style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>???????????????????????????</td>
            <td><input disabled="disabled" value="${requestScope.number9}"
                       style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>???????????????????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number10}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>???????????????????????????</td>
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
            // ??????????????????dom????????????echarts??????
            var myChart = echarts.init(document.getElementById('f2'));
            option = {


                title: {
                    text: '?????????????????????',
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
                        name: '????????????',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number6}", name: '???????????????'},
                            {value: "${requestScope.number7}", name: '??????????????????'},
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
            // ??????????????????dom????????????echarts??????
            var myChart = echarts.init(document.getElementById('f1'));
            option = {


                title: {
                    text: '???????????????????????????',
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
                        name: '????????????',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number2}", name: '????????????'},
                            {value: "${requestScope.number3}", name: '????????????'},
                            {value: "${requestScope.number4}", name: '????????????'},
                            {value: "${requestScope.number5}", name: '????????????'},
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
    <h2>?????????????????????</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="60%">??????</th>
            <th width="40%">??????</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number12}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number13}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number14}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>????????????&????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number15}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>????????????&????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number16}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>????????????&????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number17}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>????????????&????????????&????????????&????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number18}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>??????????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number19}" style="color: #000000"></input></td>
        </tr>
        <tr>
            <td>??????????????????</td>
            <td><input disabled="disabled"
                       value="${requestScope.number20}" style="color: #000000"></input></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td>??????????????????</td>
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
            // ??????????????????dom????????????echarts??????
            var myChart = echarts.init(document.getElementById('f3'));
            option = {


                title: {
                    text: '?????????????????????',
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
                        name: '????????????',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number12}", name: '????????????&????????????'},
                            {value: "${requestScope.number13}", name: '????????????&????????????'},
                            {value: "${requestScope.number14}", name: '????????????&????????????'},
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
            // ??????????????????dom????????????echarts??????
            var myChart = echarts.init(document.getElementById('f4'));
            option = {


                title: {
                    text: '?????????????????????',
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
                        name: '????????????',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number15}", name: '????????????&????????????&????????????'},
                            {value: "${requestScope.number16}", name: '????????????&????????????&????????????'},
                            {value: "${requestScope.number17}", name: '????????????&????????????&????????????'},
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
            // ??????????????????dom????????????echarts??????
            var myChart = echarts.init(document.getElementById('f5'));
            option = {


                title: {
                    text: '??????????????????',
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
                        name: '????????????',
                        type: 'pie',
                        radius: '55%',
                        center: ['50%', '50%'],
                        data: [
                            {value: "${requestScope.number6}", name: '??????????????????'},
                            {value: "${requestScope.number19}", name: '??????????????????'},
                            {value: "${requestScope.number20}", name: '??????????????????'},
                            {value: "${requestScope.number21}", name: '??????????????????'},
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
    <h2>?????????????????????</h2>
    <br/>
    <p></p>
    <table class="table">
        <thead>
        <tr>
            <th width="5%">??????</th>
            <th width="20%">?????????</th>
            <th width="20%">????????????</th>
            <th width="5%">??????</th>
            <th width="20%">?????????</th>
            <th width="20%">????????????</th>
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
        alert('????????????????????????????????????');
        alert('????????????');
        $.ajax({
            url: '${base}/comments/fileUpload',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            dataType: 'text',
            success: function (data) {
                alert('????????????');
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

