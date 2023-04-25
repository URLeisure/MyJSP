<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/16
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>inputInt</title>
    <jsp:useBean id="saveResult" class="bean.SaveResult_Bean" scope="request"/>
    <jsp:useBean id="computeSum" class="bean.ComputeSum" scope="request"/>
</head>
<body>
<div align="center">
    <form action="computeSum" method="post">
        等差级数求和：<br>
        输入首项:<input type=text name="firstItem" size=4>
        输入公差(公比):<input type=text name="var" size=4>
        求和项数:<input type=text name="number" size=4>
        <input type=submit name="submit" value="计算等差级数列和">
        <input type=submit name="submit" value="计算等比级数列和)">
    </form>


    <table border=1>
        <tr>
            <th>级数的首项</th>
            <th>
                <jsp:getProperty name="saveResult" property="name"/>
            </th>
            <th>所求项数</th>
            <th>求和结果</th>
        </tr>
        <td>
            <jsp:getProperty name="saveResult" property="firstItem"/>
        </td>
        <td>
            <jsp:getProperty name="saveResult" property="var"/>
        </td>
        <td>
            <jsp:getProperty name="saveResult" property="number"/>
        </td>
        <td>
            <jsp:getProperty name="saveResult" property="sum"/>
        </td>
        </tr>
    </table>
</div>

</body>
</html>
