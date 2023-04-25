<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户表单结果</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h1 {
            margin-top: 50px;
            font-size: 28px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            font-size: 16px;
        }

        input[type="radio"], input[type="checkbox"] {
            margin-right: 10px;
        }

        textarea {
            height: 150px;
        }

        button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 20px;
        }

        button:hover {
            background-color: #3e8e41;
        }

        .error-message {
            color: #ff0000;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>

</head>
<body>
<h1>用户表单结果</h1>
<p>以下是您提交的表单内容：</p>
<div>
    <p><strong>姓名：</strong> <%= request.getParameter("name") %>
    </p>
    <p><strong>性别：</strong> <%= request.getParameter("gender") %>
    </p>
    <p><strong>年龄：</strong> <%= request.getParameter("age") %>
    </p>
    <p><strong>邮箱：</strong> <%= request.getParameter("email") %>
    </p>
    <p><strong>手机：</strong> <%= request.getParameter("phone") %>
    </p>

    <p><strong>个人介绍：</strong><%= request.getParameter("description") %>
    </p>
</div>
</body>
</html>