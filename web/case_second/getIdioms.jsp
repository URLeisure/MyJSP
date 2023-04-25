<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/5/24
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="idioms" class="com.shi.mapper.ContinueIdioms" scope="application" />
<html>
<head>
    <title>getIdioms</title>
</head>
<body>
<div align="center">
  <%
    request.setCharacterEncoding("utf-8");
  %>
  <jsp:setProperty name="idioms" property="nowIdioms" param="nowIdioms" />
  <%
    out.print("<h3>输入成功，请继续接龙</h3>");
    response.setHeader("refresh", "3;url=inputIdioms.jsp");
  %>
</div>
</body>
</html>
