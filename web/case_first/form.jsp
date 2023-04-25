<%--
  Created by IntelliJ IDEA.
  bean.User: URLeisure
  Date: 2023/4/25
  Time: 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>用户表单</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }
    form {
      background-color: #fff;
      border: 1px solid #ccc;
      padding: 20px;
      margin: 50px auto;
      width: 500px;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
    }
    label {
      display: block;
      margin-bottom: 10px;
      font-weight: bold;
    }
    input, select, textarea {
      display: block;
      margin-bottom: 20px;
      padding: 10px;
      width: 100%;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    input[type=submit] {
      background-color: #0099ff;
      color: #fff;
      border: none;
      cursor: pointer;
      padding: 10px 20px;
      border-radius: 5px;
      font-size: 18px;
    }
    input[type=submit]:hover {
      background-color: #0077cc;
    }
  </style>
</head>
<body>
<form action="submit-form.jsp" method="post">
  <label for="name">姓名</label>
  <input type="text" id="name" name="name" placeholder="请输入姓名" required>

  <label for="gender">性别</label>
  <select id="gender" name="gender">
    <option value="">请选择性别</option>
    <option value="male">男</option>
    <option value="female">女</option>
  </select>

  <label for="email">邮箱</label>
  <input type="email" id="email" name="email" placeholder="请输入邮箱" required>

  <label for="age">手机号</label>
  <input type="number" id="phone" name="phone" placeholder="请输入手机号">

  <label for="age">年龄</label>
  <input type="number" id="age" name="age" placeholder="请输入年龄">

  <label for="description">个人描述</label>
  <textarea id="description" name="description" rows="5" placeholder="请简单介绍一下自己"></textarea>

  <input type="submit" value="提交">
</form>
</body>
</html>
