<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<%
    String id = (String) session.getAttribute("id");
    String one = (String) session.getAttribute("one");
    String two = (String) session.getAttribute("two");
    int sum = 0;

    if ("D".equals(one)) {
        sum += 60;
    }
    if ("True".equals(two)) {
        sum += 40;
    }
%>
<div align="center">
    <h2>考号:<%=id %>
    </h2>
    <h2>成绩:<%=sum %>
    </h2>
</div>
</body>
</html>
