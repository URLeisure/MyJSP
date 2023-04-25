<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/25
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>三角形输入</title>
</head>
<body>
<div align="center">
    <h3>输入三角形三边</h3>
    <form action="TriangleShow.jsp" method="post">
        边A<input type="text" name="a" required><br>
        边B<input type="text" name="b" required><br>
        边C<input type="text" name="c" required><br>
        <input type="submit" value="提交">
    </form>
</div>
</body>
</html>
