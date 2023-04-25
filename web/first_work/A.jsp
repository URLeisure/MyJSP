<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/3/3
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>英文字母表</title>
</head>

<body>
<%
  for(char i = 'a'; i<= 'z';i++){
    out.print((char)(i-32));
    out.print(i + " ");
  }
%>
</body>
</html>
