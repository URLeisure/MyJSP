<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/3/16
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>1</title>
</head>
<body>
<div align="center">
    <%
        request.setCharacterEncoding("utf-8");
        String backmoneyStr = request.getParameter("number");
        String mess = request.getParameter("mess");
        int backmoney = 0;
        int count1 = 0;
        int coin = 1;
        backmoney = Integer.parseInt(backmoneyStr);
        while (true){
            count1++;
            if(count1*coin > backmoney)
                break;
        }
        backmoney = backmoney - (count1 - 1)*coin;
        mess = mess+"找赎"+(count1-1)+"张面值为"+coin+"元的钱！<br>";
        if(backmoney == 0)
        {
    %>
    <p>
        <font color="blue" size="5">
            <%
                out.print(mess);
            %>
            <video controls="controls" width="300" height="300">
                <source src="class/movie.mp4" type="audio/mp4">
            </video>
        </font>
    </p>
    <%
        }
    %>
</div>
</body>
</html>
