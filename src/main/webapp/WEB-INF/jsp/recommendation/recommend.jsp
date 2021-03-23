<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
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
    <%-- 		<div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg');"> --%>
    <!-- 		<div class="bg-img" style="background: #B0C4DE"> -->
    <div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg');">
        <div class="overlay"></div>
    </div>
    <!-- /Background Image -->

    <!-- Nav -->
    <nav id="nav" class="navbar nav-transparent">
        <div class="container">
            <div class="navbar-header">
                <!-- Logo -->
                <!-- 					<div class="navbar-brand" style="margin-top: 20px;"> -->
                <!-- 						<a href="index.html"> <img class="logo" -->
                <%-- 							src="${base}/resources/img/4.png" alt="logo"> <img --%>
                <%-- 							class="logo-alt" src="${base}/resources/img/4.png" alt="logo"> --%>
                <!-- 						</a> -->
                <!-- 					</div> -->
                <!-- /Logo -->

                <!-- Collapse nav button -->
                <div class="nav-collapse">
                    <span></span>
                </div>
                <!-- /Collapse nav button -->
            </div>


            <!--  Main navigation  -->
            <!-- 				<ul class="main-nav nav navbar-nav navbar-right"> -->
            <ul class="main-nav nav navbar-nav navbar-right">
                <!-- 				<ul class="nav nav-pills nav-justified"> -->
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

        </div>
    </nav>
    <!-- /Nav -->


    <div id="about" class="section">
        <div class="container">
            <div class="row">
                <!--<div class="view">
			<div class="jumbotron rounded bg-trans-dark" contenteditable="true">
				<h1>HiRec</h1>
				<p>
					HiRec是一个基于层次上下文的API推荐工具，它利用了项目自有代码中的上下文信息。实验表明，该技术在top-5和top-10的准确率指标上优于其他同类技术。
				</p> <img src="${base}/resources/img/recom.jpg" class="img-rounded" height="750" align="middle">
				<p>
					<a class="btn btn-primary-outline btn-large" href="#">查看详情</a>
				</p>
			</div>
		</div> -->
                <div class="view view col-md-10 col-md-offset-2">
                    <video autoplay="" muted="" loop="" height="395"
                           style="box-shadow: 1px 1px 10px grey" controls="controls">
                        <source src="${base}/resources/img/demo.mp4" type="video/mp4">
                    </video>

                </div>
            </div>
        </div>
    </div>
    </div>

</header>
<!-- /Header -->

</body>


</html>
