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
    <title>display</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
%>
<div align="center">
    <%
        String id = request.getParameter("id");
        session.setAttribute("id", id);
        String one = request.getParameter("select");
        session.setAttribute("select", one);
        String two = request.getParameter("judge");
        session.setAttribute("judge", two);
    %>
    <form action="result.jsp" method="post">
        <table>
            <p>您的考号是<%=id %>
            </p>
            <h2>一.单项选择题（60分）</h2>
            <h3>1.<%=one %>
            </h3>
            <h2>二.判断题（40分）</h2>
            <h3>1.<%=two %>
            </h3>
            <p><input type="submit" value="确认完毕"></p>
            <p><input type="button" value="重新答题" onclick="javascript:window.location.href='homework4_exam.jsp'"></p>
        </table>
    </form>
</div>
</body>
</html>
