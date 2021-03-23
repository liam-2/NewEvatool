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
    <%-- 	<div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg'); background-position: center 0; --%>
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
                <div class="text-primary" style="font-size:150%;font-style:italic;margin-top:20%;">API推荐评估系统</div>
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
            <ul class="main-nav nav navbar-nav navbar-right">
                <!-- 				<ul class="nav nav-pills nav-justified "> -->
                <li><a style="margin: 30px;" href="${base}">主页</a></li>
                <!-- 					<li><a href="javascript:js_method();">关联关系提取</a></li> -->
                <!-- 					<li><a style=" margin:30px;" href="javascript:js_method();">代码搜索</a></li> -->
                <li><a style="margin: 30px;" href="javascript:js_method();">API推荐</a></li>
                <li><a style="margin: 30px;" href="javascript:js_method();">推荐结果评估</a></li>

                <!-- 					<li><a style=" margin:30px;" href="#team">关于我们</a></li> -->
            </ul>
            <!-- /Main navigation -->

        </div>
    </nav>
    <!-- /Nav -->

    <a role="button" href="login.jsp" class="btn  btn-primary"
       style="opacity: 0.5; width: 16%; height: 8%; position: absolute; bottom: 10%; left: 32%; font-size: 150%;">登陆</a>
    <a role="button" href="register.jsp"
       class="btn  btn btn-warning"
       style="opacity: 0.5; width: 16%; height: 8%; position: absolute; bottom: 10%; right: 32%; font-size: 150%;">注册</a>
</header>
<!-- /Header -->


</body>
<script type="text/javascript">
    function js_method() {
        alert("您还没有登录，请登录...");
        window.document.location.href = "views/login.jsp";
    }
</script>

</html>
