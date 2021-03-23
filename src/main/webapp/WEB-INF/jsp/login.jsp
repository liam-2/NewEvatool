<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="inc/defaultInc.jsp" %>
<html>
<head>
    <title>登录页</title>
</head>

<body>
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
    <!-- 		<div class="bg-img" style="background: #B0C4DE"> -->
    <div class="bg-img" style="background-image: url('${base}/resources/img/2.jpg');">
        <div class="overlay"></div>
    </div>
    <!-- /Background Image -->

    <!-- home wrapper -->
    <div class="home-wrapper">
        <div class="container">
            <div class="row">

                <!-- home content -->
                <div class="col-md-10 col-md-offset-1">
                    <div class="home-content">
                        <h1 class="white-text">API推荐系统评估</h1>
                        <form action="/login/login.do" method="POST">
                            <div class="form-group">
                                <label for="userName" style="display: inline;"> 账 户： </label> <input
                                    type="text" name="userName" class="form-control" id="userName"
                                    style="display: inline; width: 200px;"/>
                            </div>
                            <div class="form-group">
                                <label for="password" style="display: inline;"> 密 码： </label> <input
                                    type="text" name="password" class="form-control" id="password"
                                    style="display: inline; width: 200px;"/>
                            </div>
                            <button type="submit" class="white-btn">登录</button>

                        </form>
                    </div>
                </div>
                <!-- /home content -->

            </div>
        </div>
    </div>
    <!-- /home wrapper -->


</header>

</body>
</html>
