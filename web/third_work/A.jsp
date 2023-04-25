<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/21
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags/third_work" %>


<html>
<head>
    <title>解析句子中单词的组成</title>

    <style>
        .center {
            text-align: center;
        }
    </style>
</head>

<body>
<%
    String str = "How are you? I am fine,thank you!";
%>
<computer:A okString="<%=str%>"></computer:A>

<div class="center">
    <h1><%=str%><br></h1>
    <%
        out.print("使用了"+words.size()+"个单词"+"<br>");
        out.print(words);
    %>
</div>
</body>
</html>
