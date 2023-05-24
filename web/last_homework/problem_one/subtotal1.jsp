<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/5/24
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>subtotal1</title>
</head>
<body>
<div align="center">

    <h3>奇数:</h3>

    <% int[] numsOdd = (int[]) request.getAttribute("numsOdd");
        for (int num : numsOdd) { %>
    <%= num %>,
    <% } %>


    <h3>偶数:</h3>

    <% int[] numsEvent = (int[]) request.getAttribute("numsEvent");
        for (int num : numsEvent) { %>
    <%= num %>,
    <% } %>

</div>
</body>
</html>
