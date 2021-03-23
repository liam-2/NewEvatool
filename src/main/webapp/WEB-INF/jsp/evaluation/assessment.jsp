<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
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

    <!-- home wrapper -->
    <div id="pricing" class="section md-padding">

        <!-- Container -->
        <div class="container">

            <!-- Row -->
            <div class="row">

                <!-- Section header -->
                <div class="section-header text-center">
                    <h2 class="title white-text">推荐结果评估</h2>
                </div>
                <!-- /Section header -->
                <div class="col-md-12">
                    <div class="about white-text">

                        <h3 class="white-text">
                            本平台从推荐准确率、召回率、精确度和f1值等方面进行推荐结果的全面评估，用户只需上传VSCode上面获取到的日志文件，便可以获取到推荐评估的结果。</h3>
                        <a href="${base}/resources/file/log.log" download="log">下载日志样例</a>
                        <br/>
                        <br/>
                        <div class="price-btn">
                            <a href="${base}/assessment/assess">
                                <button class="outline-btn">评估</button>
                            </a>
                        </div>
                    </div>

                </div>


            </div>
            <!-- Row -->

        </div>
        <!-- /Container -->

    </div>
    <!-- /home wrapper -->

</header>
<!-- /Header -->
</body>


</html>
