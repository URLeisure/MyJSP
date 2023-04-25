<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/5/4
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>
</head>
<body>
<form action="showInfo.jsp" method=post>
    <Table border="0" cellpadding="0" cellspacing="0" align="center" width="530">
        <TR>
            <TD width="107" height="36">用户名：</TD>
            <TD width="524"><INPUT name="txtUser" type="text" maxlength="16"></TD>
        </TR>
        <TR>
            <TD width="107" height="36">密码：</TD>
            <TD width="524"><INPUT name="txtPass" type="password"></TD>
        </TR>
        <TR>
            <TD width="107" height="36">年龄：</TD>
            <TD width="524"><INPUT name="age" type="text"></TD>
        </TR>
        <TR>
            <TD width="107" height="36">爱好：</TD>
            <TD width="524">

                <input type=checkbox name="item" value="football"/>football
                <input type=checkbox name="item" value="volleyball"/>volleyball
                <input type=checkbox name="item" value="tabletennis"/>tabletennis
                <br><input type="submit" name="submit" value="提交"/>
                <input type="reset" value="重置"/>
            </TD>
        </TR>
    </Table>
</form>
</body>
</html>
