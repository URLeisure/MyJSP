<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/3/7
  Time: 8:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>加载英文学习资料</title>
    <style>
        .center {
            text-align: center;
        }
    </style>
</head>
<body>

<div align="center">
    <p>
        <font color="red" size=4>英文课文(English Text):
        </font>
        <font color="blue" size=4><jsp:include page="class/english.txt" />
        </font>
        <font color="red" size=4>课文音频(English Audio):
        </font>
        <br>
    </p>
</div>

<div class="center">
<audio src="class/english.mp3" controls id="audio"></audio>
</div>>

</body>
</html>
