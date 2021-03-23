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
    <div class="bg-img"
         style="background-image: url('${base}/resources/img/2.jpg');">
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
                            class="logo-alt" src="${base}/resources/img/4.png" alt="logo">
                    </a>
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

        </div>
    </nav>
    <!-- /Nav -->

    <!-- home wrapper -->
    <!-- /codeserach -->
    <div id="codeserach" class="section codeMd-padding">

        <!-- Container -->
        <div class="container">

            <!-- Row -->
            <div class="row">
                <!-- Section header -->
                <div class="col-sm-10">
                    <div class="section-header">
                        <h2 class="title white-text">代码搜索</h2>
                    </div>
                </div>
            </div>

            <!-- Row -->
            <div class="row searchBar">
                <!-- /Section header -->
                <div class="col-sm-10">
                    <input type="text" placeholder="请输入查询语句" id="inputContent">
                </div>
                <div class="col-sm-2">
                    <button id="searchButton" onclick="codeSearch()">search</button>
                </div>
            </div>

            <!-- 分割线 -->
            <hr>

            <!-- Row -->
            <div class="row">
                <div class="col-sm-12">
						<textarea id="textareaCode" rows="10" cols=""
                                  placeholder="代码搜索结果展示" disabled></textarea>
                </div>
            </div>

        </div>
        <!-- /Container -->

    </div>
    <!-- /codeserach -->
    <!-- /home wrapper -->

</header>
<!-- /Header -->
</body>

<script type="text/javascript">

    function codeSearch() {

        var text = $('#inputContent').val();
        console.log(text);

        var formData = new FormData();
        formData.append("text", text);

        var show = 1;
        $.ajax({
            url: "http://10.201.18.133:1002",
            type: "POST",
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                $('#textareaCode').val(data.result);

            },
        });
    }
</script>


</html>
