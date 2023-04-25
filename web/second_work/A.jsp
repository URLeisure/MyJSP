<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %><%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/3/7
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>年货采购账单</title>
    <style>
        .center {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="center">
    <h1>兔年采购账单<hr></h1>
</div>

<%!
    public double getPriceSum(String input) {
        Pattern pattern;
        Matcher matcher;
        String regex = "-?[0-9][0-9]*[.]?[0-9]*";
        /*
        -?：表示可以匹配一个可选的负号（减号），问号表示前面的符号可以出现0次或1次。
        [0-9]：表示匹配0~9之间的一个数字。
        [0-9]：表示匹配0个或多个数字。
        [.]?：表示匹配一个可选的小数点，用方括号括起来是因为小数点是一个特殊字符，需要进行转义。
        [0-9]：表示匹配0个或多个数字。
         */
        pattern = Pattern.compile(regex);
        matcher = pattern.matcher(input);
        double sum = 0;

        while (matcher.find()) {
            String str = matcher.group();
            sum += Double.parseDouble(str);
        }
        return sum;
    }
%>

<table>
    <%
        String customerName = "兔爷";
        String customerName2 = "兔奶";

        String information = "鞭炮：500.12元，服饰：320.5元，饮料：60.0元";
        String information2 = "内饰：350元，服饰：641元，饮料：20元";
        double totalPrice = getPriceSum(information);
        double totalPrice2 = getPriceSum(information2);
    %>
    <tr>
        <th>客户</th>

        <td ><%= customerName %></td>

        <td colspan='2'>|</td>
        <td><%= customerName2 %></td>

    </tr>
    <tr>
        <th>内容</th>
        <td><%= information %></td>

        <td colspan='2'>|</td>
        <td><%= information2 %></td>
    </tr>
    <tr>
        <th>消费总和：</th>
        <td><%= totalPrice %>元</td>

        <td colspan='2'>|</td>
        <td><%= totalPrice2 %>元</td>
    </tr>

</table>


</body>
</html>

