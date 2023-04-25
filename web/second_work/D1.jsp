<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/16
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <p>
        用一张10元购买票价是2元的电影票一张。
        <%
            request.setCharacterEncoding("utf-8");
            int backmoney = 0;
            backmoney = 10 - 2;
        %>
        <jsp:forward page="D4.jsp">
            <jsp:param name="number" value="<%= backmoney%>"/>
            <jsp:param name="mess" value=""/>
        </jsp:forward>
    </p>

</div>

</body>
</html>
