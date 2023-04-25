<%--
  Created by IntelliJ IDEA.
  User: URLeisure
  Date: 2023/4/21
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Form</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        .container {
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin: auto;
            margin-top: 100px;
            padding: 20px;
            width: 400px;
        }

        h1 {
            text-align: center;
        }

        label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-top: 20px;
        }

        input[type="text"], input[type="password"] {
            border: 1px solid #cccccc;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 16px;
            margin-top: 5px;
            padding: 10px;
            width: 100%;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            border: none;
            border-radius: 3px;
            color: #ffffff;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            padding: 10px;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login</h1>
    <form method="post" action="login.jsp">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username" required>
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
