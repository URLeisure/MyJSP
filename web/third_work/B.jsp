<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/21
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="computer" tagdir="/WEB-INF/tags/third_work" %>


<html>
<head>
    <title>显示日历</title>

</head>
<body>
<%
    LocalDate date = LocalDate.now();
    String year = date.getYear() + "";
    String month = date.getMonthValue() + "";
%>

<computer:B  year="<%=year%>" month="<%=month%>"></computer:B>
</body>
</html>
