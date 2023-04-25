<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/25
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小数输出</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="fraction" class="bean.Fraction" scope="request"></jsp:useBean>
<jsp:setProperty name="fraction" property="number" param="number"></jsp:setProperty>
<div align="center">
    <h1>
        <jsp:getProperty name="fraction" property="number"></jsp:getProperty>
        表示成分数是:
        <jsp:getProperty name="fraction" property="fenzi"></jsp:getProperty>

        <jsp:getProperty name="fraction" property="fenmu"></jsp:getProperty>
    </h1>
    
</div>
</body>
</html>