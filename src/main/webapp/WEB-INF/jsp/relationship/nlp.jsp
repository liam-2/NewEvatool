<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>

<html>
<head>
    <title>东南大学软件工程研究所--NLP库组合使用工具</title>
</head>
<body style="color: #00fff">

<!-- Header -->
<header id="home">

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
                <li><a href="${base}">主页</a></li>
                <li><a href="${base}/relationship/relationship">关联关系提取</a></li>
                <li><a href="${base}/codesearch/codesearch">代码搜索</a></li>
                <li><a href="${base}/recommend/recommend">API推荐</a></li>
                <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
                <li><a href="#team">Team</a></li>
            </ul>
            <!-- /Main navigation -->

        </div>
    </nav>
    <!-- /Nav -->


    <script type="text/javascript">
        function onc() {
            var files = document.getElementById('input').files;
            var name = "";
            for (var i = 0; i < files.length; i++) {
                name = name + input.files[i].name;
            }
            document.getElementById('filesfield').innerHTML = name;
        }
    </script>

    <script type="text/javascript">
        function upload() {
            var formData = new FormData($("#uploadfiles")[0]);
            alert('文件上传成功');
            $.ajax({
                url: '${base}/fileupdown/fileUpLoadopen',
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                dataType: 'json',
                success: function (data) {
                    alert('上传成功');
                },
                error: function (data, status, e) {
                    console.error(e);
                }
            });
        }
    </script>

    <!-- home wrapper -->

    <div id="nlptool" class="section md-padding">

        <!-- Container -->
        <div class="container">

            <!-- Row -->
            <div class="row">

                <!-- Section header -->
                <div class="section-header text-center">
                    <h2 class="title black-text">NLP库选取</h2>
                </div>
                <!-- /Section header -->

                <div align="center">
                    <form id="uploadfiles" enctype="multipart/form-data">
                        <a href="${pageContext.request.contextPath}/nlp/nlp"
                           onclick="split()" style="display: block; color: black">分句</a>
                    </form>
                    <script type="text/javascript">
                        function split() {

                            var text = $('#inputContent').val();
                            console.log(text);

                            var formData = new FormData();
                            formData.append("text", text);

                            var show = 1;
                            alert('成功');
                            $.ajax({
                                url: "http://127.0.0.1:1006/split",
                                data: formData,
                                async: false,
                                cache: false,
                                contentType: false,
                                processData: false,
                                success: function (data) {
                                    alert('成功');
                                },
                            });
                        }
                    </script>
                </div>
                <div class="col-md-3">
                    <div class="about black-text">
                        <h3 class="black-text">NLTK</h3>
                        <p style="color: black">NLTK是一个Python开源项目，用于处理人类语言数据。它提供了易于使用的接口，还提供了一套文本处理库和工业级NLP库的包装器等。</p>

                        <a href="${pageContext.request.contextPath}/nlp/nlp"
                           onclick="nltk()"
                           style="display: block; text-align: center; color: black">使用</a>
                        <a
                                href="${pageContext.request.contextPath}/fileupdown/fileDownLoadnew"
                                style="display: block; text-align: center; color: black">下载文件</a>
                    </div>
                </div>
                <script type="text/javascript">
                    function nltk() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('文本分析成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/nltk",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert('成功');
                            },
                        });
                    }
                </script>
                <!-- about -->
                <div class="col-md-3">
                    <div class="about black-text">

                        <h3 class="black-text">Stanford CoreNLP</h3>
                        <p style="color: black">Stanford
                            CoreNLP是一个集成的框架，其目标是促进语言分析工具在文本中的应用，其API支持当下多种流行通用的开发语言。</p>
                        <a href="${pageContext.request.contextPath}/nlp/nlp"
                           onclick="stanford()"
                           style="display: block; text-align: center; color: black">使用</a>
                        <a
                                href="${pageContext.request.contextPath}/fileupdown/fileDownLoadnew"
                                style="display: block; text-align: center; color: black">下载文件</a>
                    </div>
                </div>
                <!-- /about -->
                <script type="text/javascript">
                    function stanford() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('文本分析成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/stanford",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert('成功');
                            },
                        });
                    }
                </script>
                <!-- about -->
                <div class="col-md-3">
                    <div class="about black-text">

                        <h3 class="black-text">spaCy</h3>
                        <p style="color: black">spaCy是一个“工业级别的自然语言处理”库，它由Cython进行编写，擅长于处理大规模的文本信息。它可以为深度学习预先处理文本。</p>
                        <a href="${pageContext.request.contextPath}/nlp/nlp"
                           onclick="spacy()"
                           style="display: block; text-align: center; color: black">使用</a>
                        <a
                                href="${pageContext.request.contextPath}/fileupdown/fileDownLoadnew"
                                style="display: block; text-align: center; color: black">下载文件</a>
                    </div>
                </div>
                <!-- /about -->
                <script type="text/javascript">
                    function spacy() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('文本分析成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/spacy",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert('成功');
                            },
                        });
                    }
                </script>
                <div class="col-md-3">
                    <div class="about black-text">

                        <h3 class="black-text">OpenNLP</h3>
                        <p style="color: black">Apache
                            OpenNLP是一个机器学习开发库，用于自然语言处理。OpenNLP支持常见的NLP任务，还支持基于机器学习的最大熵和感知器功能。</p>
                        <a href="${pageContext.request.contextPath}/views/opennlp.jsp"
                           style="color: black">使用</a> <a
                            href="${pageContext.request.contextPath}/fileupdown/fileDownLoadnew"
                            style="display: block; text-align: center; color: black">下载文件</a>
                    </div>
                </div>

            </div>
            <!-- /Row -->
            <div class="col-md-12">
                <div class="about white-text">

                    <h3 class="black-text">NLP库组合使用技术</h3>
                    <a href="${pageContext.request.contextPath}/nlp/nlp"
                       onclick="testsen()"
                       style="display: block; text-align: center; color: black">两两重叠度计算</a>
                    <a href="${pageContext.request.contextPath}/nlp/nlp"
                       onclick="cal()"
                       style="display: block; text-align: center; color: black">单个NLP库重叠度计算</a>
                    <a href="${pageContext.request.contextPath}/nlp/nlp"
                       onclick="fi()"
                       style="display: block; text-align: center; color: black">结果生成</a>
                    <a
                            href="${pageContext.request.contextPath}/fileupdown/fileDownLoadopen"
                            style="display: block; text-align: center; color: black">下载文件</a>

                </div>
                <script type="text/javascript">
                    function testsen() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('文本分析成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/compare",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert('成功');
                            },
                        });
                    }
                </script>
                <script type="text/javascript">
                    function cal() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('文本分析成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/cal",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert('成功');
                            },
                        });
                    }
                </script>
                <script type="text/javascript">
                    function fi() {

                        var text = $('#inputContent').val();
                        console.log(text);

                        var formData = new FormData();
                        formData.append("text", text);

                        var show = 1;
                        alert('生成成功');
                        $.ajax({
                            url: "http://127.0.0.1:1006/final",
                            data: formData,
                            async: false,
                            cache: false,
                            contentType: false,
                            processData: false,
                            success: function (data) {
                                alert(data.result);
                            },
                        });
                    }
                </script>
            </div>
        </div>
        <!-- /Container -->

        <div style="display: block; text-align: center;">
            <a href="${base}/nlp/descrip" style="color: black">请点击此处查阅词性标注含义！！！</a>
        </div>
    </div>
    <!-- /home wrapper -->

</header>
<!-- /Header -->
</body>
</html>