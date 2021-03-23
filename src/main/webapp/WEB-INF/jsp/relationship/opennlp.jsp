<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" import="com.rae.tool.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<%
    openNLP op = new openNLP();
    ServletContext servletContext = request.getSession().getServletContext();
    String fileName = "result.xls";
    String realPath = servletContext.getRealPath("/WEB-INF/" + fileName);
    String rep = "C://Users//Lenouo//Desktop//nlp_select//aa.xlsx";
    System.out.println(rep);
    op.test();
%>
<script language="javascript"
        type="text/javascript"> window.location.href = "nlp.jsp?backurl=" + window.location.href; </script>
</body>
</html>