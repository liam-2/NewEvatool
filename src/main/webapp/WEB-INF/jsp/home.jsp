<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="inc/defaultInc.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>API推荐系统评估</title>


</head>

<body>
<!-- Header -->
<header id="home">
    <!-- Background Image -->
    <%-- 		<div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg'); background-position: center 0; --%>
    <!--   background-repeat: no-repeat; -->
    <!--   background-attachment: fixed; -->
    <!--   background-size: cover; -->
    <!--   -webkit-background-size: cover; -->
    <!--   -o-background-size: cover; -->
    <!--   -moz-background-size: cover; -->
    <%--   -ms-background-size: cover;"> --%>
    <div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg');">
        <!-- 		<div class="bg-img" style="background: #B0C4DE"> -->
        <div class="overlay"></div>
    </div>
    <!-- /Background Image -->

    <!-- Nav -->
    <nav id="nav" class="navbar nav-transparent">
        <div class="container">
            <div class="navbar-header">
                <div class="text-primary" style="font-size:150%;font-style:italic;margin-top:5%;">API推荐评估系统</div>
                <!-- Logo -->
                <!-- <div class="navbar-brand" style="margin-top: 20px;"> -->
                <!-- 						<a href="index.html"> -->
                <%-- 							<img class="logo" src="${base}/resources/img/4.png" alt="logo"> --%>
                <%-- 							<img class="logo-alt" src="${base}/resources/img/4.png" alt="logo"> --%>
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
            <!-- 				<ul class="nav nav-pills nav-justified"> -->
            <ul class="main-nav nav navbar-nav navbar-right">
                <li><a href="/login/home">主页</a></li>
                <%-- 					<li><a href="${base}/relationship/relationship">关联关系提取</a></li> --%>
                <%-- 					<li><a href="${base}/codesearch/codesearch">代码搜索</a></li> --%>
                <li><a href="/recommend/recommend">API推荐</a></li>
                <li><a href="/assessment/assessment">推荐结果评估</a></li>

                <!-- 					<li><a href="#team">关于我们</a></li> -->
                <li><a
                        style="color: green; font-size: 16px; display: block; text-align: left;">欢迎用户：${sessionScope.user.userName}</a>
                </li>

            </ul>

            <!-- /Main navigation -->

        </div>

    </nav>
    <!-- /Nav -->
    <!-- home wrapper -->
    <div class="home-wrapper">
        <div class="container">
            <div class="row">

                <!-- home content -->
                <div class="col-md-10 col-md-offset-1">
                    <div class="home-content">
                        <h1 class="white-text">东南大学软件工程研究所</h1>
                        <p class="white-text">
                            全面开展软件工程及其相关领域的学术研究，出高水平的研究成果；全面开展软件工程实践探索，使之直接服务于社会、造福于人民；培养软件工程领域的高级研究人才和工程技术人才，为我国软件技术研究和软件产业发展做出我们的贡献。
                        </p>
                    </div>
                </div>
                <!-- /home content -->

            </div>
        </div>
    </div>
    <!-- /home wrapper -->

</header>
<!-- /Header -->
<!-- Team -->

<!-- Team -->

</body>


</html>
