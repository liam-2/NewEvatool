<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<c:set value="<%=basePath%>" var="base"></c:set>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<link rel="stylesheet" type="text/css"
      href="/resources/bootstrap/css/bootstrap.min.css">
<!-- Owl Carousel -->
<link type="text/css" rel="stylesheet"
      href="/resources/css/owl.carousel.css"/>
<link type="text/css" rel="stylesheet"
      href="/resources/css/owl.theme.default.css"/>
<!-- Magnific Popup -->
<link type="text/css" rel="stylesheet"
      href="/resources/css/magnific-popup.css"/>
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet"
      href="/resources/css/style.css"/>
<!-- jQuery Plugins -->

<script type="text/javascript"
        src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="/resources/js/owl.carousel.min.js"></script>
<script type="text/javascript"
        src="/resources/js/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${base}/resources/js/main.js"></script>

<!-- add graph js chart.js by idealzhng begin:2019-7-9
<script src="/resources/js/Chart.js"></script>
<script src="/resources/js/Chart.bundle.js"></script>-->
<script src="/resources/js/echarts.min.js"></script>
<script src="/resources/plugins/layui/layui.js"></script>
<script src="/resources/plugins/layui/layui.all.js"></script>