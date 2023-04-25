<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<HTML>
<head>
    <title>奥运会项目</title>
</head>
<form action="AoYunHui1.jsp" method=post>
    <h3>选择夏季奥运会项目</h3><br>
    <input type=checkbox name="item" value="A"/>A.football
    <input type=checkbox name="item" value="B"/>B.volleyball
    <input type=checkbox name="item" value="C"/>C.iceball
    <input type=checkbox name="item" value="D"/>D.basketball
    <br><input type="submit" name="submit" value="提交"/>
    <input type="reset" value="重置"/>
</form>
</HTML>


