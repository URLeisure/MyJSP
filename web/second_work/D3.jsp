<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/3/16
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2</title>
</head>
<body>
<div align="center">
    <%
        request.setCharacterEncoding("utf-8");
        String backmoneyStr = request.getParameter("number");
        String mess = request.getParameter("mess");
        int backmoney = 0;
        int count = 0;
        int coin = 2;
        backmoney = Integer.parseInt(backmoneyStr);
        while (true){
            count++;
            if(count*coin > backmoney)
                break;
        }
        backmoney = backmoney - (count - 1)*coin;
        mess = mess+"找赎"+(count-1)+"张面值为"+coin+"元的钱！<br>";
        if(backmoney !=0)
        {
    %>
    <jsp:forward page="D2.jsp">
        <jsp:param name="number" value="<%= backmoney%>"/>
        <jsp:param name="mess" value="<%=mess%>"/>
    </jsp:forward>
    <%
        }
    %>
</div>
</body>
</html>
