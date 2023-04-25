<%@ page import="java.math.BigInteger" %><%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/4
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public static String reverse(String s) {
        StringBuffer buffer = new StringBuffer(s);
        StringBuffer reverseBuffer = buffer.reverse();
        return reverseBuffer.toString();
    }
%>

<html>
<head>
    <title>回文</title>
</head>
<body>
<div align="center"
<%
    String regex = "[1-9][0-9]*";
    String startNumber = request.getParameter("number");
    if (startNumber == null || startNumber.length() == 0) {
        startNumber = "520";
    }
    if (!startNumber.matches(regex)) {
        response.sendRedirect("fouth_work/A1.jap");
        return;
    }
    long step = 1;
    BigInteger number = new BigInteger(startNumber);
    BigInteger reverseNumber = new BigInteger(reverse(number.toString()));
    BigInteger resultNumber = number.add(reverseNumber);
    out.print("<br>" + number + "+" + reverseNumber + "=" + resultNumber);
    BigInteger p = new BigInteger(reverse(resultNumber.toString()));
    while(!resultNumber.equals(p)){
        number = new BigInteger(resultNumber.toString());
        reverseNumber = new BigInteger(reverse(number.toString()));
        resultNumber = number.add(reverseNumber);
        p = new BigInteger(reverse(resultNumber.toString()));
        out.print("<br>"+number+"+"+ reverseNumber+"="+resultNumber);
        step++;
    }
    out.print("<h3>"+step+"回文数"+resultNumber+"</h3>");
%>
</body>
</html>
