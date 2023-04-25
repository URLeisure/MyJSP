<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("txtUser");
    String psd = request.getParameter("txtPass");
    String age = request.getParameter("age");
    String itemName[] = request.getParameterValues("item");
    out.println("<br> 注册成功：你的信息");
    out.println("<br> 用户名：");
    out.print(name);
    out.println("<br> 密码：" + psd);
    out.println("<br> 年龄：" + age);
    out.println("<br> 爱好:");
    if (itemName == null) {
        out.print("无爱好！");
    } else {
        for (int k = 0; k < itemName.length; k++) {
            out.print(" " + itemName[k]);
        }
    }
%>
</body>
</html>
