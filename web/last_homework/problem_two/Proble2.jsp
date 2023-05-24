<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/5/24
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Proble2</title>
</head>
<body>
<jsp:useBean id="num" class="com.shi.mapper.fifthwork.problem_two.Num" scope="application"/>
<div align="center">
  <h1>等差级数求和</h1>

  <form action="/ServletController" method=post accept-charset="UTF-8" >
    <table>
      <tr>
        <th>首项</th>
        <td><input type=text name="a"
                   value=<jsp:getProperty name="num" property="a"/> /></td>

        <th>公差/公比</th>
        <td><input type=text name="d/q"
                   value=<jsp:getProperty name="num" property="q"/> /></td>
        <th>项数</th>
        <td><input type=text name="n"
                   value=<jsp:getProperty name="num" property="n"/> /></td>

        <td><input type="submit" name="d" value="等差数列前n项和" ></td>
        <td><input type="submit" name="q" value="等比数列前n项和" /></td>
      </tr>
    </table>

  </form>
</div>

<table align="center" border="1">
  <tr>
    <th>首项</th><th>公差/公比</th><th>项数</th><th>前n项和</th>
  </tr>

  <tr>
    <th><jsp:getProperty name="num" property="a"/></th>
    <th><jsp:getProperty name="num" property="q"/></th>
    <th><jsp:getProperty name="num" property="n"/></th>
    <th><jsp:getProperty name="num" property="sum"/></th>
  </tr>
</table>
</body>
</html>
