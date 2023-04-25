<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/7
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>插入当前时间</title>
    <style>
        .center {
            text-align: center;
        }
        .red-text {
            color: red;
        }
    </style>
</head>
<body>

<div class="center">
    <h1>显示访问网页的日期、时间<br>（服务器端的日期、时间）<hr></h1>
</div>

<%
    LocalDate date = LocalDate.now();
    LocalTime time = LocalTime.now();
%>

<div class="center">
    <p class="red-text">用户在<%= date%> <%= time%>访问了网页</>
</div>

</body>
</html>
