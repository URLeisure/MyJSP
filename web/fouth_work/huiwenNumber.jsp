<%@ page import="java.math.BigInteger" %><%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>算法之谜</title>
</head>
<%!
    public static String reverse(String s) {
        StringBuffer buffer = new StringBuffer(s);
        StringBuffer reverseBuffer = buffer.reverse();
        return reverseBuffer.toString();
    }
%>

<%
    String regex = "[1-9][0-9]*";
    String startNumber = request.getParameter("number");
    if (startNumber == null || startNumber.length() == 0) {
        startNumber = "number";
    }
    if (!startNumber.matches(regex)) {
        response.sendRedirect("homework3_inputNumber.jsp");
        return;
    }
    long step = 1;
    BigInteger number = new BigInteger(startNumber);
    BigInteger reverseNumber = new BigInteger(reverse(number.toString()));
    BigInteger resultNumber = number.add(reverseNumber);
    out.print("<br>" + number + "+" + reverseNumber + "=" + resultNumber);
    BigInteger p = new BigInteger(reverse(resultNumber.toString()));
    while (!resultNumber.equals(p)) {
        number = new BigInteger(resultNumber.toString());
        reverseNumber = new BigInteger(reverse(number.toString()));
        resultNumber = number.add(reverseNumber);
        p = new BigInteger(reverse(resultNumber.toString()));
        out.print("<br>" + number + "+" + reverseNumber + "=" + resultNumber);
        step++;
    }
    out.print("<br>" + step + "步得到回文数:" + resultNumber);
%>
</html>
