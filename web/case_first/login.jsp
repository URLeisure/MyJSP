<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/21
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 获取表单提交的用户名和密码
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // 判断用户名和密码是否正确
    if (username.equals("admin") && password.equals("admin")) {
%>
<script>
    // 弹出登录成功提示框
    alert("登录成功!");
</script>
<%
} else if (username.equals("admin")) {
%>
<script>
    // 弹出密码错误提示框，并返回登录页面
    alert("密码错误，请确认后重新输入!");
    window.location = "Login Form.jsp";
</script>
<%
} else {
%>
<script>
    // 弹出用户不存在提示框，并返回登录页面
    alert("此用户不存在!");
    window.location = "Login Form.jsp";
</script>
<%
    }
%>
