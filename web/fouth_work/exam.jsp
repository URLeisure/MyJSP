<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>exam</title>
</head>
<body>
<div align="center">
    <%
        String id = (String) session.getAttribute("id");
        if (id == null) {
            id = "";
        }
    %>
    <form action="display.jsp" method="post">
        <p>考号<input type="text" required name="id"></p>
        <h2>一.单项选择题(60分)</h2>
        <h3>1.下列哪个方法是获取session中关键字是key的对象？</h3>
        <ol style="list-style:none;">
            <li><input type="radio" name="select" value="A"/>A.public void setAttribute(String key,Object obj)</li>
            <li><input type="radio" name="select" value="B"/>B.public void removeAttribute(String key)</li>
            <li><input type="radio" name="select" value="C"/>C.public Enumeration getAttributeNames()</li>
            <li><input type="radio" name="select" value="D"/>D.public Object getAttribute(String key)</li>
        </ol>
        <h2>二.判断题(40分)</h2>
        <h3>1.同一个客户在多个Web服务目录中，所对应的session对象是互不相同的</h3>
        <TD>
        <TD width="524">
            <input type="radio" name="judge" value="True"/>对
            <input type="radio" name="judge" value="False"/>错
        </TD>
        </TR>
        <TR>
            <TD width="524">
                <br><input type="submit" name="submit" value="提交"/>
                <input type="reset" value="重置"/>
            </TD>
        </TR>
    </form>
</div>
</body>
</html>
