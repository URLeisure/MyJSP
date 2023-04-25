<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/3
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九口诀表</title>
</head>
<body>
    <%
        for(int i = 1;i<=9;i++){
            for(int j = 1;j<=i;j++){
                out.print(i + "×" + j + "=" + i*j + '\t');
            }
            out.print("<br>");
        }
    %>
</body>
</html>
