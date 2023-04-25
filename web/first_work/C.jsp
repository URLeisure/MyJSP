<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/3
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩单</title>
    <style>
        .center {
            text-align: center;
        }

        table {
            margin: 0 auto; /* Set left and right margin to auto to center table */
        }
    </style>
</head>

<body>
<div class="center">
    <h1>语文、数学、英语成绩单<br>(单科满分是120分)<hr></h1>
</div>

<%
    int chinese=99;
    int math=100;
    int english=110;
    int sum=math+english+chinese;
%>

<table border="1"><!1111!>
    <tr>
        <td>姓名</td><td>语文成绩</td><td>数学成绩</td><td>英语成绩</td>
        <td>总成绩</td>
    </tr>
    <tr>
        <td>张三</td><td><%=chinese %></td><td><%=math %></td>
        <td><%=english %></td>
        <td><%=sum %></td>
    </tr>
        <%
        chinese = 110;
        math = 101;
        english = 116;
        sum = math+english+chinese;
    %>
    <tr>
        <td>李四</td><td><%=chinese %></td><td><%=math %></td>
        <td><%=english %></td>
        <td><%=sum %></td>
    </tr>
        <%
        chinese=120;
        math=115;
        english=110;
        sum=math+english+chinese;
    %>
    <tr>
        <td>王五</td><td><%=chinese %></td><td><%=math %></td>
        <td><%=english %></td>
        <td><%=sum %></td>
    </tr>

</body>
</html>
