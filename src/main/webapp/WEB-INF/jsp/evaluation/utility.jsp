<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ include file="../inc/defaultInc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${base}/resources/css/paging.css">
    <title>Insert title here</title>
    <link type="text/css" rel="stylesheet"
          href="${base}/resources/css/Chart.css"/>
    <!-- <link type="text/css" rel="stylesheet" href="${base}/resources/css/Chart.min.css" /> -->
    <link type="text/css" rel="stylesheet"
          href="${base}/resources/css/jquery.searchableSelect.css"/>
</head>
<body>
<h3>可用性：${requestScope.utility}</h3>
<h3>准确率：${requestScope.accuracy}</h3>
<h3 class="black-text">影响本次可用性评估的推荐有：</h3>

<table class="table">

    <thead>
    <tr>
        <th>类名</th>
        <th>API</th>
        <th>在数据库中出现次数</th>
        <th>可用性</th>
        <th>准确率</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${effect}">
        <tr>
            <td style="width: 20%">${s[0]}</td>
            <td style="width: 20%">${s[1]}</td>
            <td style="width: 20%">${s[2]}</td>
            <td style="width: 20%">${s[3]}</td>
            <td style="width: 20%">${s[4]}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

