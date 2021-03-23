<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>东南大学软件工程研究所</title>

    <style type="text/css">
        .file {
            position: relative;
            display: inline-block;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 20px;
        }

        .file input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }

        .file:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }
    </style>
</head>

<body>
<script type="text/javascript">
    function onc() {
        var files = document.getElementById('input').files;
        var name = "";
        for (var i = 0; i < files.length; i++) {
            name = name + input.files[i].name;
            <!--
            alert(input.files[i].name);
            -->
        }
        document.getElementById('filesfield').innerHTML = name;
    }
</script>
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
                <li><a href="#">关联关系提取</a></li>
                <li><a href="${base}/codesearch/codesearch">代码搜索</a></li>
                <li><a href="${base}/recommend/recommend">API推荐</a></li>
                <li><a href="${base}/assessment/assessment">推荐结果评估</a></li>
            </ul>
            <!-- /Main navigation -->

        </div>
    </nav>
    <!-- /Nav -->
    <!-- select part
		<div style="padding: 100px 100px 10px;">
    <form class="bs-example bs-example-form" role="form">
        <div class="input-group input-group-lg">
         <span class="input-group-addon">地址栏</span> 
            <input type="file" class="form-control" placeholder="Path Of  File">            
        </div>	
        <br/>
        <div class="input-group input-group-lg">
        <button class = "btn btn-primary" >浏览 </button>
        &nbsp; &nbsp;
        <button id="fat-btn" data-loading-text="loading"
					class="btn btn-primary">上传</button>
		</div>
	</form>
</div>
	
			<form action="#" method="post" enctype="multipart/form-data">
				<input type="text" class="form-control-file" name="uploadFile" />
				<button class = "btn btn-primary" >浏览 </button>
				<button id="fat-btn" data-loading-text="loading"
					class="btn btn-primary">上传</button>
			</form>
		</div>
	
	 
	
	<form action="${base}/upload/files" method="post" ENCTYPE="multipart/form-data">
选择文件：<input type="file" id="input" name="fileupload" accept="file/*.*" multiple="multiple" />
<input type="submit" value="上传" />
</form>-->


    <!-- 	<form action="${base}/baseinfo/uploadFiles" method="post"
			ENCTYPE="multipart/form-data">
			<a href="javascript:;" class="file">选择文件 <input type="file"
				id="input" name="fileupload" accept="file/*.*" onchange="onc();"
				multiple="multiple" />
			</a> <label id="filesfield" style="display: inline-block; width: 100px;"></label>
			<a href="javascript:;" class="file">上传<input type="submit"
				value="上传" /></a>
		</form>
 -->
    <!-- home wrapper -->

    <div id="about" class="section md-padding">

        <!-- Container -->
        <div class="container">

            <!-- Row -->
            <div class="row">

                <!-- Section header -->
                <div class="section-header text-center">
                    <h2 class="title white-text">软件制品关联关系分析</h2>
                </div>
                <!-- /Section header -->

                <!-- about -->
                <div class="col-md-4">
                    <div class="about white-text">
                        <h3 class="white-text">代码解析</h3>
                        <p>基于抽象语法树提取代码的组成元素、依赖结构等信息</p>
                        <a href="${base}/mainpage/projectlist">使用</a>
                    </div>

                    <form action="${base}/baseinfo/uploadFiles" method="post"
                          ENCTYPE="multipart/form-data">
                        <a href="javascript:;" class="file">选择文件 <input type="file"
                                                                        id="input" name="fileupload" accept="file/*.*"
                                                                        onchange="onc();"
                                                                        multiple="multiple"/>
                        </a> <label id="filesfield"
                                    style="display: inline-block; width: 100px;"></label> <a
                            href="javascript:;" class="file">上传<input type="submit"
                                                                      value="上传"/></a>
                    </form>
                </div>
                <!-- /about -->

                <!-- about -->
                <div class="col-md-4">
                    <div class="about white-text">

                        <h3 class="white-text">注释解析</h3>
                        <p>基于标准化注释模型提取功能、结构等信息</p>
                        <a href="${base}/comments/com">使用</a>
                    </div>
                </div>
                <!-- /about -->

                <!-- about -->
                <div class="col-md-4">
                    <div class="about white-text">

                        <h3 class="white-text">文档解析</h3>
                        <p>基于NLP组合使用技术实施分词、词性标注等活动</p>
                        <a href="${base}/nlp/nlp">使用</a>
                    </div>
                </div>
                <!-- /about -->

            </div>
            <!-- /Row -->

        </div>
        <!-- /Container -->

    </div>

    <!-- /home wrapper -->

</header>
<!-- /Header -->

</body>


</html>
