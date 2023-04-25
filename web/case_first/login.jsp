<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/21
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body>
<%-- 从表单中获取用户名和密码 --%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
%>

<%-- 进行用户名和密码的验证 --%>
<%
    if (username.equals("admin") && password.equals("admin")) {
        out.println("<h1>Login Successful!</h1>");
    } else if (username.equals("admin")) {
%>
<script>
    alert("无效的密码，请重新输入！");
    window.history.back();
</script>
<%
} else {
%>
<script>
    alert("无效的账号，请重新输入！");
    window.history.back();
</script>
<%
    }
%>
</body>
</html>
