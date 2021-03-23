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
<%--<img src="${base}/resources/img/gongshi.png" >--%>
<table class="table">
    <%--    <caption>准确性计算</caption>--%>
    <thead>
    <tr>
        <th>正确API</th>
        <th>推荐API</th>
        <th>相似值</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${SimList}">
        <tr>
            <td>${s[0]}</td>
            <td>${s[1]}</td>
            <td>${s[2]}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

