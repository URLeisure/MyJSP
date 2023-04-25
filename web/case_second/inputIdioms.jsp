<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/5/24
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="idioms" class="com.shi.mapper.ContinueIdioms" scope="application" />
<html>
<head>
    <title>inputIdioms</title>
</head>
<body>
<div align="center">
    <h3>正在接龙</h3>
    <textArea rows=8 cols=50 ><%=idioms.getAllIdioms()%></textArea><br>
    <form  action="getIdioms.jsp" method = post >
        <h3>请继续输入</h3>
        <input type="text" name ="nowIdioms">
        <input type="submit"  value="提交">
    </form>
</div>
</body>
</html>
