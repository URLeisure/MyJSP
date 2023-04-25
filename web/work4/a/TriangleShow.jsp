<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/25
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>三角形输出</title>
</head>
<body>
<jsp:useBean id="trangle" class="bean.Triangle" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="trangle"></jsp:setProperty>
<% request.setCharacterEncoding("utf-8");%>
<div align="center">
    三角形三边<br>
    边A=
    <jsp:getProperty name="trangle" property="a"></jsp:getProperty>
    边B=
    <jsp:getProperty name="trangle" property="b"></jsp:getProperty>
    边C=
    <jsp:getProperty name="trangle" property="c"></jsp:getProperty>
    这三边能组成一个三角形吗？
    <%=trangle.isTrangle() ? "能" : "不能"%>
    <br>
    <%
        if (trangle.isTrangle()) {
            out.println("三角形周长是：" + trangle.getPerimeter() + "<br>");
            out.println("三角形面积是：" + trangle.getArea() + "<br>");
        }
    %>
</div>
</body>
</html>
