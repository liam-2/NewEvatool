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


<!-- about -->
<div class="col-md-12">
    <div class="about white-text">

        <h3 class="white-text">标准化注释模型</h3>
        </br>
        <p>
            标准化注释模型针对目前代码注释信息不规范的问题(例如代码信息编写随意，信息缺失，无效信息等)，将注释代码进行标准化建模。标准化注释模型从不同的侧面描述代码信息，分别为：功能信息，使用信息，结构信息，开发信息；开发者从模型的不同部分获取所需要的相应信息，从而增强了代码注释的可理解性，并利于代码的维护和重用，以及为未来代码及文档相关研究提供基础。</p>
        </br> <a href="${base}/comments/tool1" style="font-size: 19px;"> 模型工具</a>
    </div>
</div>
<div class="col-md-3">
    <div class="about white-text">

        <h3 class="white-text">功能注释</h3>
        </br>
        <p align="left">功能注释是对代码功能的描述，该类注释包括了代码块实现的功能或承担的任务，或者开发者想要实现的预期效果。</p>
        <a href="">详情</a>

    </div>
</div>

<!-- about -->
<div class="col-md-3">
    <div class="about white-text">
        <h3 class="white-text">使用注释</h3>
        </br>
        <p align="left">使用注释描述了代码块在在被调用需要使用的信息，该类注释包含的使用信息分为包括方法的参数，返回值。
        </p>

        <a href="">详情</a>

    </div>
</div>
<!-- /about -->

<!-- about -->
<div class="col-md-3">
    <div class="about white-text">

        <h3 class="white-text">结构注释</h3>
        </br>
        <p align="left">结构注释描述该代码块与其他代码块的关系，该类注释包含的结构信息分为聚合关系，继承关系，调用关系，异常抛出。</p>
        <a href="">详情</a>

    </div>
</div>
<!-- /about -->

<!-- about -->
<div class="col-md-3">
    <div class="about white-text">

        <h3 class="white-text">开发注释</h3>
        </br>
        <p align="left">开发注释描述了代码块在开发维护时的信息，该类注释包含的开发注释包括开发时间，开发人员，代码版本以及许可证信息。</p>
        <a href="">详情</a>

    </div>
</div>
<!-- /about -->

<!-- about -->
<div class="col-md-6">
    <div class="about white-text">
        <a href="${base}/comments/tool1" style="font-size: 23px;">批处理工具</a>

    </div>
</div>
<!-- /about -->

<!-- about -->
<div class="col-md-6">
    <div class="about white-text">
        <a href="${base}/comments/tool2" style="font-size: 23px;">文本处理工具</a>
    </div>
</div>
<!-- /about -->


</br>
</br>

<%-- <!--实时交易记录-->
         <div class="clearfix">
          <div class="Order_Statistics " style="width:49.4%">
      <div class="title_name">注释统计信息</div>
       <table class="table table-bordered">
       <tbody>

       <tr >
           <td class="name"><font color="white">注释方法数:</font></td>
           <td class="munber"><input   disabled ="disabled" value="${requestScope.number1}"></input>&nbsp;<font color="white">个</font></td>
           </tr>
       <tr>
           <td class="name"><font color="white">四类注释：</font></td>
           <td class="munber"><input  disabled ="disabled" value="${requestScope.number2}"></input>&nbsp;<font color="white">个</font></td>
           </tr>
       <tr>
           <td class="name"><font color="white">三类注释：</font></td>
           <td class="munber"><input  disabled ="disabled" value="${requestScope.number3}"></input>&nbsp;<font color="white">个</font></td>
           </tr>
       <tr>
           <td class="name"><font color="white">两类注释：</font></td>
           <td class="munber"><input  disabled ="disabled" value="${requestScope.number4}"></input>&nbsp;<font color="white">个</font></td>
           </tr>

       </tbody>
      </table>
     </div>


     <div class="news_style" style="width:49%">
      <div class="title_name">最新消息</div>
      <ul class="list">
       <li><i class="icon-bell red"></i><font color="white"><input  disabled ="disabled" value="${requestScope.list1}"></font></li>
       <li><i class="icon-bell red"></i><font color="white"><input  disabled ="disabled" value="${requestScope.list2}"></font></li>
       <li><i class="icon-bell red"></i><font color="white"><input  disabled ="disabled" value="${requestScope.list3}"></font></li>
       <li><i class="icon-bell red"></i><font color="white"><input  disabled ="disabled" value="${requestScope.list4}"></font></li>
       <li><i class="icon-bell red"></i><font color="white"><input  disabled ="disabled" value="${requestScope.list5}"></font></li>
      </ul>
     </div>
     </div>

 </div> --%>


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