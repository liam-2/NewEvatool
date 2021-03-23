<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
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
    <title>MainPage</title>
</head>
<body>

<!-- Header -->
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


    <br/> <br/>
    <p
            style="margin: auto; color: black; font-weight: bold; text-align: center; font-size: 35px">项目信息统计表</p>
    <br/>
    <table class="table table-bordered table-hover table-condensed"
           style="margin: auto; left: 350px; color: black; font-weight: bold; text-align: center;">
        <tr>
            <td>Project</td>
            <td>#LOC</td>
            <td>#NLOC</td>
            <td>#Methods</td>
            <td>#PublicMethods</td>
            <td>#PrivateMethods</td>
            <td>#CommenttedClasses</td>
            <td>CycleComplexity</td>
            <td>#MaxDepthOfMethod</td>
            <td>Directories</td>
            <td>#Files</td>
        </tr>
        <c:forEach var="v" items="${details}">
            <tr>
                <td><a
                        href="${base}/mainpage/detailOfproject?dir=${v.projectname}">${v.projectname}</a></td>
                <td>${v.LOC}</td>
                <td>${v.NLOC}</td>
                <td>${v.allmethods}</td>
                <td>${v.publicmethods}</td>
                <td>${v.privatemethods}</td>
                <td>${v.commentmethods}</td>
                <td>${v.cyclecomplexity}</td>
                <td>${v.deepmethods}</td>
                <td>${v.dirs}</td>
                <td>${v.files}</td>
            </tr>
        </c:forEach>
    </table>

</header>
<!-- /Header -->
</body>
</html>